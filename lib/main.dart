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
        child: Text('Contenido de la pantalla principal'),
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
            accountName: Text('Eduardo vladimir Garcia Mestizo'),
            accountEmail: Text('garciavladi34@gmail.com.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: Icon(Icons.expand_less_sharp),
            title: Text('expansionpanel'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/expansionpanel');
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('snackbar'),
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
