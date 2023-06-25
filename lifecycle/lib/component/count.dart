import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count.dart';

class CountView extends StatefulWidget {
  const CountView({super.key});

  @override
  State<CountView> createState() => _CountViewState();
}

class _CountViewState extends State<CountView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.watch<Count>().count.toString(),
        style: const TextStyle(
          fontSize: 50.0,
        ),
      ),
    );
  }
}
