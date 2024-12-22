<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="E_Shopping_Web.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="row p-3">
      <div class="col-md-12">
          
          <br />
                    <h3 class="pt-3">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </h3>
                    <hr />
                    
      </div>
    </div>

  <div class="container my-4">
    <!-- Search Bar -->
    <div class="row mb-3">
        <div class="col-12">
            <asp:TextBox 
                ID="txtFilterGrid1Record" 
                CssClass="form-control" 
                runat="server" 
                placeholder="Search Products..." 
                AutoPostBack="true" 
                ontextchanged="txtFilterGrid1Record_TextChanged">
            </asp:TextBox>
        </div>
    </div>
    
    <hr />

    <!-- Product Grid -->
    <div class="row">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="col-md-4 col-sm-6 mb-4">
                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
                        <div class="card h-100 shadow-sm">
                            <!-- Product Image -->
                            <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" 
                                alt="<%# Eval("ImageName") %>" 
                                class="card-img-top" 
                                style="height: 500px; object-fit: cover;" />
                            
                            <!-- Product Details -->
                            <div class="card-body">
                                <h5 class="card-title text-truncate"><%# Eval("PName") %></h5>
                                <p class="card-text text-muted">
                                    Brand: <%# Eval("BrandName") %>
                                </p>
                                <p class="card-text">
                                    <span class="text-decoration-line-through text-muted">Rs. <%# Eval("PPrice", "{0:0,0}") %></span>
                                    <span class="fw-bold text-danger">Rs. <%# Eval("PSelPrice", "{0:c}") %></span>
                                    <span class="text-success">(<%# Eval("DiscAmount", "{0:0,0}") %> off)</span>
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>


</asp:Content>
