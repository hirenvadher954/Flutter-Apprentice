import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';
import 'package:recipes/recipe_detail.dart';

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
              return buildRecipeCard(
                index: index,
              );
            }),
      )),
    );
  }
}

class buildRecipeCard extends StatelessWidget {
  const buildRecipeCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 9
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RecipeDetail(recipe: Recipe.samples[index]);
            },
          ),
        );
      },
      child: Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image(
                image: AssetImage(Recipe.samples[index].imageUrl),
              ),
              SizedBox(
                height: 14.0,
              ),
              Text(Recipe.samples[index].label),
            ],
          ),
        ),
      ),
    );
  }
}
