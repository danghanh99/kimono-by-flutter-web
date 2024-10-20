import 'package:flutter/material.dart';

class KimonoPlanItem extends StatelessWidget {
  const KimonoPlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Không có padding hoặc margin ngoài
      // color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200, // Độ rộng của card
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), // Bo góc top left
                bottomLeft: Radius.circular(15), // Bo góc top right
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://assets.airtrfx.com/media-em/aa/638e5cd56fee1_EMHero_1500x500_Tokyo2.png', // Thay bằng URL hình ảnh tương ứng
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 200, // Độ rộng của card
            height: 200,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15), // Bo góc top left
                bottomRight: Radius.circular(15), // Bo góc top right
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'スタンダード☆☆☆',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '3,278円（税込）～',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '手軽に着物を体験したい、シンプルなデザインのお着物を選びたい方におすすめです',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Xử lý khi nhấn nút "プランを見る"
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink[300], // Màu chữ trắng
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'プランを見る',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
