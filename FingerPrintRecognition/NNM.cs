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
        string[] StrengthRange=["Vs","S","Vg","G","W","Vw"];
        string[] FingerPrintTypes=["WP","WU","WDS","WDSU","WD","WDU","WA","WLU","WAC","WDSC","WDSUC","WDC","WDUC","WLUC","WR","WDSR","WDR","WLR","WRC","WDSRC","WDRC","WLRC","LDVU","LDU","LVU","LU","LDVUC","LDUC","LVUC","LUC","LDVR","LDR","LVR","LR","LDVRC","LDRC","LVRC","LRC","LA","LAR","LAC","LARC","AT","A"];
        double[] x1_step1_xoffset;
        double[] x1_step1_gain;
        double x1_step1_ymin;
        double[] b1;
        double[] b2;
        double[,] IW1_1;
        double[,] LW2_1;
        double[] Xp1, a1, n, nmax, numerator,denominator,Y;
        

        public double GetStrength(string strength)
        {
            // convert strength from string to double class
            return Convert.ToDouble(strength);
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
                    x1_step1_xoffset = new double[22];
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
                    x1_step1_gain = new double[22];
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
                    IW1_1 = new double[1024,22];
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
            Result RR = new Result();

            //Xp1 = (X - x1_step1_xoffset).* x1_step1_gain + x1_step1_ymin;
            //// Layer 1
            //a1 = 2./ (1 + exp(-2 * (b1 + IW1_1 * Xp1))) - 1;
            //// Layer 2
            //n = b2 + LW2_1 * a1;
            //nmax = max(n);
            //n = n - nmax;
            //numerator = exp(n);
            //denominator = sum(numerator);
            //if (denominator == 0):
            //    {
            //    denominator = 1;
            //}
            //Y = numerator / denominator;
            return RR;
        }

    }
}