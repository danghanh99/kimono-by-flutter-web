import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF685BFF);
  static const Color canvasColor = Color(0xFF2E2E48);
  static const Color scaffoldBackgroundColor = Color(0xFF464667);
  static const Color accentCanvasColor = Color(0xFF3E3E61);
  static const Color white = Colors.white;

  // Những biến không thể là const vì sử dụng withOpacity()
  static final Color actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
  static final Divider divider =
      Divider(color: white.withOpacity(0.3), height: 1);
}
