import 'package:flutter/material.dart';
import 'package:webview/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      home: HomeScreen(),
    ),
  );
}
