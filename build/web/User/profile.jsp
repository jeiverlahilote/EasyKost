<%-- 
    Document   : profile
    Created on : 8 Dec 2024, 23.41.01
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #ffffff;
        }
        .sidebar {
            background-color: #56c4e3;
            height: 100vh;
        }
        .nav-link {
            color: white;
        }
        .nav-link.active {
            background-color: #3a9cb7;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <div class="position-sticky">
                    <h2 class="text-center py-3 text-white">User Dashboard</h2>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="profile.jsp">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="riwayatPesanan.jsp">Riwayat Pesanan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="exploreProduk.jsp">Explore Produk</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../login.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
                <h1>Profile</h1>
                <p>Welcome to your profile page! User details will go here.</p>
            </main>
        </div>
    </div>
</body>
</html>

