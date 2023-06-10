import 'package:flutter/material.dart';

class Evaluacion {
  String nombre;
  double nota;

  Evaluacion({required this.nombre, required this.nota});
}

class EvaluacionesPage extends StatelessWidget {
  final List<Evaluacion> evaluaciones = [    Evaluacion(nombre: 'Evaluacion 1', nota: 7.5),    Evaluacion(nombre: 'Evaluacion 2', nota: 8.0),    Evaluacion(nombre: 'Evaluacion 3', nota: 6.5),    Evaluacion(nombre: 'Evaluacion 4', nota: 9.0),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 29, 29),
      body: Column(
        children: [
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...evaluaciones.map((evaluacion) {
                      return Column(
                        children: [
                          Text(evaluacion.nombre),
                          SizedBox(height: 8),
                          Text(evaluacion.nota.toString()),
                        ],
                      );
                    }).toList(),
                  ],
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
