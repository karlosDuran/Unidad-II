import 'package:donut_app_2c_duran/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    [
      "Ice Cream",
      " Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],

    [
      "Strawberry",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],

    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],

    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],

    [
      "Marzipan",
      " Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],

    [
      "Mamey",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],

    [
      "Blackberry",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],

    ["Nutella", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  // Constructor que recibe la función de callback
  DonutTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    // Widget para usar cuadrícula
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemBuilder: (context, index) {
        // Cada elemento individual
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
      },
    );
  }
}
