import 'dart:io';

import 'package:flutter/material.dart';

class FontStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );
}

class PlatformPadding {
  static EdgeInsetsGeometry getPadding(BuildContext context) {
    if (Platform.isAndroid) {
      // Apply Android padding
      return const EdgeInsets.symmetric(horizontal: 10, vertical: 0);
    } else if (Platform.isIOS) {
      // Apply iOS padding
      return const EdgeInsets.symmetric(horizontal: 20, vertical: 0);
    } else {
      // Apply default padding for other platforms
      return EdgeInsets.zero;
    }
  }
}
