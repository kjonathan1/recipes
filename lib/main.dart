import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';
import 'recipe_details.dart';

void main(List<String> args) {
  return runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: "Recipe Calculator",
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
      )),
      home: const MyHomePage(title: "Recipe Calculator"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({title = "", super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipe Calculators")),
      body: SafeArea(
          child: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RecipeDetails(recipe: Recipe.samples[index],);
              }));
            },
            child: buildRecipeCard(Recipe.samples[index]),
          );
        },
      )),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
        Image(
          image: AssetImage(recipe.imageUrl),
        ),
        const SizedBox(height: 14.0,),
        Text(recipe.label, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, fontFamily: 'Palatino'),),
      ]),
        )
    );
  }
}
