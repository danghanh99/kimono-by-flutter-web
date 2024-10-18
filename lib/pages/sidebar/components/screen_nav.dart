import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/pages/HomPage/home_page.dart';
import 'package:kimono_rental_flutter_web/pages/ListPlanPage/list_plan_page.dart';
import 'package:sidebarx/sidebarx.dart';

class ScreenNav extends StatelessWidget {
  const ScreenNav({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return const HomePage(title: "home");
          case 1:
            return const ListPlanPage(title: "people");
          case 2:
            return const HomePage(title: "people");
          case 3:
            return const HomePage(title: "Favorites");
          case 4:
            return const HomePage(title: "Flutter");
          case 5:
            return const HomePage(title: "title");
          case 6:
            return const HomePage(title: "title");
          default:
            return Text(
              "404 NOT FOUND",
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}
