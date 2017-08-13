<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing.aspx.cs" Inherits="testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WEBPAGE</title>
    <script src="jquery-1.5.1.min.js" type="text/javascript"></script>
 <%--<style type="text/css">
      .panel {
          background-color: aqua;
          color:red;
          border:3px solid black;

      }
  </style>--%>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $("#Button1").click(function () {
                alert("Hello");
            });
        });
        
 
    </script>
    --%>
    
    
     <%-- <script type="text/javascript">
        $(function () {
            $(document).ready(function(){
                $('#popup').dialog({
                    title: "Jquery popup model",
                    width: 450,
                    height: 250,
                    modal:true,
                    button:
                        {
                        
                            close: function(){
                            
                                $(this).dialog('close');
                            }
                        }
                });
            });
        })
    </script>--%>
    <style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 600px;
width: 600px;
min-height: 150px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
        #form1 {
            height: 105px;
        }
    </style>


<%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>--%>
<script type="text/javascript">
    $("document").ready(function () {//if use ready,function will in page load
        var overlay = $('<div id="overlay"></div>');
        overlay.show();
        overlay.appendTo(document.body);
        $('.popup').show();
        $('.close').click(function () {//this is trigger when close button click
            $('.popup').hide();
            overlay.appendTo(document.body).remove();
            return false;
        });
    });
</script>

</head>
<body>
    <form id="form1" runat="server">
      <%-- <div id="popup" title="page load modal popup" style="display:none">
        <b> Today news:</b>
        Currently launched windows 10 professional version
    
    </div>--%>
       <%-- <input id="Button1" type="button" value="button" /></form>--%>
       <%-- <asp:Button ID="Button1" runat="server" Text="Button" />--%>
        
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="popup">
    
    <div class="cnt223">
<!-- Before next step i planning to add my custom css and jquery library link i have my style if you want to downdload please check in description -->
<img src="css/search.jpg"  class="x" id="x" />"
        <p>
            hi this a popup
        </p>


    <div style="background-color:aqua">
       <h1>Enter name</h1>  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
<br /><br />
    

        <br />
        <br />
       <%-- <asp:Panel ID="Panel1" runat="server" BorderColor="Red" BackColor="Black"></asp:Panel>

        <asp:Button ID="Button1" runat="server" Text="Button" />--%>
<a class="close" href="#" >Close</a>
</div>

</div>
        
    
    
    
    </form>
</body>
</html>
