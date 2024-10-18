import 'package:flutter/material.dart';
import 'package:kimono_rental_flutter_web/consts/app_colors.dart';
import 'package:sidebarx/sidebarx.dart';

class ItemSidebarX extends StatelessWidget {
  const ItemSidebarX({
    Key? key,
    required SidebarXController controller,
    required this.isSmall,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: AppColors.scaffoldBackgroundColor,
        textStyle: TextStyle(color: AppColors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: AppColors.white),
        hoverTextStyle: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [AppColors.accentCanvasColor, AppColors.canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: AppColors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.canvasColor,
        ),
      ),
      footerDivider: AppColors.divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: _controller.extended ? 200 : 70,
          width: _controller.extended ? 200 : 70,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipOval(
              child: Image.asset(
                'assets/logo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.list,
          label: 'List plan',
        ),
        const SidebarXItem(
          icon: Icons.search,
          label: 'Search booking',
        ),
        const SidebarXItem(
          icon: Icons.more_vert,
          label: 'Option',
        ),
        const SidebarXItem(
          icon: Icons.question_answer,
          label: 'Q&A',
        ),
      ],
    );
  }
}
