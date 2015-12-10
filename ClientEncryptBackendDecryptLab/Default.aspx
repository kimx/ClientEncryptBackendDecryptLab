<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClientEncryptBackendDecryptLab.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="scripts/aes.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td width="200px">

            <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label>
                </td>
                <td>
            <asp:TextBox ID="txtUserName" runat="server" Width="270px">labName</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="267px">CleintServerDecryptAndEndrypt@lab.test</asp:TextBox>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" OnClientClick="encrypt();" />
                </td>
            </tr>
            <tr>
                <td>UserName Client Encrypt</td>
                <td>
            <asp:TextBox ID="txtUserNameEncrypt" runat="server" Text="" Width="1061px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>UserName Server Decrypt</td>
                <td>
            <asp:Label ID="lblUserNameDecrypt" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Is Same</td>
                <td>
            <asp:Label ID="lblUserNameIsSame" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Email Client Encrypt</td>
                <td>


            <asp:TextBox ID="txtEmailEncrypt" runat="server" Text="" Width="1049px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email Server Decrypt</td>
                <td>
            <asp:Label ID="lblEmailDecrypt" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            <tr>
                <td>Is Same</td>
                <td>
            <asp:Label ID="lblEmailDecryptIsSame" runat="server" Text=""></asp:Label>

                </td>
            </tr>
        </table>
        <h4>        <a href="http://www.c-sharpcorner.com/UploadFile/4d9083/encrypt-in-javascript-and-decrypt-in-C-Sharp-with-aes-algorithm/" target="_blank">Reference</a><br />
</h4>
    </form>
    <script>
  
        function encrypt() {
            var userName = $("#txtUserName").val();
            var email = $("#txtEmail").val();
            var key = CryptoJS.enc.Utf8.parse('8080808080808080');
            var iv = CryptoJS.enc.Utf8.parse('8080808080808080');
            var encryptedlogin = CryptoJS.AES.encrypt(CryptoJS.enc.Utf8.parse(userName), key,
            {
                iv: iv,//以下參數不指定也行
                keySize: 128 / 8,
                mode: CryptoJS.mode.CBC,
                padding: CryptoJS.pad.Pkcs7
            });


            var encryptedEmail = CryptoJS.AES.encrypt(CryptoJS.enc.Utf8.parse(email), key,
                {
                    iv: iv,
                    keySize: 128 / 8,
                    mode: CryptoJS.mode.CBC,
                    padding: CryptoJS.pad.Pkcs7
                });
            $("#txtUserNameEncrypt").val(encryptedlogin);
            $("#txtEmailEncrypt").val(encryptedEmail);

        }
    </script>
</body>
</html>
