﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Text = "You have been Logged Out Succesfully";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginuser.aspx");
        }
    }
}