import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/utils/app-routes.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  MealItem(this.meal);

  void _selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      AppRoutes.MEALS_DETAIL,
      arguments: meal,
    )
        .then(
      (result) {
        if (result == null) {
          print('Sem Resultado');
        } else {
          print('O nome da refeição é: $result');
        }
      },
    );
  }

  Widget verifyCost(String cost) {
    if (cost == 'Barato') {
      return Row(
        children: <Widget>[
          Icon(Icons.attach_money),
          SizedBox(width: 6),
          Text(meal.costText),
        ],
      );
    } else if (cost == 'Justo') {
      return Row(
        children: <Widget>[
          Icon(Icons.attach_money),
          Icon(Icons.attach_money),
          SizedBox(width: 6),
          Text(meal.costText),
        ],
      );
    } else if (cost == 'Caro') {
      return Row(
        children: <Widget>[
          Icon(Icons.attach_money),
          Icon(Icons.attach_money),
          Icon(Icons.attach_money),
          SizedBox(width: 6),
          Text(meal.costText),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          Icon(Icons.help),
          SizedBox(width: 6),
          Text(meal.costText),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageURL,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      meal.title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('${meal.duration} min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text(meal.complexityText),
                    ],
                  ),
                  verifyCost(meal.costText)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
