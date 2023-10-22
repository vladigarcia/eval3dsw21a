import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatelessWidget {
  final List<Map<String, dynamic>> _items = [
    {
      "id": 0,
      "title": "He-Man",
      "content": "He-Man es un personaje ficticio que apareció por primera vez en la serie de televisión Masters of the Universe en la década de 1980. La serie se centra en el personaje principal, He-Man, cuyo nombre real es Adam, un príncipe del reino de Eternia. Cuando Adam levanta su espada mágica y pronuncia la frase Por el poder de Grayskull"
    },
    {
      "id": 1,
      "title": "Panel 2",
      "content": "Contenido del Panel 2"
    },
    {
      "id": 2,
      "title": "Panel 3",
      "content": "Contenido del Panel 3"
    },
    {
      "id": 3,
      "title": "Panel 4",
      "content": "Contenido del Panel 4"
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