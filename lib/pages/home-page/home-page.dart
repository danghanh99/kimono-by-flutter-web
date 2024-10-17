import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/pages/home-page/components/carousel_widget.dart';
import 'package:kimono_rental_flutter_web/pages/home-page/components/plan-item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width; // Chiều rộng màn hình
    var screenHeight = screenSize.height; // Chiều cao màn hình

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover, // Đặt để ảnh bao phủ toàn bộ trang
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  width: screenWidth,
                  height: 500, // Đặt chiều cao cố định cho Container
                  child: Image.network(
                    'https://assets.airtrfx.com/media-em/aa/638e5cd56fee1_EMHero_1500x500_Tokyo2.png',
                    fit: BoxFit
                        .fitWidth, // Hoặc sử dụng BoxFit.fitWidth nếu bạn muốn giữ tỷ lệ
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      }
                    },
                    errorBuilder: (BuildContext context, Object error,
                        StackTrace? stackTrace) {
                      return Text('Failed to load image');
                    },
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'VASARAで人気の',
                      style: TextStyle(
                        fontSize: 18, // Kích thước chữ nhỏ hơn một chút
                        color: Colors.pink, // Màu hồng
                        fontWeight: FontWeight.bold, // Đậm
                      ),
                    ),
                    // Dòng chữ "オススメ着物レンタルプラン"
                    Text(
                      'オススメ着物レンタルプラン',
                      style: TextStyle(
                        fontSize: 24, // Kích thước lớn hơn
                        color: Colors.pink, // Màu hồng
                        fontWeight: FontWeight.bold, // Đậm
                      ),
                    ),
                    // Dòng chữ "今のシーズンにオススメのプランです"
                    Text(
                      '今のシーズンにオススメのプランです',
                      style: TextStyle(
                        fontSize: 16, // Kích thước vừa
                        color: Colors.black, // Màu đen
                        fontStyle: FontStyle.italic, // Chữ nghiêng
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: 800,
                  height: 500, // Đặt chiều cao cố định cho Container
                  child: Image.network(
                    'https://assets.airtrfx.com/media-em/aa/638e5cd56fee1_EMHero_1500x500_Tokyo2.png',
                    fit: BoxFit
                        .fitWidth, // Hoặc sử dụng BoxFit.fitWidth nếu bạn muốn giữ tỷ lệ
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      }
                    },
                    errorBuilder: (BuildContext context, Object error,
                        StackTrace? stackTrace) {
                      return Text('Failed to load image');
                    },
                  ),
                ),
                CarouselWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
