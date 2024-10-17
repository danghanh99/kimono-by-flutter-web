import 'package:flutter/material.dart';

class KimonoPlanItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250, // Độ rộng của card
        height: 456,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          // image: DecorationImage(
          //   image: NetworkImage(
          //     'https://assets.airtrfx.com/media-em/aa/638e5cd56fee1_EMHero_1500x500_Tokyo2.png', // Thay bằng URL hình ảnh tương ứng
          //   ),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 250, // Độ rộng của card
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), // Bo góc top left
                  topRight: Radius.circular(15), // Bo góc top right
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
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'スタンダード☆☆☆',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '3,278円（税込）～',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '手軽に着物を体験したい、シンプルなデザインのお着物を選びたい方におすすめです',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        // Xử lý khi nhấn nút "プランを見る"
                      },
                      child: Text('プランを見る'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Màu nền cho nút
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
