<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyConsumer.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Τιμή"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Σύνολο"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" />
            <br />
            <br />
            <asp:Label ID="percentenge" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="= Ποσοστό που υπολογίστηκε" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="time" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text="= η ώρα στο server"></asp:Label>
        </div>
    </form>
</body>
</html>
