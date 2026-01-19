# Hafif bir web sunucusu kullanıyoruz
FROM nginx:alpine

# Basit bir karşılama mesajı yazalım
RUN echo "<h1>Jenkins ve Docker Calisiyor!</h1>" > /usr/share/nginx/html/index.html

# 80 portunu dışarı aç
EXPOSE 80