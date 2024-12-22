<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="E_Shopping_Web.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdCartAmount" runat="server" />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    <asp:HiddenField ID="hdPidSizeID" runat="server" />

    <br />
  
    <div class="container py-4">
    <div class="row">
        <!-- Delivery Address Section -->
        <div class="col-lg-9">
            <div class="mb-4">
                <h3>Delivery Address</h3>
                <hr />
                <div class="mb-3">
                    <asp:Label ID="Label1" runat="server" CssClass="form-label" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label ID="Label2" runat="server" CssClass="form-label" Text="Address"></asp:Label>
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required!" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" CssClass="form-label" Text="Pin Code"></asp:Label>
                    <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required!" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label ID="Label4" runat="server" CssClass="form-label" Text="Mobile Number"></asp:Label>
                    <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required!" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Products GridView -->
            <div>
                <asp:GridView ID="gvProducts" runat="server" CssClass="table table-bordered" AutoGenerateColumns="false" Visible="false">
                    <Columns>
                        <asp:BoundField DataField="PID" HeaderText="Product ID" />
                        <asp:BoundField DataField="PName" HeaderText="Product Name" />
                        <asp:BoundField DataField="Qty" HeaderText="Quantity" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <!-- Price Details Section -->
        <div class="col-lg-3" runat="server" id="divPriceDetails">
            <div class="border-bottom mb-3 pb-3">
                <h5 class="fw-bold">Price Details</h5>
                <div class="d-flex justify-content-between">
                    <span>Cart Total</span>
                    <span class="text-muted" id="spanCartTotal" runat="server"></span>
                </div>
                <div class="d-flex justify-content-between">
                    <span>Cart Discount</span>
                    <span class="text-success" id="spanDiscount" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="d-flex justify-content-between">
                    <span>Total</span>
                    <span id="spanTotal" runat="server"></span>
                </div>
            </div>
        </div>
    </div>

    <!-- Payment Mode Section -->
    <div class="row mt-4">
        <div class="col-12">
            <h3>Choose Payment Mode</h3>
            <hr />
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-bs-toggle="tab" href="#wallets" role="tab">Wallets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#cards" role="tab">Credit/Debit Cards</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#cod" role="tab">COD</a>
                </li>
            </ul>
            <div class="tab-content p-3 border rounded-bottom">
                <div id="wallets" class="tab-pane fade show active" role="tabpanel">
                    <h5>Wallets</h5>
                    <p>Pay with popular wallets like Paytm.</p>
                    <asp:Button ID="btnPaytm" CssClass="btn btn-primary" runat="server" Text="Pay with Paytm" OnClick="btnPaytm_Click" />
                </div>
                <div id="cards" class="tab-pane fade" role="tabpanel">
                    <h5>Credit/Debit Cards</h5>
                    <p>Pay securely using your card.</p>
                </div>
                <div id="cod" class="tab-pane fade" role="tabpanel">
                    <h5>Cash on Delivery</h5>
                    <p>Choose this option to pay upon delivery.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Place Order Section -->
    <div class="row mt-4">
        <div class="col-12">
            <h5>Place Your Order</h5>
            <p>Complete your payment using our <a href="acceptedpayments" target="_blank">Accepted Payments</a> channels. Your order will be dispatched after payment confirmation.</p>
            <asp:Button ID="BtnPlaceNPay" CssClass="btn btn-info btn-lg w-100" runat="server" ValidationGroup="PaymentPage" OnClick="BtnPlaceNPay_Click" Text="Checkout &raquo;" />
        </div>
    </div>
</div>


</asp:Content>
