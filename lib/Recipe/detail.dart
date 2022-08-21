import 'package:flutter/material.dart';
import 'constants.dart';
import 'shared.dart';
import 'data.dart';

class Detail extends StatelessWidget {

  final Recipe recipe;

  Detail({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  buildTextTitleVariation1(recipe.title),

                  buildTextSubTitleVariation1(recipe.description),

                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),

            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      buildTextTitleVariation2('Nutritions', false),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.calories, "Calories", "Kcal"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.carbon, "Carbo", "g"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.protein, "Protein", "g"),

                    ],
                  ),

                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recipe.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  buildTextTitleVariation2('Ingredients', false),

                  buildTextSubTitleVariation1("Wheat Bread"),
                  buildTextSubTitleVariation1("Vegetables:"),
                  buildTextSubTitleVariation1("Onion"),
                  buildTextSubTitleVariation1("Tomato"),
                  buildTextSubTitleVariation1("Boiled Potato"),
                  buildTextSubTitleVariation1("Carrot"),
                  buildTextSubTitleVariation1("Butter"),
                  buildTextSubTitleVariation1("Salt"),
                  buildTextSubTitleVariation1("Chilli Powder"),

                  SizedBox(height: 16,),

                  buildTextTitleVariation2('Recipe Preparation', false),

                  buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1("Heat the oil and saute all the vegetables."),

                  buildTextSubTitleVariation1("STEP 2"),
                  buildTextSubTitleVariation1("After sauting, put some salt and chilli powder. Cook for 15 mins"),

                  buildTextSubTitleVariation1("STEP 3"),
                  buildTextSubTitleVariation1("Take two slices of bread and transfer veggies between the bread."),

                  buildTextSubTitleVariation1("STEP 4"),
                  buildTextSubTitleVariation1("Smear the Butter and Toast on both sides."),

                  buildTextSubTitleVariation1("STEP 5"),
                  buildTextSubTitleVariation1("Enjoy your Breakfast!!!"),

                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        backgroundColor: kPrimaryColor,
        icon: Icon(
          Icons.play_circle_fill,
          color: Colors.white,
          size: 32,
        ),
        label: Text(
          "Watch Video",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }

  Widget buildNutrition(int value, String title, String subTitle){
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(
            width: 20,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }

  buildTextSubTitleVariation3(String description, buildTextSubTitleVariation4, buildTextSubTitleVariation5, buildTextSubTitleVariation6) {}

}