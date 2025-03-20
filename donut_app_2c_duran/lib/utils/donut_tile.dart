import 'package:flutter/material.dart';

// Clase DonutTile que extiende StatelessWidget
class DonutTile extends StatelessWidget {
  final String donutFlavor; // Sabor de la dona
  final String donutStore; //lugar de la dona
  final String donutPrice; // Precio de la dona
  final dynamic donutColor; // Color de la dona (dato dinámico)
  final String imageName; // Nombre de la imagen de la dona
  final Function onAdd; // Callback para agregar al carrito
  // Constructor de la clase DonutTile
  const DonutTile({
    super.key,
    required this.donutFlavor, // Sabor de la dona requerido
    required this.donutStore,
    required this.donutPrice, // Precio de la dona requerido
    this.donutColor, // Color de la dona opcional
    required this.imageName,
    required this.onAdd, // Recibe la función como parámetro
  }); // Nombre de la imagen requerido

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
          12.0), // Espaciado alrededor del contenedor, entre los contenedorres
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], // Color de fondo del contenedor
            borderRadius: BorderRadius.circular(24)), // Bordes redondeados
        child: Column(
          children: <Widget>[
            // Etiqueta de precio
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Alinea el contenido a la derecha
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[
                        100], // Color de fondo de la etiqueta de precio
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(
                          24), // Esquina superior derecha redondeada
                      bottomLeft: Radius.circular(
                          24), // Esquina inferior izquierda redondeada
                      topLeft: Radius.circular(
                          0), // Esquina superior izquierda no redondeada
                      bottomRight: Radius.circular(
                          0), // Esquina inferior derecha no redondeada
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 18), // Espaciado interno
                  child: Text('\$ $donutPrice', // Muestra el precio de la dona
                      style: TextStyle(
                          fontWeight: FontWeight.bold, // Texto en negrita
                          fontSize: 18, // Tamaño de fuente
                          color: donutColor[800])), // Color del texto
                )
              ],
            ),
            // Imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 24), // Espaciado alrededor de la imagen
              child: Image.asset(imageName), // Carga la imagen de la dona
            ),
            // Texto del sabor de la dona (se puede agregar aquí)
            Text(donutFlavor,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

            //espacio entre textos
            const SizedBox(
              height: 4,
            ),
            //TODO: agregar texto de la tienda, pasar a comprar mota
            Text(donutStore,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 16)),
            // Icono de amor + palabr "add" (se puede agregar aquí) usando un row
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                  ),
                  GestureDetector(
                    onTap: () {
                      onAdd(); // Llama a la función para agregar al carrito
                    },
                    child: Text(
                      "add",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            )
            //b
          ],
        ),
      ),
    );
  }
}
