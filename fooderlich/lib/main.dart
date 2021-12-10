import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'Fooderlich',
          style: theme.textTheme.headline6,
        )),
        body: const Center(
            child: Text(
          'Let\'s get cooking 👩‍🍳',
        )),
      ),
    );
  }
}
