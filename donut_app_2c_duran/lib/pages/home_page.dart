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
            actions: const [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
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
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab()
              ]),
            )
            //Carrito(Cart)
          ])),
    );
  }
}
