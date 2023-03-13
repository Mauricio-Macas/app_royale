import 'package:apphumanlive/pages/name_venta.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 31, 29, 117)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Text(
                'Bienvenido',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 4, 114),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),


              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    //bottomLeft: Radius.circular(10),
                  ),
                  border: Border.all(color: Color.fromARGB(255, 10, 10, 10)),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Bienvenido',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Iniciar sesión'),
                    ),
                  ],
                ),
              ),


              // SizedBox(height: 30),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Text(
              //     'Usuario:',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: TextFormField(
              //     keyboardType: TextInputType.emailAddress,
              //     decoration: InputDecoration(
              //       hintText: 'Correo electrónico',
              //       filled: true,
              //       fillColor: Colors.white.withOpacity(0.7),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10),
              //         borderSide: BorderSide.none,
              //       ),
              //       contentPadding: EdgeInsets.symmetric(
              //         vertical: 15,
              //         horizontal: 20,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Text(
              //     'Contraseña:',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: TextFormField(
              //     obscureText: true,
              //     decoration: InputDecoration(
              //       hintText: 'Contraseña',
              //       filled: true,
              //       fillColor: Colors.white.withOpacity(0.7),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10),
              //         borderSide: BorderSide.none,
              //       ),
              //       contentPadding: EdgeInsets.symmetric(
              //         vertical: 15,
              //         horizontal: 20,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 30),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: Text('Iniciar sesión'),
              //     style: ElevatedButton.styleFrom(
              //       primary: Color.fromARGB(255, 26, 26, 26),
              //       padding: EdgeInsets.symmetric(vertical: 15),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 50),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text.rich(
                    TextSpan(
                      text: '¿Aun no tienes una cuenta? ',
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Registrate aqui',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Name_Venta()),
                              );
                            },
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
