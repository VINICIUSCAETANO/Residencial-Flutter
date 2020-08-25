import 'package:flutter/material.dart';

class PlantasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modelos de Casas"),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      children: <Widget>[
        _foto('planta1.jpg'),
        _foto('planta2.jpg'),
        _foto('planta3.jpeg'),
        _foto('planta4.jpg'),
      ],
    );
  }

  Padding _foto(String path) {
    return Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Image.asset(
          'assets/images/' + path,
          fit: BoxFit.contain,
        ));
  }
}
