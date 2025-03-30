import 'package:donut_app_2c_duran/pages/auth/profile_page.dart';
import 'package:donut_app_2c_duran/tabs/burger_tab.dart';
import 'package:donut_app_2c_duran/tabs/donut_tab.dart';
import 'package:donut_app_2c_duran/tabs/pancakes_tab.dart';
import 'package:donut_app_2c_duran/tabs/pizza_tab.dart';
import 'package:donut_app_2c_duran/tabs/smoothie_tab.dart';
import 'package:donut_app_2c_duran/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variables para items y costo
  int itemCount = 0;
  double totalCost = 0;
  void addItem(double price) {
    setState(() {
      itemCount++;
      totalCost += price; // Suma el precio al total
    });
  }

  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Icon(Icons.menu, color: Colors.grey[800]),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                  child: const Icon(Icons.person),
                ),
              )
            ],
          ),
          body: Column(children: [
            //Tesxto principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                        //Tamaño de letra
                        fontSize: 32,

                        //Negritas
                        fontWeight: FontWeight.bold,

                        //Subrayado
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),

            //Pestañas(Tapbar)
            TabBar(tabs: myTabs),

            //Contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(onAdd: addItem),
                BurgerTab(onAdd: addItem),
                SmoothieTab(onAdd: addItem),
                PancakesTab(onAdd: addItem),
                PizzaTab(onAdd: addItem)
              ]),
            ),

            //Carrito(Cart)
            Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                //como se llama el widget que pone las cosas de manera horizontal

                child: Row(
                    //alinea a los extremos
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          //alinear horizontalmente una columna
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$itemCount Items | \$${totalCost.toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const Text(
                              "Delivery Chargers Included",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12)),
                        child: const Row(
                          children: [
                            Icon(Icons.shopping_cart, color: Colors.white),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'View Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ]))
          ])),
    );
  }
}
