<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test4new.aspx.cs" Inherits="test4new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddCountry_SelectedIndexChanged">
            <asp:ListItem Selected="True">Choose a item</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="ddstate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="ddcity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
