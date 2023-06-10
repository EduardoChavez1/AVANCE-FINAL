import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MateriasScreen extends StatefulWidget {
  @override
  _MateriasScreenState createState() => _MateriasScreenState();
}

class _MateriasScreenState extends State<MateriasScreen> {
  List<String> _materias = [
    'Matemáticas I',
    'Física I',
    'Programacion I',
    'Algoritmos',
    'Circuitos',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 29, 29),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(143, 26, 26, 1),
                Color.fromRGBO(147, 37, 37, 1),
              ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(60),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset(
              'assets/utec.png',
              width: 125,
              height: 125,
              fit: BoxFit.scaleDown,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                  child: ListView.builder(
                    itemCount: _materias.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(_materias[index]),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.pushReplacementNamed(context, '/menu');

        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
    
  }
}
