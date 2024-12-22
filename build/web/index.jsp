<%-- 
    Document   : index
    Created on : 8 Dec 2024, 22.57.45
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - EasyKost</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-section {
            text-align: center;
            margin-top: 80px;
        }
        .service-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin: 15px;
            text-align: center;
            background-color: #f9f9f9;
        }
        .service-card img {
            max-width: 100px;
            margin-bottom: 15px;
        }
        .service-card h5 {
            margin-bottom: 10px;
        }
        .btn-pesan {
            background-color: #56c4e3;
            color: white;
            border-radius: 5px;
            padding: 10px 20px;
            text-decoration: none;
        }
        .btn-pesan:hover {
            background-color: #E85C51;
        }
        .navbar {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">EasyKost</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Layanan</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Promo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tentang Kami</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Layanan Kebersihan EasyK        ost</h1>
        <p>Pilih layanan jasa cleaning terlengkap yang sesuai dengan kebutuhan hunian Anda</p>
    </div>

    <!-- Service Cards -->
    <div class="container text-center">
        <div class="row">
            <div class="col-md-6">
                <div class="service-card">
                    <img src="https://via.placeholder.com/100" alt="General Cleaning">
                    <h5>General Cleaning</h5>
                    <p>Mulai dari Rp65k</p>
                    <a href="User/payment.jsp" class="btn-pesan">Pesan Sekarang</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="service-card">
                    <img src="https://via.placeholder.com/100" alt="Hydro Cleaning">
                    <h5>Hydro Cleaning</h5>
                    <p>Mulai dari Rp37k</p>
                    <a href="#" class="btn-pesan">Pesan Sekarang</a>
                </div>
            </div>
 
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

