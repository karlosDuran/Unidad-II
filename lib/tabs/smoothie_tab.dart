import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd;

  // Lista de smoothies en venta
  final List<List<dynamic>> smoothiesOnSale = [
    [
      "Chocolate",
      "Krispy Kreme",
      "66",
      Colors.blue,
      "lib/images/Smoothie 1.png",
      "4min"
    ],
    [
      "Strawberry",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/Smoothie 2.png",
      "4min"
    ],
    [
      "Banana",
      "Aurrerá",
      "24",
      Colors.purple,
      "lib/images/Smoothie 3.png",
      "4min"
    ],
    [
      "Matcha",
      "Costco",
      "35",
      Colors.brown,
      "lib/images/Smoothie 4.png",
      "4min"
    ],
    [
      "Strawberry",
      "Krispy Kreme",
      "56",
      Colors.blue,
      "lib/images/Smoothie 5.png",
      "4min"
    ],
    [
      "Blueberries",
      "Dunkin Donuts",
      "75",
      Colors.red,
      "lib/images/Smoothie 6.png",
      "4min"
    ],
    [
      "Orangeade",
      "Aurrerá",
      "24",
      Colors.purple,
      "lib/images/Smoothie 7.png",
      "4min"
    ],
    [
      "Lemonade",
      "Costco",
      "40",
      Colors.brown,
      "lib/images/Smoothie 8.png",
      "4min"
    ],
  ];

  SmoothieTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      clipBehavior: Clip.antiAlias,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (context, index) {
        final smoothie = smoothiesOnSale[index];
        final price = double.tryParse(smoothie[2]) ?? 0.0;

        return DonutTile(
          donutFlavor: smoothie[0],
          donutStore: smoothie[1],
          donutPrice: smoothie[2],
          donutColor: smoothie[3],
          imageName: smoothie[4],
          donuttime: smoothie[5],
          onAdd: () => onAdd(price),
        );
      },
    );
  }
}
