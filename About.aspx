<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="E_Shopping_Platform.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container py-5">
  <div class="text-center mb-4">
    <h1 class="fw-bold">About Us</h1>
    <p class="text-muted">Learn more about who we are and what we do.</p>
  </div>

  <!-- Intro Section -->
  <div class="row align-items-center mb-5">
    <div class="col-md-6">
      <img src="Images/about-us.jpg" alt="About Us" class="img-fluid rounded shadow">
    </div>
    <div class="col-md-6">
      <h2 class="fw-bold">Who We Are</h2>
      <p class="text-muted">
        Welcome to <strong>EShopping</strong>, your one-stop destination for quality products at unbeatable prices. 
        We specialize in offering a wide variety of goods, ranging from the latest gadgets to stylish footwear and apparel. 
        Our aim is to make your shopping experience effortless, enjoyable, and secure.
      </p>
    </div>
  </div>

  <!-- Mission and Vision Section -->
  <div class="row text-center mb-5">
    <div class="col-md-4">
      <div class="p-4 border rounded shadow-sm">
        <i class="fas fa-bullseye fs-1 text-primary"></i>
        <h4 class="mt-3">Our Mission</h4>
        <p class="text-muted">
          To provide exceptional products with top-notch customer service, ensuring every shopper finds what they love.
        </p>
      </div>
    </div>
    <div class="col-md-4">
      <div class="p-4 border rounded shadow-sm">
        <i class="fas fa-lightbulb fs-1 text-success"></i>
        <h4 class="mt-3">Our Vision</h4>
        <p class="text-muted">
          To become a leading e-commerce platform known for innovation, quality, and customer trust.
        </p>
      </div>
    </div>
    <div class="col-md-4">
      <div class="p-4 border rounded shadow-sm">
        <i class="fas fa-users fs-1 text-warning"></i>
        <h4 class="mt-3">Our Values</h4>
        <p class="text-muted">
          Integrity, innovation, and a customer-first approach drive everything we do.
        </p>
      </div>
    </div>
  </div>

  <!-- Team Section -->
  <div class="text-center mb-5">
    <h2 class="fw-bold">Meet Our Team</h2>
    <p class="text-muted">
      Dedicated professionals working behind the scenes to make your shopping experience seamless.
    </p>
  </div>
  <div class="row text-center">
    <div class="col-md-4 mb-4">
      <img src="Images/team1.jpg" alt="Team Member" class="img-fluid rounded-circle shadow" width="150">
      <h5 class="mt-3 fw-bold">John Doe</h5>
      <p class="text-muted">Founder & CEO</p>
    </div>
    <div class="col-md-4 mb-4">
      <img src="Images/team2.jpg" alt="Team Member" class="img-fluid rounded-circle shadow" width="150">
      <h5 class="mt-3 fw-bold">Jane Smith</h5>
      <p class="text-muted">Head of Marketing</p>
    </div>
    <div class="col-md-4 mb-4">
      <img src="Images/team3.jpg" alt="Team Member" class="img-fluid rounded-circle shadow" width="150">
      <h5 class="mt-3 fw-bold">Mike Johnson</h5>
      <p class="text-muted">Tech Lead</p>
    </div>
  </div>

  <!-- Call to Action -->
  <div class="text-center mt-5">
    <h3 class="fw-bold">Why Choose Us?</h3>
    <p class="text-muted">
      Whether you're searching for the latest tech or trendy fashion, we ensure quality, affordability, and satisfaction in every purchase.
    </p>
    <a href="ContactUs.html" class="btn btn-primary btn-lg mt-3">Contact Us</a>
  </div>
</div>

</asp:Content>
