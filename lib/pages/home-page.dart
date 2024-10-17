import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/pages/components/carousel_widget.dart';
import 'package:kimono_rental_flutter_web/pages/components/plan-item.dart';

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
      body: SingleChildScrollView(
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
            KimonoPlanItem(),
            CarouselWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
