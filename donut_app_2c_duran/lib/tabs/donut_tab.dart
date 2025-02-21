import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"]
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //crosaxis en una fila el eje crusado es el vertical
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          //cada elemento individual
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            donutName: donutsOnSale[index][3],
          );
        });
  }
}
