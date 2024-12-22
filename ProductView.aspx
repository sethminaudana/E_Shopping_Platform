<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="E_Shopping_Web.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    
    
    <div style="padding-top:20px">
            <!--- Success Alert --->
                        <div id="divSuccess" runat="server" class="alert alert-success alert-dismissible fade in h4">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">x</a>
                            <strong>Success! </strong>Item successfully added to cart. <a href="Cart.aspx">View Cart</a>
                        </div>

        <div class="container mt-5" style=" width:fit-content ">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <!-- Indicators -->
<div class="carousel-indicators">
  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
</div>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
  
      <asp:repeater ID="rptrImage" runat="server">
          <ItemTemplate>
    <div class="carousel-item <%# GetActiveImgClass(Container.ItemIndex) %>">
      <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>" class="d-block w-auto" height="600px" onerror="this.src='Images/ImageNotAvailable.jpg'">
      
    </div>
             </ItemTemplate>
    </asp:repeater>
      

  </div>

  <!-- Controls -->
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>
            </div>

              <%--  for proimage slider ending--%>
            </div>
        
       <div class="container py-3">
    <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound">
        <ItemTemplate>
            <!-- Product Name -->
            <div class="text-center mb-3">
                <h2 class="display-5"><%# Eval("PName") %></h2>
            </div>

            <!-- Pricing Section -->
            <div class="mb-3">
                <span class="text-muted text-decoration-line-through">Rs. <%# Eval("PPrice", "{0:c}") %></span>
                <span class="text-success">Off Rs. <%# Convert.ToInt64(Eval("PPrice")) - Convert.ToInt64(Eval("PSelPrice")) %></span>
                <p class="h4 text-primary">Rs. <%# Eval("PSelPrice", "{0:c}") %></p>
            </div>

            <!-- Size Options -->
            <div class="mb-3">
                <h5 class="fw-bold">Size</h5>
                <asp:RadioButtonList 
                    ID="rblSize" 
                    runat="server" 
                    RepeatDirection="Horizontal" 
                    CssClass="btn-group btn-group-toggle">
                    <asp:ListItem Value="S" Text="S" />
                    <asp:ListItem Value="M" Text="M" />
                    <asp:ListItem Value="L" Text="L" />
                    <asp:ListItem Value="XL" Text="XL" />
                </asp:RadioButtonList>
            </div>

            <!-- Add to Cart Button -->
            <div class="mb-3">
                <asp:Button 
                    ID="btnAddtoCart" 
                    CssClass="btn btn-outline-dark w-100" 
                    runat="server" 
                    Text="ADD TO CART" 
                    OnClick="btnAddtoCart_Click" />
                <asp:Label 
                    ID="lblError" 
                    CssClass="text-danger mt-2 d-block" 
                    runat="server"></asp:Label>
            </div>

            <!-- Product Information -->
            <div class="mt-4">
                <h5 class="fw-bold">Description</h5>
                <p><%# Eval("PDescription") %></p>

                <h5 class="fw-bold">Product Details</h5>
                <p><%# Eval("PProductDetails") %></p>

                <h5 class="fw-bold">Material & Care</h5>
                <p><%# Eval("PMaterialCare") %></p>
            </div>

            <!-- Additional Information -->
            <div class="mt-3">
                <p><%# Convert.ToInt32(Eval("FreeDelivery")) == 1 ? "Free Delivery" : "" %></p>
                <p><%# Convert.ToInt32(Eval("30DayRet")) == 1 ? "30 Days Returns" : "" %></p>
                <p><%# Convert.ToInt32(Eval("COD")) == 1 ? "Cash on Delivery" : "" %></p>
            </div>

            <!-- Hidden Fields -->
            <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PcategoryID") %>' />
            <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%# Eval("PSubCatID") %>' />
            <asp:HiddenField ID="hfGenderID" runat="server" Value='<%# Eval("PGender") %>' />
            <asp:HiddenField ID="hfBrandID" runat="server" Value='<%# Eval("PBrandID") %>' />
        </ItemTemplate>
    </asp:Repeater>
</div>

   
    
</asp:Content>
