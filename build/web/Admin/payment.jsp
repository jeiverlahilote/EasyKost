<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pembayaran</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #ffffff;
            color: #000000;
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
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .btn-custom {
            background-color: #56c4e3;
            color: white;
            border: none;
        }
        .btn-custom:hover {
            background-color: #3a9cb7;
        }
    </style>
    <script>
        function showAddress(address) {
            // Mengatur teks di modal
            document.getElementById('addressDetail').innerText = address;
            // Membuka modal
            var myModal = new bootstrap.Modal(document.getElementById('addressModal'));
            myModal.show();
        }
    </script>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <div class="position-sticky">
                    <h2 class="text-center py-3 text-white">Admin Dashboard</h2>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="layanan.jsp">Layanan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="customer.jsp">Pelanggan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="orderCustomer.jsp">Pesanan Pelanggan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="payment.jsp">Pembayaran</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-red" href="../login.jsp">Keluar</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
                <h1 class="mb-4">Pembayaran</h1>

                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="card p-4">
                            <h4 class="card-title">Ringkasan Pembayaran</h4>
                            <p>Total Transaksi: <strong>15</strong></p>
                            <p>Total Jumlah: <strong>Rp 7.500.000</strong></p>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12">
                        <button class="btn btn-custom mb-3">Tambah Pemesanan</button>
                    </div>
                </div>

                <div class="table-responsive">
                    <h2>Riwayat Transaksi</h2>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama Pelanggan</th>
                                <th>ID Pesanan</th>
                                <th>Tanggal Pembayaran</th>
                                <th>Jumlah</th>
                                <th>Status</th>
                                <th>Alamat</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>ORD12345</td>
                                <td>2024-12-01</td>
                                <td>Rp 500.000</td>
                                <td><span class="badge bg-success">Selesai</span></td>
                                <td><button class="btn btn-sm btn-outline-primary" onclick="showAddress('Jl. Merdeka No. 45, Jakarta')">Lihat</button></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>ORD12346</td>
                                <td>2024-12-03</td>
                                <td>Rp 750.000</td>
                                <td><span class="badge bg-warning">Menunggu</span></td>
                                <td><button class="btn btn-sm btn-outline-primary" onclick="showAddress('Jl. Sudirman No. 17, Bandung')">Lihat</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <!-- Modal untuk Menampilkan Alamat -->
    <div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="addressModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addressModalLabel">Detail Alamat</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p id="addressDetail">Alamat akan ditampilkan di sini.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
