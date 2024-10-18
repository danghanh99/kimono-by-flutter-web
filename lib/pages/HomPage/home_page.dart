import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kimono_rental_flutter_web/pages/HomPage/components/carousel_widget.dart';
import 'package:kimono_rental_flutter_web/pages/HomPage/components/grid_plan_widget.dart';

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
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                largeImage(screenWidth),
                campionImage(),
                text1(),
                CarouselWidget(),
                text2(),
                GridPlanWidget(),
                goToPlanButton(),
                const Divider(
                  color: Colors.white, // Màu của đường kẻ
                  height: 20, // Khoảng cách từ widget trước và sau Divider
                  thickness: 3, // Độ dày của đường kẻ
                  indent: 10, // Khoảng cách bắt đầu từ bên trái
                  endIndent: 10, // Khoảng cách kết thúc từ bên phải
                ),
                footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget largeImage(double screenWidth) {
    return Container(
      color: Colors.grey,
      alignment: Alignment.topCenter,
      width: screenWidth,
      height: 350,
      child: Image.network(
        'https://assets.airtrfx.com/media-em/aa/638e5cd56fee1_EMHero_1500x500_Tokyo2.png',
        fit: BoxFit.cover,
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
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return const Text('Failed to load image');
        },
      ),
    );
  }

  Widget text1() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }

  Widget text2() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'シーン・目的別の着物選び',
            style: TextStyle(
              fontSize: 18, // Kích thước chữ nhỏ hơn một chút
              color: Colors.pink, // Màu hồng
              fontWeight: FontWeight.bold, // Đậm
            ),
          ),
          Text(
            '卒業式や成人式、結婚式への参列など用途に合わせての人気プラン',
            style: TextStyle(
              fontSize: 16, // Kích thước vừa
              color: Colors.black, // Màu đen
              fontStyle: FontStyle.italic, // Chữ nghiêng
            ),
          ),
        ],
      ),
    );
  }

  Widget campionImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        // color: Colors.grey,
        width: 600,
        height: 200,
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(20), // Bo góc để viền và ảnh đồng bộ
          child: Image.network(
            'https://assets.airtrfx.com/media-em/aa/638e5cd56fee1_EMHero_1500x500_Tokyo2.png',
            fit: BoxFit
                .cover, // Hoặc sử dụng BoxFit.fitWidth nếu bạn muốn giữ tỷ lệ
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
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Text('Failed to load image');
            },
          ),
        ),
      ),
    );
  }

  Widget goToPlanButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.pink[300], // Màu chữ trắng
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const SizedBox(
          width: 160,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Căn giữa
            children: [
              Text(
                'プラン一覧',
                style: TextStyle(
                    color: Colors.white, fontSize: 25), // Chữ màu trắng
              ),
              Icon(
                Icons.navigate_next,
                size: 30,
              ), // Biểu tượng đi tới trang tiếp theo
            ],
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Social Media Section
          Column(
            children: [
              const Text(
                'KILALA MIMONO RENTAL',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram,
                        color: Colors.pink),
                    onPressed: () {
                      // Handle Instagram link
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebookF,
                        color: Colors.blue),
                    onPressed: () {
                      // Handle Facebook link
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.xTwitter,
                        color: Colors.black),
                    onPressed: () {
                      // Handle X link
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.tiktok,
                        color: Colors.black),
                    onPressed: () {
                      // Handle TikTok link
                    },
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          // Logo Section
          const Column(
            children: [
              Text(
                'KILALA',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '気軽に美しく',
                style: TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'KIMONO RENTAL',
                style: TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          // Footer Links Section
          Column(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Terms of service'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Privacy policy'),
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          // Copyright Section
          const Text(
            'Copyright © KILALA all rights reserved.',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
