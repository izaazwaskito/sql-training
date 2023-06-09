-- CREATE TABLE plat_kendaraan(nomor_plat SERIAL PRIMARY KEY,
-- name_kendaraan VARCHAR NOT NULL, warna_kendaraan VARCHAR NOT NULL);

-- CREATE TABLE pembeli(id_ktp SERIAL PRIMARY KEY,
-- nama_pemilik VARCHAR NOT NULL, nomor_plat INT NOT NULL);

-- INSERT INTO plat_kendaraan(nomor_plat, name_kendaraan, warna_kendaraan)
-- VALUES (1,'Aerox New Connected', 'Silver');
-- INSERT INTO pembeli(id_ktp, nama_pemilik, nomor_plat)
-- VALUES (65231, 'Izaaz', 1);

-- SELECT plat_kendaraan.nomor_plat, pembeli.nama_pemilik, plat_kendaraan.name_kendaraan, plat_kendaraan.warna_kendaraan
-- FROM plat_kendaraan
-- INNER JOIN pembeli ON plat_kendaraan.nomor_plat=pembeli.nomor_plat;

-- CREATE TABLE kendaraan(kode_kendaraan SERIAL PRIMARY KEY, nama_kendaraan VARCHAR NOT NULL, warna_kendaraan VARCHAR NOT NULL);
-- CREATE TABLE pemilik_kendaraan(kode_rangka SERIAL PRIMARY KEY, nama_pemilik VARCHAR NOT NULL, tanggal_terima DATE, kode_kendaraan INT NOT NULL);
-- INSERT INTO kendaraan(kode_kendaraan, nama_kendaraan, warna_kendaraan)
-- VALUES (665, 'Aerox New Connected', 'Hitam'), (204, 'Nmax Old', 'Silver');
-- INSERT INTO pemilik_kendaraan(kode_rangka, nama_pemilik, tanggal_terima, kode_kendaraan)
-- VALUES (625172665, 'Izaaz Waskito', '2022-11-11',665), (525172204, 'Rizki Febian', '2019-03-21', 204);
-- INSERT INTO pemilik_kendaraan(kode_rangka, nama_pemilik, tanggal_terima, kode_kendaraan)
-- VALUES (223172665, 'Evan', '2023-09-16',665), (525172665, ' Nerxx', '2023-01-01', 665);

-- SELECT kendaraan.kode_kendaraan, pemilik_kendaraan.nama_pemilik, kendaraan.nama_kendaraan, pemilik_kendaraan.tanggal_terima, pemilik_kendaraan.kode_kendaraan
-- FROM kendaraan
-- INNER JOIN pemilik_kendaraan ON kendaraan.kode_kendaraan=pemilik_kendaraan.kode_kendaraan;

-- CREATE TABLE pemilik_kendaraan(kode_rangka SERIAL PRIMARY KEY, nama_pemilik VARCHAR NOT NULL, tanggal_terima DATE, kode_kendaraan INT NOT NULL);
-- CREATE TABLE detail_pembelian(kode_rangka INT NOT NULL, nama_sales VARCHAR NOT NULL, kode_pembelian SERIAL PRIMARY KEY);
-- CREATE TABLE keterangan_pembelian(kode_pembelian INT NOT NULL, deskripsi_pembelian VARCHAR NOT NULL);

-- INSERT INTO pemilik_kendaraan(kode_rangka, nama_pemilik, tanggal_terima, kode_kendaraan)
-- VALUES (625172665, 'Izaaz Waskito', '2022-11-11',665), (525172204, 'Rizki Febian', '2019-03-21', 204);
-- INSERT INTO detail_pembelian(kode_rangka, nama_sales, kode_pembelian)
-- VALUES (625172665, 'Rohmano', 1), (525172204, 'Wawan', 2);
-- INSERT INTO keterangan_pembelian(kode_pembelian,deskripsi_pembelian)
-- VALUES (1, 'CASH'), (2,'KREDIT');

-- SELECT pemilik_kendaraan.kode_rangka, pemilik_kendaraan.nama_pemilik, detail_pembelian.nama_sales, detail_pembelian.kode_pembelian, keterangan_pembelian.deskripsi_pembelian
-- FROM pemilik_kendaraan
-- INNER JOIN detail_pembelian ON pemilik_kendaraan.kode_rangka = detail_pembelian.kode_rangka
-- INNER JOIN keterangan_pembelian ON detail_pembelian.kode_pembelian = keterangan_pembelian.kode_pembelian;