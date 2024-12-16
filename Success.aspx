<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="E_Shopping_Web.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Placed</title>
    <link href="Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <div class="container">
                <div class="center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    
                    <h1>Congrats! Order Placed Successfully...</h1>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Font-Size="Large" Text="Back To Products" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
