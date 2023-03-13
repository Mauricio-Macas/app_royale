import 'package:flutter/material.dart';

class Name_Venta extends StatefulWidget {
  const Name_Venta({super.key});

  @override
  State<Name_Venta> createState() => _Name_VentaState();
}

class _Name_VentaState extends State<Name_Venta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menú nombre de ventas'),
        ),
        body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ingrese nombre de la venta:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ingrese su texto aquí',
                   hintStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
                  border: InputBorder.none, //Establece sin borde
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 71, 71, 71), //Establece el color del borde
                      width: 2, //Establece el ancho del borde
                    ),
                    borderRadius: BorderRadius.circular(10), //Establece el borde redondeado
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(0, 90, 90, 90), //Establece el color del borde
                      width: 2, //Establece el ancho del borde
                    ),
                    borderRadius: BorderRadius.circular(10), //Establece el borde redondeado
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 73, 73, 73),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), //Agrega espacio de relleno
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
