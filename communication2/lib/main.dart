import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: getNaverPageSource,
            child: const Text("Click!!"),
          ),
        ),
      ),
    );
  }

  Future<void> getNaverPageSource() async {
    final url = Uri.parse("https://www.naver.com");
    final response = await http.get(url);
    print(response.body);
  }
}
