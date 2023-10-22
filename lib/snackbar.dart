import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  void _mostrarSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        'No podemos evitar que los problemas nos encuentren, pero podemos elegir cómo los enfrentamos',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      backgroundColor: Colors.blue, // Cambia el color de fondo del Snackbar
      elevation: 6, // Agrega una sombra
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'Deshacer',
        textColor: Colors.yellow,
        onPressed: () {
          // Agrega la lógica de deshacer aquí
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
        backgroundColor: Colors.blue, // Cambia el color de fondo de la AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Cambia el color del botón
                onPrimary: Colors.white, // Cambia el color del texto del botón
                elevation: 5, // Agrega una sombra al botón
              ),
              onPressed: () {
                // Llama a la función para mostrar el Snackbar
                _mostrarSnackbar(context);
              },
              child: Text('Mostrar Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
