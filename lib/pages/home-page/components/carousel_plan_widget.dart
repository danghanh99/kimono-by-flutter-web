import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/pages/home-page/components/plan-item.dart';

class CarouselPlanWidget extends StatelessWidget {
  final List<String> imageList = List.generate(
    20,
    (index) => 'https://via.placeholder.com/600x400?text=Image+${index + 1}',
  );

  CarouselPlanWidget({super.key});

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
          height: 410, // Đặt chiều cao của carousel (có thể điều chỉnh nếu cần)
          viewportFraction: 0.2, // Hiển thị 20% màn hình cho mỗi ảnh
          enableInfiniteScroll: true, // Bật tính năng vòng lặp
          autoPlay: true, // Tự động chạy
          autoPlayInterval:
              const Duration(seconds: 10), // Thời gian giữa mỗi lần di chuyển
        ),
        items: imgList
            .map((item) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: 350, // Đặt chiều rộng cho container
                  child: const KimonoPlanItem(),
                ))
            .toList(),
      ),
    );
  }
}
