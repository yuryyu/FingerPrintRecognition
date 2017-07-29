using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintRecognition
{
    public partial class Default : System.Web.UI.Page
    {

        public string[] FingerType;
        public int[] RidgeCount;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void CalculateBTN_Click(object sender, EventArgs e)
        {
            
            FingerType[0] = FingerType1.SelectedItem.Text;
            FingerType[1] = FingerType2.SelectedItem.Text;
            FingerType[2] = FingerType3.SelectedItem.Text;
            FingerType[3] = FingerType4.SelectedItem.Text;
            FingerType[4] = FingerType5.SelectedItem.Text;
            FingerType[5] = FingerType6.SelectedItem.Text;
            FingerType[6] = FingerType7.SelectedItem.Text;
            FingerType[7] = FingerType8.SelectedItem.Text;
            FingerType[8] = FingerType9.SelectedItem.Text;
            FingerType[9] = FingerType10.SelectedItem.Text;

            RidgeCount[0] = int.Parse(RidgeCount1.Text);
            RidgeCount[1] = int.Parse(RidgeCount2.Text);
            RidgeCount[2] = int.Parse(RidgeCount3.Text);
            RidgeCount[3] = int.Parse(RidgeCount4.Text);
            RidgeCount[4] = int.Parse(RidgeCount5.Text);
            RidgeCount[5] = int.Parse(RidgeCount6.Text);
            RidgeCount[6] = int.Parse(RidgeCount7.Text);
            RidgeCount[7] = int.Parse(RidgeCount8.Text);
            RidgeCount[8] = int.Parse(RidgeCount9.Text);
            RidgeCount[9] = int.Parse(RidgeCount10.Text);

            // init NNM object and calculate Finger Strength
            NNM nn = new NNM();
            // init parameters            
            nn.InitNNM(Server.MapPath(@"NN_weights.txt"));
            NNM.Result RY = new NNM.Result();
            RY=nn.CalculateStrength(RidgeCount, FingerType);

            // Update page
            FingerStrength1.Text = RY.FingerStrength[0];
            FingerStrength2.Text = RY.FingerStrength[1];
            FingerStrength3.Text = RY.FingerStrength[2];
            FingerStrength4.Text = RY.FingerStrength[3];
            FingerStrength5.Text = RY.FingerStrength[4];
            FingerStrength6.Text = RY.FingerStrength[5];
            FingerStrength7.Text = RY.FingerStrength[6];
            FingerStrength8.Text = RY.FingerStrength[7];
            FingerStrength9.Text = RY.FingerStrength[8];
            FingerStrength10.Text = RY.FingerStrength[9];

            TotalScore1.Text = RY.TotalScore[0].ToString();           
            TotalScore2.Text = RY.TotalScore[1].ToString();
            TotalScore3.Text = RY.TotalScore[2].ToString();
            TotalScore4.Text = RY.TotalScore[3].ToString();
            TotalScore5.Text = RY.TotalScore[4].ToString();
            TotalScore6.Text = RY.TotalScore[5].ToString();
            TotalScore7.Text = RY.TotalScore[6].ToString();
            TotalScore8.Text = RY.TotalScore[7].ToString();
            TotalScore9.Text = RY.TotalScore[8].ToString();
            TotalScore10.Text = RY.TotalScore[9].ToString();
        }        
    }
}