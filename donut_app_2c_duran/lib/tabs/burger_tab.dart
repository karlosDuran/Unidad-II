import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

  final List donutsOnSale = [
    //[donutFlavor,donutPrice,donutColor,ImageName]

    [
      "Burger Spot",
      " Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/Hamburguesa 1.png"
    ],

    [
      "Burger Box",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Hamburguesa 2.png"
    ],

    [
      "Burger House",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/Hamburguesa 3.png"
    ],

    [
      "Grill Master",
      "Costco",
      "95",
      Colors.brown,
      "lib/images/Hamburguesa 4.png"
    ],

    [
      "Burger Heaven",
      " Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/Hamburguesa 5.png"
    ],

    [
      "Burgerlicious",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Hamburguesa 6.png"
    ],

    [
      "Burger Express",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/Hamburguesa 7.png"
    ],

    [
      "Burger Bliss",
      "Costco",
      "95",
      Colors.brown,
      "lib/images/Hamburguesa 8.png"
    ],
  ];
  BurgerTab({super.key, required this.onAdd});
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
            onAdd: () {
              // Llama a la función de callback y pasa el precio
              onAdd(double.parse(donutsOnSale[index][2]));
            },
          );
        });
  }
}
