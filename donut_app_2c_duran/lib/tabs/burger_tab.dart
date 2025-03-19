import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  final List donutsOnSale = [
    //[donutFlavor,donutPrice,donutColor,ImageName]
    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Dunkin's",
      "45",
      Colors.pink,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Krispy Kreme",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    ["Choco", "Dunkin's", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    [
      "Crema de nata",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "fresas con crema",
      "Dunkin's",
      "45",
      Colors.pink,
      "lib/images/strawberry_donut.png"
    ],
    [
      "unicornio",
      "Krispy Kreme",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    [
      "peanut butter",
      "Dunkin's",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
  ];
  BurgerTab({super.key});
  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadicula
    return GridView.builder(
        //cuantos elementos hay en la regilla
        itemCount: donutsOnSale.length,
        //espacio entre texto
        padding: EdgeInsets.all(12),
        //Prepa 1. como se distuibiran los elementos
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //crosaxis en una fila el eje crusado es el vertical
            crossAxisCount: 2,
            //relacion de aspecto(Proporcion)
            childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          //cada elemento individual
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          );
        });
  }
}
