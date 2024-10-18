import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/pages/HomPage/components/plan_item.dart';

class GridPlanWidget extends StatelessWidget {
  final List<String> imageList = List.generate(
    6,
    (index) =>
        'https://cdn.webshopapp.com/shops/336806/files/401330788/image.jpg', // Thay đổi link nếu cần
  );

  GridPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 0), // Bỏ padding ngoài GridView
      child: SizedBox(
        width: 900,
        height: 650,
        // color: Colors.grey,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(), // Ngăn không cho cuộn
          shrinkWrap: true, // Giúp GridView co lại theo kích thước của các item
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 cột
            childAspectRatio: 2.2, // Tỷ lệ của mỗi ô
            crossAxisSpacing: 0.0, // Khoảng cách giữa các cột (bỏ khoảng cách)
            mainAxisSpacing: 10.0, // Khoảng cách giữa các hàng (bỏ khoảng cách)
          ),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return const KimonoPlanItem(); // Item không có margin hoặc padding ngoài
          },
        ),
      ),
    );
  }
}
