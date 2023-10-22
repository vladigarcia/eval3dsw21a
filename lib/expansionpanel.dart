import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatelessWidget {
  final List<Map<String, dynamic>> _items = [
    {
      "id": 0,
      "title": "He-Man",
      "content": "He-Man es un personaje ficticio que apareció por primera"
          " vez en la serie de televisión Masters of the Universe en la década de 1980."
          " La serie se centra en el personaje principal, He-Man, cuyo nombre real es Adam,"
          " un príncipe del reino de Eternia. Cuando Adam levanta su espada mágica y pronuncia "
          "la frase Por el poder de Grayskull"
    },
    {
      "id": 1,
      "title": "Halcones Galácticos",
      "content": "Los Halcones Galácticos enfrentan numerosas amenazas,"
          " incluyendo piratas espaciales, seres alienígenas hostiles y otros villanos."
          " La serie combina acción, aventuras y elementos de ciencia ficción, y cada episodio sigue"
          " a los Halcones Galácticos mientras se esfuerzan por proteger la galaxia de las fuerzas del mal."
    },
    {
      "id": 2,
      "title": "ThunderCats",
      "content": "ThunderCats gira en torno a un grupo de felinos humanoides"
          " que son los últimos sobrevivientes de su planeta natal, Thundera,"
          " que fue destruido. Los protagonistas, conocidos como los ThunderCats,"
          " son liderados por el valiente León-O, quien posee el Ojo de Thundera, una fuente de poder"
          " que se encuentra en la Espada del Augurio. Los ThunderCats luchan contra sus enemigos, principalmente"
          " los Mutantes y el malvado hechicero Mumm-Ra, para proteger su nuevo hogar en Tercer Mundo."
    },
    {
      "id": 3,
      "title": "Mazinger Z",
      "content": "Mazinger Z se desarrolla en un mundo donde una organización malévola conocida"
          " como el Dr. Infierno (Dr. Hell en la versión original) amenaza con conquistar el mundo"
          " utilizando robots gigantes y tecnología avanzada. El abuelo de Koji, el Dr. Juzo Kabuto,"
          " ha desarrollado el Mazinger Z, un robot gigante altamente avanzado, y confía su control a Koji."
          " Koji, junto con su amiga Sayaka Yumi y otros aliados, luchan contra las máquinas malvadas y los planes del Dr."
          " Infierno."
    },
    {
      "id": 4,
      "title": "The Spectacular Spider-Man",
      "content": " Peter Parker, un estudiante de secundaria que,"
          " tras ser mordido por una araña radiactiva, adquiere habilidades "
          "sobrenaturales y se convierte en Spider-Man. Peter debe equilibrar su vida "
          "cotidiana, lidiando con problemas de la escuela y las relaciones personales, "
          "con su responsabilidad como superhéroe en la ciudad de Nueva York. A lo largo de la serie,"
          " se enfrenta a una variedad de villanos icónicos, como el Duende Verde, el Doctor Octopus, el Lagarto y otros."
    },
  ];

  void _removeItem(int id) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expansionpanel')),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (_, index) {
            final item = _items[index];
            return Card(
              key: PageStorageKey(item['id']),
              color: Colors.blue,
              elevation: 4,
              child: ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                childrenPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                expandedCrossAxisAlignment: CrossAxisAlignment.end,
                title: Text(
                  item['title'],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                children: [
                  Text(
                    item['content'],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // This button is used to remove this item

                ],
              ),
            );
          }),
    );
  }
}