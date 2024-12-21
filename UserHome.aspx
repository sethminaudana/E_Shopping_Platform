<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="E_Shopping_Platform.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-3">
     <asp:Label ID="lbl1" runat="server" CssClass ="text-success" Text=""></asp:Label>
        </div>
                 <div class="row ">
     <div class="col-lg-4">
         <img class="img-circle mt-2 mb-2 " src="Images/iphone11.jpeg" alt="thumb" width="200" height="140" />
         <h2>
             Mobiles</h2>
         <p>
             Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
             design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
             that is water-resistant up to 2 meters for 30 minutes....</p>
              <a href="#">View More &raquo;</a>
     </div>
                 <br />
     <div class="col-lg-4" >
         <img class="img-circle mt-2 mb-2" src="Images/Shoes.jpeg" alt="thumb" width="200" height="140" />
         <h2>
             Footwear</h2>
         <p>
             Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
             design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
             that is water-resistant up to 2 meters for 30 minutes....</p>
                    <a  href="#">View More &raquo;</a>
     </div>
     <div class="col-lg-4">
         <img class="img-circle mt-2 mb-2 " src="Images/tshirt.jpeg" alt="thumb" width="200" height="140" />
         <h2>
             Clothings</h2>
         <p>
             Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
             design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
             that is water-resistant up to 2 meters for 30 minutes....</p>
                     <a href="#" >View More &raquo;</a>
     </div>
 </div>
            <br />
     <h1 class="text-center">
         BLACK FRIDAY DEAL</h1>
    
         <div class="row" >
             <asp:Repeater ID="rptrProducts" runat="server">
                 <ItemTemplate>
                     <div class="col-md-4 mb-4 ">
                         <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                             <div>
                                 <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                     alt="<%# Eval("ImageName") %>" width="300px" height="300px" class="p-1" />
                                 <div class="caption">
                                     <div class="probrand">
                                         <%# Eval ("BrandName") %>
                                     </div>
                                     <div class="proName">
                                         <%# Eval ("PName") %>
                                     </div>
                                     <div class="proPrice">
                                         <span class="progPrice">
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
     
     <div class="opacity-25 text-center m-3">
         Buy 50 mobiles and get a gift card</div>

            <hr style="margin-right:100px" />
<div class="position-relative" border: 1px solid #ddd;">
    <p class="position-absolute bottom-0 end-0 m-2">
        <button class="btn-info" href="#">Back to top</button>
    </p>
</div>
   
</asp:Content>
