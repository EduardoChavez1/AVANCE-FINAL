import 'package:flutter/material.dart';
import 'package:flutter_proyecto/paginas/menu.dart';
import 'package:flutter_proyecto/paginas/restablecercontra.dart';


class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 29, 29),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
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
              height: Size.height * 0.3,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        )
                      ]),
                  child: Column(
                    children: [
                      new Text(
                        'Ingreso',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/1.png',
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Form(
                            child: Column(
                          children: [
                            TextFormField(
                              autocorrect: false,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 94, 11, 5)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 94, 11, 5),
                                        width: 2)),
                                hintText: 'Ejemplo: 25-4953-2016',
                                labelText: 'Carnet Utec',
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              autocorrect: false,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 94, 11, 5)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 94, 11, 5),
                                        width: 2)),
                                hintText: '***************',
                                labelText: 'Contraseña',
                                prefixIcon: Icon(Icons.lock_outline_rounded),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MenuModerno()),
                                );
                              },
                              child: const Text('Ingresar'),
                              color: Color.fromARGB(255, 153, 51, 51),
                              height: 30,
                            ),
                            Text(""),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PasswordResetPage()),
                                      );
                                    },
                                    child: Text(
                                      "¿Olvidó la Contraseña?",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                  Text(" "),
                          ],
                          
                        )),
                        
                      )
                      
                    ],
                    
                  ),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
