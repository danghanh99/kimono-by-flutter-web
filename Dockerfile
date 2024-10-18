# Sử dụng image Flutter base
FROM cirrusci/flutter:stable

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép pubspec.yaml và pubspec.lock trước để cài đặt dependencies
COPY pubspec.* ./

# Cài đặt dependencies
RUN flutter pub get

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Biên dịch ứng dụng Flutter web
RUN flutter build web

# Thiết lập server để phục vụ ứng dụng
FROM nginx:alpine
COPY --from=0 /app/build/web /usr/share/nginx/html

# Mở cổng 80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
