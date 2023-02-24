import 'package:flutter/material.dart';

import 'cheque_directo.dart';

class Formas_pago extends StatefulWidget {
  const Formas_pago({super.key});

  @override
  State<Formas_pago> createState() => _Formas_pagoState();
}

class _Formas_pagoState extends State<Formas_pago> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menú de Pagos'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    color: Color.fromARGB(255, 7, 77, 228),
                    child: Center(
                        child: Text(
                      'Precio de Compra:',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    color: Color.fromARGB(255, 7, 77, 228),
                    child: Center(
                        child: Text(
                      'Iva:',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    color: Color.fromARGB(255, 7, 77, 228),
                    child: Center(
                        child: Text(
                      'Precio Total:',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )),
                  ),
                )),
                Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                      'Formas de Pago:',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    )
                
                
                ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (const Cheque_directo())));
                      },
                      child: Text(
                      'Cheque Directo',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    ),
                  ),
                ),

                 Padding(
                padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (const Cheque_directo())));
                      },
                      child: Text(
                      'Crédito Directo',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    ),
                  ),
                ),
                 Padding(
                padding: const EdgeInsets.all(10.0),

                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (const Cheque_directo())));
                      },
                      //child: const Text("Tarjeta de Crédito"),
                      child: Text(
                      'Tarjeta de Crédito',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    ),
                  ),
                ),
          ],
        ));
  }
}
