class Recipe {

  String title = "";
  String description = "";
  String image = "";
  int calories = 0;
  int carbon = 0;
  int protein = 0;
  List<String> ingredients = [];
  List<String> steps = [];

  Recipe(this.title, this.description, this.image, this.calories, this.carbon, this.protein);//, this.steps);

  Recipe.fromJson(Map<String,dynamic> json)
  {
    title = json['title'];
    description =json['description'];
    image = json['image'];
    calories = json['calories'];
    carbon = json['carbon'];
    protein = json['protein'];
    ingredients = (json['ingredients'] as List<dynamic>).map((e) => e.toString()).toList();
    steps = (json['steps'] as List<dynamic>).map((e) => e.toString()).toList();

  }
}


List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe("Whole Wheat Sandwich", "The Perfect way to Start your Day", "images/sandwich.jpg", 250, 35, 6),
    Recipe("Turmeric Milk", "The Golden Milk", "images/milk.jpg", 250, 35, 6),
    Recipe("Bengal Gram Salad", "The Best Salad Ever ", "images/salad.jpg", 250, 35, 6),
    Recipe("Almond Kheer", "Let's Boost your Day", "images/kheer.jpg", 250, 35, 6),
    Recipe("Carrot Juice", "The Healthy Drink", "images/juice.jpg", 250, 35, 6),
  ];
}