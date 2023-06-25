import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<Count>().add();
      },
      child: const Icon(Icons.plus_one),
    );
  }
}
