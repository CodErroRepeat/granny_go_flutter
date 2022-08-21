class Recipe {

  String title;
  String description;
  String image;
  int calories;
  int carbon;
  int protein;

  Recipe(this.title, this.description, this.image, this.calories, this.carbon, this.protein);

}

List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe("Whole Wheat Bread Sandwich", "The Perfect Way to Start Your Day", "Images/sandwich.jpg", 250, 35,6),
    Recipe("Stuffed Paratha", "Stuffed with Joy", "images/stuffparatha.jpg", 250, 35, 6),
    Recipe("Moongdal Kichidi", "The Best Breakfast Ever ", "images/kichidi.jpg", 250, 35, 6),
    Recipe("Oats Chilla", "Chill your Day", "images/oatschilla.jpg", 250, 35, 6),
    Recipe("Veg Momo", "You ask MOre and MOre", "images/momo.jpg", 250, 35, 6),
  ];
}