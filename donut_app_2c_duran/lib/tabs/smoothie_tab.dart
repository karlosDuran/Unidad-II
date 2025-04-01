import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

  // Lista de smoothies en venta
  final List<List<dynamic>> donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    [
      "Chocolate",
      "Krispy Kreme",
      "66",
      Colors.blue,
      "lib/images/Smoothie 1.png"
    ],
    [
      "Strawberry",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Smoothie 2.png"
    ],
    ["Banana", "Aurrerá", "24", Colors.purple, "lib/images/Smoothie 3.png"],
    ["Matcha", "Costco", "35", Colors.brown, "lib/images/Smoothie 4.png"],
    [
      "Strawberry",
      "Krispy Kreme",
      "56",
      Colors.blue,
      "lib/images/Smoothie 5.png"
    ],
    [
      "Blueberries",
      "Dunkin Donuts",
      "75",
      Colors.red,
      "lib/images/Smoothie 6.png"
    ],
    ["Orangeade", "Aurrerá", "24", Colors.purple, "lib/images/Smoothie 7.png"],
    ["Lemonade", "Costco", "40", Colors.brown, "lib/images/Smoothie 8.png"],
  ];

  // Constructor que recibe la función de callback
  SmoothieTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    // Widget para usar cuadrícula
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 16), // Ajuste en padding
      clipBehavior: Clip.antiAlias, // Evita que los elementos sobresalgan
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.64,
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
