<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_Shopping_Web.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cart</title>
      </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                
                    <div style="padding-top: 0px">
                        <div class="col-md-9">
                            <h4 class="proNameViewCart" runat="server" id="h4NoItems"></h4> <hr />
                            <div id="divQtyError" runat="server" class="alert alert-success alert-dismissible fade-in h4">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close"> &times;</a>
                                <strong>Oops! </strong>Quantity cannot be less than 1.
                            </div>
                           <asp:Repeater ID="RptrCartProducts" OnItemCommand="RptrCartProducts_ItemCommand" runat="server">
    <ItemTemplate>
        <!-- Cart Item -->
        <div class="card mb-3 shadow-sm">
            <div class="row g-0">
                <!-- Product Image -->
                <div class="col-md-2">
                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" target="_blank">
                        <img 
                            class="img-fluid rounded-start" 
                            src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" 
                            alt="<%# Eval("Name") %>" 
                            onerror="this.src='Images/NoImg.png'" />
                    </a>
                </div>
                <!-- Product Details -->
                <div class="col-md-10">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("PName") %></h5>
                        <p class="card-text mb-1">
                            <span class="fw-bold text-success">Rs. <%# Eval("PSelPrice", "{0:0.00}") %></span>
                            <span class="text-muted text-decoration-line-through ms-2">Rs. <%# Eval("PPrice", "{0:0.00}") %></span>
                            <span class="badge bg-warning text-dark ms-2">Off Rs. <%# string.Format("{0}", Convert.ToInt64(Eval("PPrice")) - Convert.ToInt64(Eval("PSelPrice"))) %></span>
                        </p>
                        <!-- Quantity Controls -->
                        <div class="d-flex align-items-center mb-3">
                            <label class="me-2">Qty:</label>
                            <asp:Button ID="BtnMinus" CommandArgument='<%# Eval("PID") %>' CommandName="DoMinus" CssClass="btn btn-outline-secondary btn-sm me-2" runat="server" Text="-" />
                            <asp:TextBox ID="txtQty" runat="server" CssClass="form-control form-control-sm text-center" Style="width: 50px;" Text='<%# Eval("Qty") %>'></asp:TextBox>
                            <asp:Button ID="BtnPlus" CommandArgument='<%# Eval("PID") %>' CommandName="DoPlus" CssClass="btn btn-outline-secondary btn-sm ms-2" runat="server" Text="+" />
                        </div>
                        <!-- Subtotal and Remove -->
                        <div class="d-flex justify-content-between align-items-center">
                            <asp:Button 
                                CommandArgument='<%# Eval("CartID") %>' 
                                CommandName="RemoveThisCart" 
                                ID="btnRemoveCart" 
                                CssClass="btn btn-danger btn-sm" 
                                runat="server" 
                                Text="Remove" />
                            <span class="fw-bold text-end">SubTotal: Rs. <%# Eval("SubSAmount", "{0:0.00}") %></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

                            <%--Show cart details Ending--%>
                        </div>

                        <div class="col-md-3" runat="server" id="divAmountSect">
    <div class="card shadow-sm">
        <div class="card-body">
            <!-- Price Details Header -->
            <h5 class="card-title fw-bold">Price Details</h5>
            
            <!-- Total -->
            <div class="d-flex justify-content-between">
                <label>Total</label>
                <span class="text-muted" runat="server" id="spanCartTotal"></span>
            </div>
            
            <!-- Cart Discount -->
            <div class="d-flex justify-content-between">
                <label>Cart Discount</label>
                <span class="text-success" runat="server" id="spanDiscount"></span>
            </div>
            
            <!-- Divider -->
            <hr>
            
            <!-- Cart Total -->
            <div class="d-flex justify-content-between fw-bold">
                <label>Cart Total</label>
                <span runat="server" id="spanTotal"></span>
            </div>
            
            <!-- Buy Now Button -->
            <div class="text-center mt-3">
                <asp:Button 
                    ID="btnBuyNow" 
                    CssClass="btn btn-primary w-100" 
                    runat="server" 
                    OnClick="btnBuyNow_Click" 
                    Text="BUY NOW" />
            </div>
        </div>
    </div>
</div>

                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
