<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab2B._1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #99FFCC">
            <h1>
                <asp:Label ID="Label1" runat="server" Text="Country Info"></asp:Label>
            </h1>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Country: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="ISO code"></asp:Label>
&nbsp;<asp:Label ID="ISOCODE" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Capital"></asp:Label>
&nbsp;<asp:Label ID="Capital" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Country Code"></asp:Label>
&nbsp;<asp:Label ID="CountryCode" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find Information" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Find Ip Location" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
