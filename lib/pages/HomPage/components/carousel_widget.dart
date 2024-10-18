import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> imageList = List.generate(
    20,
    (index) => 'https://via.placeholder.com/600x400?text=Image+${index + 1}',
  );

  CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = List.generate(
      20,
      (index) =>
          'https://cdn.webshopapp.com/shops/336806/files/401330788/image.jpg',
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 220, // Đặt chiều cao của carousel (có thể điều chỉnh nếu cần)
          viewportFraction: 0.2, // Hiển thị 20% màn hình cho mỗi ảnh
          enableInfiniteScroll: true, // Bật tính năng vòng lặp
          autoPlay: true, // Tự động chạy
          autoPlayInterval:
              const Duration(seconds: 4), // Thời gian giữa mỗi lần di chuyển
        ),
        items: imgList
            .map((item) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: 200, // Đặt chiều rộng cho container
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(
                      item,
                      fit: BoxFit.cover, // Giữ tỷ lệ 1:1 và lấp đầy container
                      width: 200,
                      height: 200,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
