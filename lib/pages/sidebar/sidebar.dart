import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/consts/consts.dart';
import 'package:kimono_rental_flutter_web/pages/SideBar/components/item_sidebar.dart';
import 'package:kimono_rental_flutter_web/pages/SideBar/components/screen_nav.dart';
import 'package:sidebarx/sidebarx.dart';

class CustomSidebar extends StatelessWidget {
  CustomSidebar({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SidebarX Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: AppColors.canvasColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;
          return Scaffold(
            key: _key,
            drawer: ItemSidebarX(
              controller: _controller,
              isSmall: isSmallScreen,
            ),
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
                Row(
                  children: [
                    if (!isSmallScreen)
                      ItemSidebarX(
                        controller: _controller,
                        isSmall: isSmallScreen,
                      ),
                    Expanded(
                      child: Center(
                        child: ScreenNav(
                          controller: _controller,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
