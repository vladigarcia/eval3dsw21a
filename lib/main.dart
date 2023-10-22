import 'package:flutter/material.dart';
import 'expansionpanel.dart';
import 'snackbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/expansionpanel': (context) => ExpansionPanelExample(),
        '/snackbar': (context) => Snackbar(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eval3'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          '¡Bienvenido a mi aplicación!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Eduardo Vladimir Garcia Mestizo'),
            accountEmail: Text('garciavladi34@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.catching_pokemon_sharp),
            ),
          ),
          ListTile(
            leading: Icon(Icons.expand_less_sharp),
            title: Text('Expansion Panel'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/expansionpanel');
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Snackbar'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/snackbar');
            },
          ),
        ],
      ),
    );
  }
}
