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
    Recipe("Stuffed Paratha", "Stuffed with Joy", "images/stuffparatha.jpg", 250, 35, 6),
    Recipe("Moongdal Kichidi", "The Best Breakfast Ever ", "images/kichidi.jpg", 250, 35, 6),
    Recipe("Oats Chilla", "Chill your Day", "images/oatschilla.jpg", 250, 35, 6),
    Recipe("Veg Momo", "You ask MOre and MOre", "images/momo.jpg", 250, 35, 6),
  ];
}