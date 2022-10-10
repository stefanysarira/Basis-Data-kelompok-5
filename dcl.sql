
#Dcl

# Membuat user baru yaitu dosen dan mahasiswa, lalu set passwordnya
CREATE USER 'DosenTeknik'@'localhost' IDENTIFIED BY 'teknikBersatu';
CREATE USER 'Mahasiswa'@'localhost' IDENTIFIED BY 'Mahasiswa_';

# Memberi semua hak akses ke user
GRANT ALL PRIVILEGES ON *.*  to 'DosenTeknik'@'localhost';
GRANT ALL PRIVILEGES On *.*  to 'Mahasiswa'@'localhost';

# Memberi akses tertentu (contohnya akses SELECT) kepada semua user
GRANT SELECT 
ON kelompok5
TO '*'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'DosenTeknik'@'localhost';

# Menghapus hak akses user
REVOKE CREATE, DROP 
ON kelompok5
TO 'DosenTeknik'@'localhost';

# Menghapus akses tertentu (contohnya akses DROP) kepada semua user
REVOKE DROP  
ON kelompok5
TO '*'@'localhost';
