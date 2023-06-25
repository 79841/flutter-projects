import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count.dart';

class MinusButton extends StatelessWidget {
  const MinusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<Count>().sub();
      },
      child: const Icon(Icons.exposure_minus_1),
    );
  }
}
