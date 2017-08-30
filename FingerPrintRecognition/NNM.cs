using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace FingerPrintRecognition
{

    


    public class NNM
    {
        public struct Result
        {
            public string[] FingerStrength;
            public double[] TotalScore;
            public Result(string[] st1, double[] db1)
            {
                FingerStrength = st1;
                TotalScore = db1;
            }
        }
        // global variables for NNM class: 
        string[] StrengthRange= { "Vs", "S", "Vg", "G", "W", "Vw" };
        string[] FingerPrintTypes= { "WP", "WU", "WDS", "WDSU", "WD", "WDU", "WA", "WLU", "WPC", "WUC", "WAC", "WDSC", "WDSUC", "WDC", "WDUC", "WLUC", "WR", "WDSR", "WDR", "WLR", "WRC", "WDSRC", "WDRC", "WLRC", "LDVU", "LDU", "LVU", "LU", "LDVUC", "LDUC", "LVUC", "LUC", "LDVR", "LDR", "LVR", "LR", "LDVRC", "LDRC", "LVRC", "LRC", "LA", "LAR", "LAC", "LARC", "AT", "A" };
        double[] x1_step1_xoffset;
        double[] x1_step1_gain;
        double x1_step1_ymin;
        double[] b1;
        double[] b2;
        double[,] IW1_1;
        double[,] LW2_1;        

        public double FingerPrintTypesRange(string FPtype)
        {
            double TR = 0;
            for (int i = 0; i < FingerPrintTypes.Length; i ++)
            {
                if (string.Equals(FPtype, FingerPrintTypes[i]))
                {
                    TR = 1.000000 - (i + 1.000000) / ((double)FingerPrintTypes.Length);
                    break;
                }                  
            }
            return TR;
        }

        public double InitNNM(string filenamepath)
        {
            // parse NN_weights txt input parameters file
            StreamReader reader = File.OpenText(filenamepath);
            string line;            
            while ((line = reader.ReadLine()) != null)
            {
                if ( line.Contains('%')) {
                    // filtering comments lines with %
                    continue;
                }

                if (line.Contains("x1_step1.xoffset"))
                {
                    string[] items = line.Split('[');
                    string[] items1 = items[1].Split(']');
                    string[] items2 = items1[0].Split(';');
                    int i = 0;
                    x1_step1_xoffset = new double[25];
                    foreach (string item in items2) {
                        x1_step1_xoffset[i]=Convert.ToDouble(item);
                        i++;
                    }
                    continue;
                }

                if (line.Contains("x1_step1.gain"))
                {
                    string[] items = line.Split('[');
                    string[] items1 = items[1].Split(']');
                    string[] items2 = items1[0].Split(';');
                    int i = 0;
                    x1_step1_gain = new double[25];
                    foreach (string item in items2)
                    {
                        x1_step1_gain[i] = Convert.ToDouble(item);
                        i++;
                    }
                    continue;
                }

                if (line.Contains("x1_step1.ymin"))
                {
                    string[] items = line.Split('=');
                    string[] items2 = items[1].Split(';');                   
                    x1_step1_ymin = Convert.ToDouble(items2[0]);                       
                    continue;
                }

                if (line.Contains("b1"))
                {
                    string[] items = line.Split('[');
                    string[] items1 = items[1].Split(']');
                    string[] items2 = items1[0].Split(';');
                    int i = 0;
                    b1 = new double[1024];
                    foreach (string item in items2)
                    {
                        b1[i] = Convert.ToDouble(item);
                        i++;
                    }
                    continue;
                }

                if (line.Contains("b2"))
                {
                    string[] items = line.Split('[');
                    string[] items1 = items[1].Split(']');
                    string[] items2 = items1[0].Split(';');
                    int i = 0;
                    b2 = new double[6];
                    foreach (string item in items2)
                    {
                        b2[i] = Convert.ToDouble(item);
                        i++;
                    }
                    continue;
                }

                if (line.Contains("IW1_1"))
                {
                    string[] items = line.Split('[');
                    string[] items1 = items[1].Split(']');
                    string[] items2 = items1[0].Split(';');
                    int i=0;
                    IW1_1 = new double[1024,25];
                    foreach (string items3 in items2)
                    {
                        string[] items4 = items3.Split(' ');
                        int j = 0;
                        foreach (string item in items4)
                        {
                            IW1_1[i, j] = Convert.ToDouble(item);
                            j++;
                        }
                        i++;
                    }
                    continue;
                }

                if (line.Contains("LW2_1"))
                {
                    string[] items = line.Split('[');
                    string[] items1 = items[1].Split(']');
                    string[] items2 = items1[0].Split(';');
                    int i = 0;
                    LW2_1 = new double[6,1024];
                    foreach (string items3 in items2)
                    {
                        string[] items4 = items3.Split(' ');
                        int j = 0;
                        foreach (string item in items4)
                        {
                            LW2_1[i,j] = Convert.ToDouble(item);
                            j++;
                        }
                        i++;
                    }
                    continue;
                }
            }            
            return 0;
        }

        public  Result CalculateStrength(int[] X, string[] Y)
        {
            Result RR = new Result
            {
                FingerStrength = new string[10],
                TotalScore = new double[10]
            };
            double[]  RidgeWeight = new double[10], FTypeWeight = new double[10];
            //Calculate TC
            double TC = X.Sum();
            if (TC == 0)
            {                
                // added escape with 'Vw' and '1.0" for all fingers
                for (int f = 0; f < X.Length; f++) {
                    RR.FingerStrength[f] = StrengthRange[StrengthRange.Length-1];
                    RR.TotalScore[f] = 1.0;
                }
                return RR;
            }

            //Calculate Ridge weights for each finger
            for (int a = 0; a < X.Length; a = a + 1)
            {
                RidgeWeight[a] = X[a]/TC;
            }

            //Calculate Fingerprint type weights for each finger
            for (int a = 0; a < X.Length; a = a + 1)
            {
                FTypeWeight[a] = FingerPrintTypesRange(Y[a]);
            }

            int Hand = 100, Shift=1;
            double[] INPUT = new double[25];
            double[] YO = new double[6];
            for (int f = 0; f < X.Length; f++)
            {
                // Form INPUT[25,double] - one finger                
                if (f > 4){
                    Hand = 200;
                    Shift = -4;
                }
                for (int j = 0; j < 5; j++)
                {
                    INPUT[j] = FTypeWeight[j];
                    INPUT[j + 5] = X[j];
                    INPUT[j + 10] = FTypeWeight[j + 5];
                    INPUT[j + 15] = X[j + 5];
                }
                INPUT[20] = (double)10 * ((double)f+Shift);
                INPUT[21] = Hand;
                INPUT[22] = TC;
                INPUT[23] = RidgeWeight[f];
                INPUT[24] = FTypeWeight[f];

                YO = NNF(INPUT);
                //Assign output for each finger
                int indYO = YO.ToList().IndexOf(YO.Max());
                RR.FingerStrength[f]= StrengthRange[indYO];
                // Old total score 
                //RR.TotalScore[f] = YO.Max();
                // update from 30.09.17
                /* 
                 * % weighted score calculation - common sum, added 30.09.17
                    % weghts: 
                    % 'Vs' - 60,
                    % 'S'  - 50,
                    % 'Vg' - 40,
                    % 'G'  - 30,
                    % 'W'  - 20,
                    % 'Vw' - 10
                    WSC=[60;50;40;30;20;10];                  
                 * */
                double totalscore=0.0;
                for (int j = 0; j < 5; j++)
                {
                    totalscore = totalscore + YO[j]*(6-j)*10;
                }
                RR.TotalScore[f] = totalscore;
            }
            return RR;
        }

        public double[] NNF(double[] X)
        {            
            double[] Xp1 = new double[25];
            double[] a1 = new double[b1.Length];
            double[] YY = new double[StrengthRange.Length];
            double[] multrez = new double[b1.Length];
            double[] multrez2 = new double[StrengthRange.Length];

            // init YY
            for (int i = 0; i < StrengthRange.Length; i++)
            {
               YY[i]= 0;
            }            

            //Xp1 = (X - x1_step1_xoffset).* x1_step1_gain + x1_step1_ymin;
            for (int i = 0; i < X.Length; i++)
            {
                Xp1[i] = (X[i] - x1_step1_xoffset[i])* x1_step1_gain[i] + x1_step1_ymin;
               
            }
            //// Layer 1
            //a1 = 2./ (1 + exp(-2 * (b1 + IW1_1 * Xp1))) - 1;
            for (int i = 0; i < b1.Length; i++)
            {
                multrez[i] = 0;
                for (int j = 0; j < Xp1.Length; j++)
                {
                    multrez[i] = multrez[i] + IW1_1[i,j] * Xp1[j];
                }
                a1[i] = 2 / (1 + Math.Exp(-2 * (b1[i] + multrez[i]))) - 1;
            }
            //// Layer 2
            //n = b2 + LW2_1 * a1;
            double[] n = new double[b2.Length];
            for (int i = 0; i < b2.Length; i++)
            {
                multrez2[i] = 0;
                for (int j = 0; j < a1.Length; j++)
                {
                    multrez2[i] = multrez2[i] + LW2_1[i, j] * a1[j];
                }
                n[i] = b2[i] + multrez2[i];
            }
            //nmax = max(n);
            //n = n - nmax;
            //numerator = exp(n);
            //denominator = sum(numerator);
            double[] nout = new double[n.Length];
            double[] numerator = new double[n.Length];
            for (int i = 0; i < n.Length; i++)
            {
                nout[i] = n[i] - n.Max();
                numerator[i] = Math.Exp(nout[i]);
            }
            double denominator = numerator.Sum();
            
            if (denominator == 0)
            {
                denominator = 1;
            }
            //YY = numerator / denominator;
            for (int i = 0; i < n.Length; i++)
            {
                YY[i] = numerator[i] / denominator;
            }           
            return YY;
        }
    }
}