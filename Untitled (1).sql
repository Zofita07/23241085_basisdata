CREATE TABLE `Pelanggan` (
  `id_pelanggan` int PRIMARY KEY AUTO_INCREMENT,
  `nama_depan` varchar(255),
  `nama_tengah` varchar(255),
  `nama_belakang` varchar(255),
  `alamat` varchar(255),
  `email` varchar(255),
  `no_hp` int
);

CREATE TABLE `Kategori` (
  `id_kategori` int PRIMARY KEY AUTO_INCREMENT,
  `nama_kategori` varchar(255)
);

CREATE TABLE `Produksi` (
  `id_produksi` int PRIMARY KEY AUTO_INCREMENT,
  `kapasitas` int,
  `nama_tailor` varchar(255)
);

CREATE TABLE `Produk` (
  `id_produk` int PRIMARY KEY AUTO_INCREMENT,
  `nama_produk` varchar(255),
  `harga` decimal,
  `stok` int,
  `id_kategori` int,
  `id_pelanggan` int,
  `id_produksi` int
);

ALTER TABLE `Produk` ADD FOREIGN KEY (`id_kategori`) REFERENCES `Kategori` (`id_kategori`);

ALTER TABLE `Produk` ADD FOREIGN KEY (`id_pelanggan`) REFERENCES `Pelanggan` (`id_pelanggan`);

ALTER TABLE `Produk` ADD FOREIGN KEY (`id_produksi`) REFERENCES `Produksi` (`id_produksi`);
