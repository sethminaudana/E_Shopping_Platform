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
                    <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <div class=" container-fluid ">
<a class="navbar-brand" href="Default.aspx" style="margin-right:200px">
    <img src="Icons/1b8c944a60aded920baf9a3ed09b9adc.png" alt="MyEShopping" height="50" />
    MyEShopping
</a> <div>
                     <asp:Button ID="cartid"  CssClass="btn btn-primary navbar-btn my-2 my-sm-0" runat="server" Text="Cart" PostBackUrl="~/Cart.aspx" /><span run class="position-absolute translate-middle badge rounded-pill bg-danger  " id="pCount" runat="server">0</span>
       <asp:Button ID="btnSignIN" runat="server" CssClass="btn btn-outline-secondary my-2" Text="Sign In" PostBackUrl="~/SignIn.aspx"/>
     <asp:Button ID="btnSignUP"  runat="server" CssClass="btn btn-outline-secondary my-2 my-sm-0 me-5" Text="Sign Up" PostBackUrl="~/SignUp.aspx"/>
     <asp:Button ID="btnlogout"  CssClass="btn btn-default navbar-btn my-2 my-sm-0 btn-outline-light" runat="server" Text="Sign Out" OnClick="btnlogout_Click" />
    
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
        <div class="p-3">
            
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
            <div class="container">
    <!-- Section 1: Categories -->
    <div class="row text-center py-4">
        <div class="col-lg-4 mb-2">
            <img class="rounded-circle img-fluid mb-3" src="Images/iphone11.jpeg" alt="Mobiles" width="200" height="140" />
            <h2>Mobiles</h2>
            <p>Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures that it is water-resistant up to 2 meters for 30 minutes...</p>
            <a href="#" class="btn btn-primary">View More &raquo;</a>
        </div>
        <div class="col-lg-4 mb-2">
            <img class="rounded-circle img-fluid mb-3" src="Images/Shoes.jpeg" alt="Footwear" width="200" height="140" />
            <h2>Footwear</h2>
            <p>Featuring top-notch design and comfort, our footwear collection stands out. Perfect for everyday use or special occasions...</p>
            <a href="#" class="btn btn-primary">View More &raquo;</a>
        </div>
        <div class="col-lg-4">
            <img class="rounded-circle img-fluid mb-3" src="Images/tshirt.jpeg" alt="Clothings" width="200" height="140" />
            <h2>Clothings</h2>
            <p>Discover our trendy clothing line that combines fashion and comfort. Find the perfect outfit for every occasion...</p>
            <a href="#" class="btn btn-primary">View More &raquo;</a>
        </div>
    </div>

    <!-- Section 2: Black Friday Deal -->
    <h1 class="text-center py-4">BLACK FRIDAY DEAL</h1>
    <div class="row">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="col-md-4 mb-4">
                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" class="text-decoration-none">
                        <div class="card h-100 shadow-sm">
                            <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" class="card-img-top" alt="<%# Eval("ImageName") %>" style="height: 200px; object-fit: cover;" />
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval ("PName") %></h5>
                                <p class="card-text text-muted"><%# Eval ("BrandName") %></p>
                                <p class="card-text">
                                    <span class="text-danger fw-bold"><%# Eval ("PSelPrice", "{0:c}") %></span>
                                    <span class="text-muted text-decoration-line-through"><%# Eval ("PPrice", "{0:0,00}") %></span>
                                    <span class="badge bg-success">Save <%# Eval("DiscAmount", "{0:0,00}") %></span>
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>

     
     <div class="bg-warning text-dark text-center py-3 rounded shadow-sm">
  <h4 class="fw-bold mb-2">Special Offer!</h4>
  <p class="mb-0">
    <strong>Buy 50 mobiles</strong> and get an exclusive 
    <span class="text-danger">gift card</span> as a reward!
  </p>
</div>

            <hr style="margin-right:100px" />
<div class="position-relative" border: 1px solid #ddd;">
    <p class="position-absolute bottom-0 end-0 m-2">
        <button class="btn-info" href="#">Back to top</button>
    </p>
</div>
           
        </div>
    </form>
              <footer class="bg-primary text-white text-center text-lg-start">
  <!-- Grid container -->
  <div class="container p-4">
    <div class="row">
      <!-- Summary Column -->
      <div class="col-lg-9 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase">SUMMERY</h5>
        <p>
          Welcome to our online store! We offer a wide range of high-quality products, 
          from the latest gadgets to trendy fashion and footwear. Our mission is to 
          provide an exceptional shopping experience, combining great deals, fast 
          delivery, and outstanding customer service. Shop with confidence and explore 
          our exclusive Black Friday deals and much more. Thank you for choosing us 
          for your shopping needs!
        </p>
      </div>
      <!-- Links Column -->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="UserHome.aspx" class="text-white">Home</a></li>
<li><a href="Products.aspx" class="text-white">Shop</a></li>
<li><a href="About.aspx" class="text-white">About Us</a></li>
<li><a href="Contact.aspx" class="text-white">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>

  <!-- Copyright Section -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2024 Copyright:
    <a class="text-white" href="#">EShopping.com</a>
  </div>
</footer>

   <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
-->
    <script src="Bootstrap 5/popper.min.js"></script>
    <script src="Bootstrap 5/bootstrap.min.js"></script>
</body>
</html>
