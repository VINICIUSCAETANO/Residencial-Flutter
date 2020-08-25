import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:residencial2/classes/planta.dart';

class PlantasPage extends StatefulWidget {
  @override
  _PlantasPageState createState() => _PlantasPageState();
}

class _PlantasPageState extends State<PlantasPage> {
  bool _grid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modelos de Casas"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              //   print('Clicou Lista');
              setState(() {
                _grid = false;
              });
            },
          ),
          IconButton(
              icon: Icon(Icons.grid_on),
              onPressed: () {
                //  print('Clicou Grid');
                setState(() {
                  _grid = true;
                });
              })
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    List<Planta> plantas = [
      Planta('planta1.jpg', 'Califórnia', 345000),
      Planta('planta2.jpg', 'Beira Mar', 420000),
      Planta('planta3.jpg', 'Copacabana', 450000),
      Planta('planta4.jpg', 'Serra e Mar', 390000),
    ];
    if (_grid) {
      return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: plantas.length,
        itemBuilder: (BuildContext context, int index) {
          Planta planta = plantas[index];
          return _foto(planta.foto, planta.modelo, planta.preco);
        },
      );
    } else {
      return ListView.builder(
        itemExtent: 300,
        itemCount: plantas.length,
        itemBuilder: (BuildContext context, int index) {
          Planta planta = plantas[index];
          return _foto(planta.foto, planta.modelo, planta.preco);
        },
      );
    }
  }

  Stack _foto(String path, String modelo, double preco) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(4),
          child: Image.asset(
            'assets/images/' + path,
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),
            child: Text(
              'Modelo: $modelo\n${NumberFormat.simpleCurrency(locale: 'pt_BR').format(preco)}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
