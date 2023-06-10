import 'package:flutter/material.dart';
import 'package:flutter_proyecto/paginas/principal.dart';

class MenuModerno extends StatelessWidget {
  final List<Map<String, dynamic>> opciones = [    {'titulo': 'Notas', 'icono': Icons.book_online},    {'titulo': 'Materias', 'icono': Icons.abc},    {'titulo': 'Perfil', 'icono': Icons.person},    {'titulo': 'Cerrar sesión', 'icono': Icons.logout},  ];

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
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(opciones.length, (index) {
                return Container(
                  height: 150.0,
                  width: 150.0,
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        if (opciones[index]['titulo'] == 'Cerrar sesión') {
                          Navigator.pushReplacementNamed(context, '/login');
                        } 
                        if (opciones[index]['titulo'] == 'Notas') {
                          Navigator.pushReplacementNamed(context, '/notas');
                        } 
                        if (opciones[index]['titulo'] == 'Materias') {
                          Navigator.pushReplacementNamed(context, '/materias');
                        } 
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(opciones[index]['icono'], size: 50),
                            SizedBox(height: 12),
                            Text(
                              opciones[index]['titulo'],
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),

                    
                  ),
                );
              }),
            ),
          ),


          
        ],
      ),
    );
  }
}

