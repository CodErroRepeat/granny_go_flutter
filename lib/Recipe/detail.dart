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
        // backgroundColor: Colors.transparent,
title: Text(recipe.title),
        // elevation: 0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        // ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 16),
        //     child: Icon(
        //       Icons.favorite_border,
        //       color: Colors.black,
        //     ),
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  // buildTextTitleVariation1(recipe.title),

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
                    right: -60,
                    top: 60,
                    child: Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recipe.image),
                            fit: BoxFit.scaleDown,
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
                children:
                    buildIngredients()
                    + [SizedBox(height: 16,)]
                    + buildSteps(),
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

        },
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
  
  List<Widget> buildIngredients() {
    List<Widget> widgets = [];
    widgets.add(buildTextTitleVariation2('Ingredients', false));
    recipe.ingredients.forEach((ingredient) { 
      widgets.add(buildTextSubTitleVariation1(ingredient));
    });
    return widgets;
  }

  List<Widget> buildSteps() {
    List<Widget> widgets = [];
    widgets.add(buildTextTitleVariation2('Recipe Preparation', false));
    for(int i=1; i<=recipe.steps.length; i++) {
      widgets.add(buildTextSubTitleVariation2("Step $i"));
      widgets.add(buildTextSubTitleVariation1(recipe.steps[i-1]));
    }
    return widgets;
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