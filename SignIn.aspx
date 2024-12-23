<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="E_Shopping_Web.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link rel="stylesheet" href="Bootstrap 5/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                                <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <div class=" container-fluid ">
<a class="navbar-brand" href="Default.aspx" style="margin-right:200px">
    <img src="Icons/1b8c944a60aded920baf9a3ed09b9adc.png" alt="MyEShopping" height="50" />
    MyEShopping
</a> <div>
     <asp:Button ID="btnSignUP"  runat="server" CssClass="btn btn-outline-secondary my-2 my-sm-0 me-5" Text="Sign Up" PostBackUrl="~/SignUp.aspx"/>
    
     </div>   
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
       
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="UserHome.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="About.aspx">About</a>
        </li>
          <li class="nav-item">
  <a class="nav-link" href="Contact.aspx">Contact US</a>
</li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Products
          </a>
            
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Products.aspx">All Produts</a></li>
              <li><hr class="dropdown-divider"/></li>
              <h6 class="dropdown-header">Men</h6>
            <li><a class="dropdown-item" href="ManShirt.aspx">Shirts</a></li>
              <li><a class="dropdown-item" href="ManPants.aspx">Pants</a></li>
              <li><a class="dropdown-item" href="ManDenims.aspx"x>Denims</a></li>
                <li><hr class="dropdown-divider"/></li>
          <h6 class="dropdown-header">Women</h6>
        <li><a class="dropdown-item" href="WomanTop.aspx">Top</a></li>
      <li><a class="dropdown-item" href="womanLegging.aspx">Leggins</a></li>
         <li><a class="dropdown-item" href="WomanSarees.aspx">Sarees</a></li>
            <li><hr class="dropdown-divider"/></li>
          </ul> </li>
                  
             </ul>
               
    </div>
     
  </div>
</nav>
                    
        <br />
        <br />

        <!----singin form start--->

        <div class ="container ">
            <div class ="form-horizontal ">
                <h2>Login Form</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
    <div class ="col-md-2 "> </div>
    <div class ="col-md-6 ">

        <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
    </div>
</div>
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>
                <br />

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass ="btn btn-success " runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1"  CssClass ="btn btn-dark" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                <br />
              <%--  for forgot password--%>
                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                       
                    </div>
                </div>



                


            </div>


        </div>
        <!----singin form End--->
            </div>
                   <footer class="bg-primary text-white text-center text-lg-start bottom-0 w-100">
  <!-- Grid container -->
  <div class="container p-4">
    <!--Grid row-->
    <div class="row">
      <!--Grid column-->
      <div class="col-lg-9 col-md-5 mb-4 mb-md-0">
        <h5 class="text-uppercase">Summary</h5>

        <p class="mr-5">
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis
          molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae aliquam
          voluptatem veniam, est atque cumque eum delectus sint!
        </p>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
               <ul class="list-unstyled mb-0">
          <li>
            <a href="#!" class="text-white">Link 1</a>
          </li>
          <li>
            <a href="#!" class="text-white">Link 2</a>
          </li>
          <li>
            <a href="#!" class="text-white">Link 3</a>
          </li>
          <li>
            <a href="#!" class="text-white">Link 4</a>
          </li>
        </ul>
      </div>
      <!--Grid column-->
    </div>
    <!--Grid row-->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2020 Copyright:
    <a class="text-white" href="#">EShopping.com</a>
  </div>
  <!-- Copyright -->
</footer>
        
    </form>
     <script src="Bootstrap 5/popper.min.js"></script>
 <script src="Bootstrap 5/bootstrap.min.js"></script>
</body>
</html>
