import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {

  void _mostrarSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('No podemos evitar que los problemas nos encuentren, pero podemos elegir cómo los enfrentamos'),
      backgroundColor: Colors.blue, // Cambia el color de fondo del Snackbar
      action: SnackBarAction(
        label: 'Deshacer',
        onPressed: () {

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
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