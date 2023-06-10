import 'package:flutter/material.dart';
import 'package:flutter_proyecto/paginas/materias.dart';
import 'package:flutter_proyecto/paginas/notas.dart';
import 'package:flutter_proyecto/paginas/principal.dart';
import 'package:flutter_proyecto/paginas/menu.dart';

void main() {
  runApp(Proyecto());
}

class Proyecto extends StatelessWidget {
  const Proyecto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/login',
  routes: {
    '/login': (context) => principal(),
    '/menu': (context) => MenuModerno(),
    '/notas': (context) => EvaluacionesPage(),
    '/materias': (context) => MateriasScreen(),

  },
      debugShowCheckedModeBanner: false,
      home: principal(),
    );
  }
}
