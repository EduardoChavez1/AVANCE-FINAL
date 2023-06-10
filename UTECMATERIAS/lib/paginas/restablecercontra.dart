import 'package:flutter/material.dart';

class PasswordResetPage extends StatefulWidget {
  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 29, 29),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            SizedBox(height: 32),
            Text(
              'Ingresa tu dirección de correo electrónico para recibir un correo de restablecimiento de contraseña.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'ejemplo@dominio.com',
                
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text('Restablecer contraseña'),
            ),
          ],
        ),
      ),
    );
  }
}
