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

  ListView _body() {
    return ListView(
      itemExtent: 300,
      children: <Widget>[
        _foto('planta1.jpg'),
        _foto('planta2.jpg'),
        _foto('planta3.jpg'),
        _foto('planta4.jpg'),
      ],
    );
  }

  Stack _foto(String path) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(4),
          child: Image.asset(
            'assets/images/' + path,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomLeft,
          child: Text(
            'Modelo: Califórnia\n345000',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
