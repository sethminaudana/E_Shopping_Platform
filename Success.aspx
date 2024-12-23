<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="E_Shopping_Web.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Placed</title>
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
   <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
       -->
    <link rel="stylesheet" href="Bootstrap 5/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
           <div class="container text-center my-5">
    <div class="py-5">
        <h1 class="display-4 text-success">🎉 Congrats! Order Placed Successfully 🎉</h1>
        <p class="lead mt-3">Thank you for shopping with us. Your order has been placed successfully and is being processed.</p>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg mt-4" Text="Back to Products" OnClick="Button1_Click" />
    </div>
</div>

        </div>
        </div>
    </form>
</body>
</html>
