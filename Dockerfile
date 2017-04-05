# Dockerfile merupakan file yang berisi instruksi, konfigurasi digunakan dalam membuat Docker image.
# Referensi http://docs.docker.com/reference/builder/

# FROM adalah notasi yang merujuk pada image yang digunakan sebagai basis image. Dalam contoh ini adalah node dengan tag/versi 6.9.2
FROM node:6.9.2

# EXPOSE merupakan perintah untuk membuat lapisan yang membuka TCP port 8080
EXPOSE 8080

# COPY merupakan perintah untuk menduplikasi / copy file/direktori kedalam Docker image.
COPY server.js .

# CMD merupakan perintah yang akan dijalankan setelah container berjalan.
CMD node server.js
