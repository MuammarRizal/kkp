# RUN FILE

- git clone https://github.com/MuammarRizal/kkp.git
- cd kkp
- npm install
- npm start

# Status Code HTTP

## 2xx: Sukses

- **200 OK:** Permintaan berhasil diproses. (**✓** Berhasil!)
- **201 Created:** Permintaan berhasil dibuat. (**✨** Dibuat!)
- **204 No Content:** Permintaan berhasil diproses, tetapi tidak ada konten yang dikembalikan. (\*\*\*\* Tidak Ada Konten)

## 4xx: Kesalahan Klien

- **400 Bad Request:** Permintaan tidak valid. (**⚠️** Permintaan Salah!)
- **401 Unauthorized:** Akses ditolak karena autentikasi gagal. (\*\*\*\* Autentikasi Gagal!)
- **403 Forbidden:** Akses ditolak karena izin tidak mencukupi. (**⛔️** Terlarang!)
- **404 Not Found:** Sumber daya yang diminta tidak ditemukan. (**‍♀️** Tidak Ditemukan!)

## 5xx: Kesalahan Server

- **500 Internal Server Error:** Terjadi kesalahan internal pada server. (\*\*\*\* Kesalahan Server!)
- **502 Bad Gateway:** Server tidak menerima respons yang valid dari server upstream. (**‍** Gateway Buruk!)
- **503 Service Unavailable:** Server sedang tidak tersedia. (\*\*\*\* Layanan Tidak Tersedia!)
