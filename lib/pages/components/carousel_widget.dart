import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/pages/components/plan-item.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> imageList = List.generate(
    20,
    (index) => 'https://via.placeholder.com/600x400?text=Image+${index + 1}',
  );

  CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Chiều cao của ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Cuộn theo chiều ngang
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: KimonoPlanItem(),
          );
        },
      ),
    );
  }
}
