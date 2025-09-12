<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Lab2B._1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #99FFCC">
            <h1>
                <asp:Label ID="Label1" runat="server" Text="Give IP in form (x.x.x.x)"></asp:Label>
            </h1>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ip location:"></asp:Label>
&nbsp;<asp:Label ID="ipLocation" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GetIPLocation" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return" />
            <br />
        </div>
    </form>
</body>
</html>
