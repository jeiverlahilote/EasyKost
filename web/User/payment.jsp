<%-- 
    Document   : payment
    Created on : 15 Dec 2024, 19.13.02
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pembayaran Layanan</title>
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

        .btn-custom {
            background-color: #56c4e3;
            color: white;
            border: none;
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
                            <a class="nav-link" href="profile.jsp">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="riwayatPesanan.jsp">Riwayat Pesanan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="exploreProduk.jsp">Explore Produk</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../login.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
                <h1>Explore Produk</h1>
               <div class="container">
        
        <div class="form-container">
            <h2 class="text-center mb-4">Pembayaran Layanan</h2>
            <form action="processPayment.jsp" method="post">
                <div class="mb-3">
                    <label for="nama" class="form-label">Nama Lengkap</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan nama lengkap Anda" required>
                </div>
                <div class="mb-3">
                    <label for="alamat" class="form-label">Alamat</label>
                    <textarea class="form-control" id="alamat" name="alamat" rows="3" placeholder="Masukkan alamat Anda" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="layanan" class="form-label">Pilih Layanan</label>
                    <select class="form-select" id="layanan" name="layanan" required>
                        <option value="" disabled selected>Pilih layanan</option>
                        <option value="Layanan Kebersihan">Layanan Kebersihan</option>
                        <option value="Layanan Reparasi">Layanan Reparasi</option>
                        <option value="Layanan Antar-Jemput">Layanan Antar-Jemput</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="metodePembayaran" class="form-label">Metode Pembayaran</label>
                    <select class="form-select" id="metodePembayaran" name="metodePembayaran" required>
                        <option value="" disabled selected>Pilih metode pembayaran</option>
                        <option value="Transfer Bank">Transfer Bank</option>
                        <option value="E-Wallet">E-Wallet</option>
                        <option value="Kartu Kredit">Kartu Kredit</option>
                    </select>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-custom">Bayar Sekarang</button>
                </div>
            </form>
        </div>
               </div>
            </main>
        </div>
    </div>
</body>
</html>
