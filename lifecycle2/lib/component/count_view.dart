import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count.dart';

class CountView extends StatelessWidget {
  const CountView({super.key});

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
