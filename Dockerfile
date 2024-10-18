# Bắt đầu từ một image Ubuntu
FROM ubuntu:20.04

# Cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

# Tải và cài đặt Flutter SDK
RUN git clone https://github.com/flutter/flutter.git /flutter \
    && /flutter/bin/flutter doctor

# Thiết lập biến môi trường
ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:${PATH}"

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
