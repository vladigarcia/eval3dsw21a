import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  // Esta función muestra el Snackbar
  void _mostrarSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Este es el mensaje de Snackbar: Hola Mundo'),
      backgroundColor: Colors.blue, // Cambia el color de fondo del Snackbar
      action: SnackBarAction(
        label: 'Deshacer',
        onPressed: () {
          // Acción a realizar cuando se pulsa el botón de "Deshacer"
          // Puedes agregar tu lógica personalizada aquí.
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