<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
              .modalPopup
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        width: 300px;
        height: 140px;
    }
              
    .bgClr{      
        background-color:Green;
    }
    
    </style>
     <script>
         function changecolor(e) {
             e.style.color = "red";
             return false;

         }
    </script> 
    <script type="text/javascript">
        $(function () {
            $(".btn").click(function () {
               // $('.btn').removeClass('bgClr');
                $(this).addClass('bgClr');
                return false;
            });
        });
    </script>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <p>
            select id<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        
        <p>
            &nbsp;select username&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" Enabled="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Enabled="False" OnClick="TextBox2_TextChanged" Text="Button" />
            <asp:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server"  TargetControlID="Button1" PopupControlID="Panel1" CancelControlID="Button2">
            </asp:ModalPopupExtender>
        </p>
        <p>
        </p>
              <asp:Panel ID="Panel1" runat="server" Height="111px" Width="112px" style="margin-left:200px;margin-top:10px;backface-visibility:hidden;background-color:blue" CssClass="modalPopup" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" style="height: 26px" Text="Button" />
           
            <br />
            <asp:Button ID="Button3" runat="server" Text="Button" Enabled="False" OnClick="TextBox2_TextChanged" />
            <br />
            <br />
            <br />
            <br />
            <br />
                  <br />
                  
        </asp:Panel>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
           <%-- &nbsp<asp:Button ID="Button4" runat="server" OnClick="this.style.background=red" Text="Button" />--%>
            &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
            <asp:Button ID="Button6" runat="server" Text="Button" />
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
