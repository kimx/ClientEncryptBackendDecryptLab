﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientEncryptBackendDecryptLab
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            lblUserNameDecrypt.Text = AESEncrytDecry.DecryptStringAES(txtUserNameEncrypt.Text);
            lblEmailDecrypt.Text = AESEncrytDecry.DecryptStringAES(txtEmailEncrypt.Text);
            lblUserNameIsSame.Text = (txtUserName.Text == lblUserNameDecrypt.Text).ToString();
            lblEmailDecryptIsSame.Text = (txtEmail.Text == lblEmailDecrypt.Text).ToString();

        }
    }
}