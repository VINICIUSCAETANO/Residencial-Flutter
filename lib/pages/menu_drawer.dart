import 'package:flutter/material.dart';
import 'package:residencial2/pages/plantas_page.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Modelos de Casas'),
          subtitle: Text('Veja as plantas das casas'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PlantasPage()));
          },
        ),
      ]),
    );
  }
}
