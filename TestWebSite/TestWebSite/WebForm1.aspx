<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestWebSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Καλημέρα</title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 474px;
            height: 360px;
        }
        .auto-style4 {
            width: 474px;
            height: 331px;
        }
        .auto-style5 {
            width: 474px;
            height: 314px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #00FF00" title="SOS">
        <div>
            <h1 class="auto-style1">Ένα πρώτο δοκιμαστικό site.
        </h1>
        </div>
        <br />
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <img alt="photo1" class="auto-style3" src="photos/photo1.jpg" /></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <img alt="photo2" class="auto-style4" src="photos/photo2.jpg" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </td>
                <td>
                    <img alt="photo3" class="auto-style5" src="photos/photo3.jpg" /></td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
