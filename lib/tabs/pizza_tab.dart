import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

  // Lista de pizzas en venta
  final List<List<dynamic>> donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    [
      "Deluxe",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/Pizza 1.png",
      "4min"
    ],
    [
      "Pepperoni Fest",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Pizza 2.png",
      "4min"
    ],
    [
      "Hawaiana",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/Pizza 3.png",
      "4min"
    ],
    [
      "Five Cheese",
      "Costco",
      "95",
      Colors.brown,
      "lib/images/Pizza 4.png",
      "4min"
    ],
    [
      "Mama Meata",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/Pizza 5.png",
      "4min"
    ],
    [
      "Florentina",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Pizza 6.png",
      "4min"
    ],
    [
      "Combo 1",
      "Aurrerá",
      "84",
      Colors.purple,
      "lib/images/Pizza 7.png",
      "4min"
    ],
    ["Combo 2", "Costco", "95", Colors.brown, "lib/images/Pizza 8.png", "4min"],
  ];

  // Constructor que recibe la función de callback
  PizzaTab({super.key, required this.onAdd});

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
