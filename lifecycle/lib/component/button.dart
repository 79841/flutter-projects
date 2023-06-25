import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count.dart';

class Button extends StatelessWidget {
  final VoidCallback fn;
  final Icon icon;
  const Button({required this.icon, required this.fn, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<Count>().add();
      },
      child: icon,
    );
  }
}
