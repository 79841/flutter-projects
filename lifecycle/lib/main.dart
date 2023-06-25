import 'package:flutter/material.dart';
import 'package:lifecycle/provider/count.dart';
import 'package:provider/provider.dart';

import 'component/button.dart';
import 'component/count.dart';

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
  // int count = 0;
  int num = 0;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2), () {
      num += 1;
    });
    super.initState();
    print("init state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("change dependecies");
    print(MediaQuery.of(context).size);
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("set state");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
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
              children: [
                Button(
                  fn: () {
                    context.read<Count>().add();
                  },
                  icon: const Icon(Icons.plus_one),
                ),
                Button(
                  fn: () {
                    context.read<Count>().sub();
                  },
                  icon: const Icon(Icons.exposure_minus_1),
                )
              ],
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       count += 1;
        //     });
        //   },
        //   child: const Icon(Icons.plus_one),
        // ),
      ),
    );
  }
}
