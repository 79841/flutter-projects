import 'package:flutter/material.dart';
import 'package:lifecycle2/component/minus_button.dart';
import 'package:lifecycle2/component/plus_button.dart';
import 'package:lifecycle2/provider/count.dart';
import 'package:provider/provider.dart';

import 'component/count_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Count(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("did change dependencies");
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) {
      return;
    }

    // TODO: implement setState
    super.setState(fn);
    print("set state");
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CountView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                PlusButton(),
                MinusButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
