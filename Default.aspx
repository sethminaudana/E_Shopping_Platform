<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="E_Shopping_Platform.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
   <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
       -->
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
 <li>
         <asp:Button ID="btnlogout"  CssClass="btn btn-default navbar-btn my-2 my-sm-0" runat="server"
             Text="Sign Out"  />
     </li>
             </ul>
               
    </div>
  </div>
</nav>
     <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner text-center">
    <div class="carousel-item active">
      <img src="Images/1.jpg" width="800px" class="img-fluid" alt="..."/>
      <div class="carousel-caption">
                  <a class="btn btn-sm btn-outline-primary" href="Products.aspx" role="button">Buy Now</a>
      </div>
    </div>
    <div class="carousel-item text-center">
      <img src="Images/2.png" class="img-fluid" alt="..."/>
      <div class="carousel-caption d-md-block">
                         <a class="btn btn-sm btn-outline-primary" href="Products.aspx" role="button">Buy Now</a>
      </div>
    </div>
    <div class="carousel-item text-center">
      <img src="Images/3.png" class="img-fluid" alt="..."/>
      <div class="carousel-caption d-md-block">
               <a class="btn btn-sm btn-outline-primary" href="Products.aspx" role="button">Buy Now</a>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" style="left:270px" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" style="right:270px" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
            <hr />
             <div class="row ">
     <div class="col-lg-4">
         <img class="img-circle " src="Images/iphone11.jpeg" alt="thumb" width="140" height="140" />
         <h2>
             Mobiles</h2>
         <p>
             Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
             design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
             that is water-resistant up to 2 meters for 30 minutes....</p>
         <p>
             <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
     </div>
                 <br />
     <div class="col-lg-4" >
         <img class="img-circle " src="Images/Shoes.jpeg" alt="thumb" width="140" height="140" />
         <h2>
             Footwear</h2>
         <p>
             Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
             design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
             that is water-resistant up to 2 meters for 30 minutes....</p>
         <p>
             <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
     </div>
     <div class="col-lg-4">
         <img class="img-circle " src="Images/tshirt.jpeg" alt="thumb" width="140" height="140" />
         <h2>
             Clothings</h2>
         <p>
             Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
             design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
             that is water-resistant up to 2 meters for 30 minutes....</p>
         <p>
             <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
     </div>
 </div>
             <div class="panel panel-primary">
     <div class="panel-heading">
         BLACK FRIDAY DEAL</div>
     <div class="panel-body">
         <div class="row" style="padding-top: 50px">
             <asp:Repeater ID="rptrProducts" runat="server">
                 <ItemTemplate>
                     <div class="col-sm-3 col-md-3">
                         <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                             <div class="thumbnail">
                                 <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                     alt="<%# Eval("ImageName") %>" />
                                 <div class="caption">
                                     <div class="probrand">
                                         <%# Eval ("BrandName") %>
                                     </div>
                                     <div class="proName">
                                         <%# Eval ("PName") %>
                                     </div>
                                     <div class="proPrice">
                                         <span class="proOgPrice">
                                             <%# Eval ("PPrice","{0:0,00}") %>
                                         </span>
                                         <%# Eval ("PSelPrice","{0:c}") %>
                                         <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                             off) </span>
                                     </div>
                                 </div>
                             </div>
                         </a>
                     </div>
                 </ItemTemplate>
             </asp:Repeater>
         </div>
     </div>
     <div class="panel-footer">
         Buy 50 mobiles and get a gift card</div>
 </div>
            <hr style="margin-right:100px" />
<div class="position-relative" border: 1px solid #ddd;">
    <p class="position-absolute bottom-0 end-0 m-2">
        <a href="#">Back to top</a>
    </p>
</div>
           <footer class="bg-primary text-white text-center text-lg-start">
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
        </div>
    </form>
   <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
-->
    <script src="Bootstrap 5/popper.min.js"></script>
    <script src="Bootstrap 5/bootstrap.min.js"></script>
</body>
</html>
