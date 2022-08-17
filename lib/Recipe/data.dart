class Recipe {

  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Recipe(this.title, this.description, this.image, this.calories, this.carbo, this.protein);

}

List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe("Whole Wheat Bread Sandwich", "The Perfect Way to Start Your Day", "assets/images/sandwich.jpg", 250, 35,6),
    Recipe("Stuffed Paratha", "Stuffed with Joy", "assets/images/stuffparatha.jpg", 250, 35, 6),
    Recipe("Moongdal Kichidi", "The Best Breakfast Ever ", "assets/images/kichidi.jpg", 250, 35, 6),
    Recipe("Oats Chilla", "Chill your Day", "assets/images/oatschilla.jpg", 250, 35, 6),
    Recipe("Veg Momo", "You ask MOre and MOre", "assets/images/momo.jpg", 250, 35, 6),
  ];
}