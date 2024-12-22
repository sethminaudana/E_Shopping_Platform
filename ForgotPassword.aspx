<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="E_Shopping_Web.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot password</title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
     <link rel="stylesheet" href="Bootstrap 5/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                         <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
<a class="navbar-brand" href="UserHome.aspx">
    <img src="Icons/1b8c944a60aded920baf9a3ed09b9adc.png" alt="MyEShopping" height="30" />
    MyEShopping
</a>    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
          <li class="nav-item">
  <a class="nav-link" href="#">Contact US</a>
</li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Products
          </a>
            
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">All Produts</a></li>
              <li><hr class="dropdown-divider"/></li>
              <h6 class="dropdown-header">Men</h6>
            <li><a class="dropdown-item" href="#">Shirts</a></li>
              <li><a class="dropdown-item" href="#">Pants</a></li>
              <li><a class="dropdown-item" href="#">Denims</a></li>
                <li><hr class="dropdown-divider"/></li>
          <h6 class="dropdown-header">Women</h6>
        <li><a class="dropdown-item" href="#">Top</a></li>
      <li><a class="dropdown-item" href="#">Leggins</a></li>
         <li><a class="dropdown-item" href="#">Sarees</a></li>
            <li><hr class="dropdown-divider"/></li>
          </ul> </li>
                  <li class="nav-item">
     <asp:Button  CssClass="btn btn-primary navbar-btn my-2 my-sm-0" runat="server" Text="Cart" /><span class="badge " id="pCount" runat="server">0</span>
     
 </li>
 <li class="nav-item">
    <asp:Button ID="btnSignIN" runat="server" CssClass="btn btn-outline-secondary my-2" Text="Sign In"/>
      <asp:Button ID="btnSignUP"  runat="server" CssClass="btn btn-outline-secondary my-2 my-sm-0" Text="Sign Up"/>
       </li>
 
             </ul>
               
    </div>
  </div>
</nav>

    </div>


        <br />

        <div class="container">
            <div class ="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h3>Please Enter Your Email Address, we will send you the recovery link for your password!</h3>

                <div class ="form-group">
                    <asp:Label ID="lblEmail" CssClass ="col-md-2 control-label" runat="server" Text="your Email Address"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtEmailID" CssClass =" form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                </div>

                <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <h4 class="alert-danger">This feature is currently under development process</h4>
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Send" Visible="false" OnClick="btnResetPass_Click" />
                   <asp:Label ID="lblResetPassMsg" CssClass ="text-success " runat="server" ></asp:Label>
                         </div>
                </div>

            </div>
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
