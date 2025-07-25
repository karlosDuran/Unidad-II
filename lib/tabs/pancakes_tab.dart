import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

  // Lista de pancakes en venta
  final List<List<dynamic>> donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    [
      "Strawberry",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/pancake1.png",
      "4min"
    ],
    [
      "Blueberries",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/pancake2.png",
      "4min"
    ],
    [
      "Whipped cream",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/pancake3.png",
      "4min"
    ],
    ["Nature", "Costco", "95", Colors.brown, "lib/images/pancake4.png", "4min"],
    [
      "Sweet combination",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/pancake5.png",
      "4min"
    ],
    [
      "Chocolate",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/pancake6.png",
      "4min"
    ],
    [
      "Crepe",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/pancake7.png",
      "4min"
    ],
    [
      "Super Honey",
      "Costco",
      "95",
      Colors.brown,
      "lib/images/pancake8.png",
      "4min"
    ],
  ];

  // Constructor que recibe la función de callback
  PancakesTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    // Widget para usar cuadrícula
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (context, index) {
        // Cada elemento individual
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          donuttime: donutsOnSale[index][5],
          onAdd: () {
            // Llama a la función de callback y pasa el precio
            onAdd(double.parse(donutsOnSale[index][2]));
          },
        );
      },
    );
  }
}
