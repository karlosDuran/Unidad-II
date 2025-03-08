import 'package:donut_app_2c_duran/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Krispy kreme",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    ["Choco", "Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  DonutTab({super.key});

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
