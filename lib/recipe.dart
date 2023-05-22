class Recipe {
  late String label;
  late String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
    'Spaghetti and Meatballs',
    'assets/1.jpg',
    2,
    [
      Ingredient(2, 'TableSpoon', 'Salt'),
      Ingredient(10, 'cup', 'Water'),
    ]
    ),
    Recipe(
    'Tomato Soup',
    'assets/2.jpg',
    1,
    [
      Ingredient(2, 'TableSpoon', 'Salt'),
      Ingredient(5, 'cup', 'Water'),
    ]
    ),
    Recipe(
    'Grilled Cheese',
    'assets/1.jpg',
    5,
    [
      Ingredient(2, 'TableSpoon', 'Salt'),
      Ingredient(4, 'Unit', 'Water Mellon'),
      Ingredient(5, 'cup', 'Water'),
    ]
    ),
    Recipe(
    'Chocolate Chip Cookies',
    'assets/2.jpg',
    4,
    [
      Ingredient(2, 'TableSpoon', 'Salt'),
      
    ]
    ),
  ];
  
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}