<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGINFORM.aspx.cs" Inherits="home_LOGINFORM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGINPAGE</title>
    <style>
        body {
            background-color:aqua;

        }
        .container {
            width:500px;
            height:400px;
            text-align:center;
              border-radius:4px;
            background-color:rgba(52 ,73, 94, 0.7);
           margin-top:150px;
           margin-left:400px;
           margin-bottom:30px;
           
             
            
            
          
        }
            .container img {
                width: 120px;
                height:120px;
                margin-top:-60px;
                margin-right:10px;
            }
        .tr {
            
        }

        
         header {
            background: #405580;
            width:100%;
            height:86px;
            position:fixed;
            top:0px;    /*so that it stays in up side of screen*/
            left:0px;    /*and  take width of the screen*/
            z-index:100;    /*so that when header will remain on top and rest scroll will go upto header*/
            opacity:0.40;    /*for transparency*/
        }
          nav {
            float:right;
            padding-top:35px;
            padding-right:20px;
            padding-bottom:20px;
            
                padding-left:0px;
            margin-bottom: 0px;
        }
          ul { /*styling ul for nav*/
            list-style: none; /*removing dots from menu list*/
        }
        nav ul li { /*styling nav ul and then li to go li of nav we will write like this*/
            display: inline-block; /*this will make all vertical elements of nav in side to each other*/
            float: left;
            padding: 10px;
            margin-top:-15px;
            background-color:black;
           
            /*means each item k beech space*/;
        }
          #logo {
            /*style logo of header*/
            margin: 20px;
            float: left; /*so tht the logo in header shifts left;*/
            width: 547px;
            height: 114px;
            background: url("images/w.jpg");
        }
        form-input::before {
            content : "f\007";
            position:absolute;
            font-family: "Arial";
            font-size:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <a href ="#" id ="logo"></a> <%--href is a link and so that te page remains on same page
       --%>
            <%--for navigation where link of logo is saved--%>
        <nav>
       <a href ="#" id ="menu-icon"></a>
        
              <ul>
                  <li><a href="DOCTOR's%20PANEL/home/homepagefinal.aspx"><b>HOME</b></a></li> <%--we want that every list item should be a navigation--%>
                   <li><a href="DOCTOR's%20PANEL/home/BOOK MEDICINES.aspx" ><b>>BOOK MEDICINE</b></a></li>
                   <li><a href="DOCTOR's%20PANEL/home/HOSPITALBOOKING.aspx" ><b>>BOOK AMBULANCE</b</a></li>
                   <li><a href="#" ><b>LOGIN</b></a></li>
                   
                   <li><a href="DOCTOR's%20PANEL/home/homepagefinal.aspx" ><b>CONTACT</b></a></li>
                  
                  
              </ul>
       
        </nav>
        
        </header>
        <div class="container">
            &nbsp;<div class="form-input">
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="height:40px;
            width:300px;
            margin-top:70px;
            font-size:18px;
            margin-bottom:20px;
            padding-left:70px;
            background-image:url(images/login.png);   
background-position:left;   
background-repeat:no-repeat;   
padding-left:17px;" 
                    placeholder="Enter username"></asp:TextBox><br />

                <asp:TextBox ID="TextBox2" runat="server"  style="height:40px;
            width:300px;
            font-size:18px;
            margin-bottom:20px;padding-left:30px;" placeholder="Enter password"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Button" style="padding:15px 30px;color:green;border:none;border-radius:4px;background-color:black " OnClick="Button1_Click" />
            <a href="USERLOGIN/userregistration.aspx">NEW REGISTRATION</a>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="White"></asp:Label>

            <a href="DOCTOR's%20PANEL/DOCTORLOGIN.aspx">IF YOU ARE DOCTOR CLICK HERE</a></div>
    </form>
    </body>
</html>
