import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

  // Lista de pizzas en venta
  final List<List<dynamic>> donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Deluxe", "Krispy Kreme", "36", Colors.blue, "lib/images/Pizza 1.png"],
    [
      "Pepperoni Fest",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Pizza 2.png"
    ],
    ["Hawaiana", "Aurrerá", "84", Colors.purple, "lib/images/Pizza 3.png"],
    ["Five Cheese", "Costco", "95", Colors.brown, "lib/images/Pizza 4.png"],
    ["Mama Meata", "Krispy Kreme", "36", Colors.blue, "lib/images/Pizza 5.png"],
    ["Florentina", "Dunkin Donuts", "45", Colors.red, "lib/images/Pizza 6.png"],
    ["Combo 1", "Aurrerá", "84", Colors.purple, "lib/images/Pizza 7.png"],
    ["Combo 2", "Costco", "95", Colors.brown, "lib/images/Pizza 8.png"],
  ];

  // Constructor que recibe la función de callback
  PizzaTab({super.key, required this.onAdd});

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
