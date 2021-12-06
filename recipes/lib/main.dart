import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calclulator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
      )),
      home: MyHomePage(
        title: 'Recipe Calclulator',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: Container(
        child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(Recipe.samples[index].imageUrl),
                    ),
                    Text(Recipe.samples[index].label),
                  ],
                ),
              );
            }),
      )),
    );
  }
}
