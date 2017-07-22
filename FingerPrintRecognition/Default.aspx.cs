﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintRecognition
{
    public partial class Default : System.Web.UI.Page
    {
        public string txtResult = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateBTN_Click(object sender, EventArgs e)
        {
            NNM nn = new NNM();
            // init parameters
            nn.InitNNM("C:/Users/vivotext/documents/visual studio 2015/Projects/FingerPrintRecognition/FingerPrintRecognition/NN_weights.txt");

            txtResult = nn.GetName(ResultID.Text);
            ResultID.Text = txtResult;



        }
    }
}