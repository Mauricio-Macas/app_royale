import 'package:apphumanlive/pages/contrato_tasaAnual.dart';
import 'package:apphumanlive/pages/tarjeta_credito.dart';
import 'package:flutter/material.dart';

class Credito_directo extends StatefulWidget {
  const Credito_directo({super.key});

  @override
  State<Credito_directo> createState() => _Credito_directoState();
}

class _Credito_directoState extends State<Credito_directo> {
  bool? _agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crédito Directo'),
        backgroundColor: Color.fromARGB(255, 7, 77, 228),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(left: 90),
              height: 70,
              width: 400,
              color: Color.fromARGB(255, 177, 177, 177),
              child: Row(
                children: <Widget>[
                  Text(
                    'Total: ****,**',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            )
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      //dding: EdgeInsets.only(left: 60),
                      height: 50,
                      width: 400,
                      color: Color.fromARGB(255, 7, 77, 228),
                      child: Center(
                        child: Text(
                          "Agregado",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      //padding: EdgeInsets.only(left: 0),
                      height: 50,
                      width: 30.0,
                      color: Color.fromARGB(255, 168, 168, 168),
                      child: Checkbox(
                        value: _agree,
                        onChanged: (value) {
                          setState(() {
                            _agree = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    //borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.only(left: 60),
                      height: 30,
                      width: 400,
                      color: Color.fromARGB(0, 7, 77, 228),
                      child: Text(
                        "Cantidad:",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        //padding: EdgeInsets.only(left: 60),
                        height: 50,
                        width: 30.0,
                        color: Color.fromARGB(255, 168, 168, 168),
                        child: Center(
                          child: Text(
                            "***,**",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        //dding: EdgeInsets.only(left: 60),
                        height: 50,
                        width: 400,
                        color: Color.fromARGB(255, 7, 77, 228),
                        child: Center(
                          child: Text(
                            "Entrada",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        //padding: EdgeInsets.only(left: 60),
                        height: 50,
                        width: 30.0,
                        color: Color.fromARGB(255, 168, 168, 168),
                        child: Center(
                          child: Text(
                            "***,**",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.centerRight,
              //padding: EdgeInsets.only(left: 0),
              height: 70,
              width: 400,
              color: Color.fromARGB(255, 177, 177, 177),
              child: Row(
                children: <Widget>[
                  Text(
                    'Saldo a financiar:   ****,**',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            )
          ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        //dding: EdgeInsets.only(left: 60),
                        height: 50,
                        width: 400,
                        color: Color.fromARGB(255, 7, 77, 228),
                        child: Center(
                          child: Text(
                            "N° de Inversiones: ",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.only(left: 60),
                        height: 50,
                        width: 30.0,
                        color: Color.fromARGB(255, 168, 168, 168),
                        child: DropdownButton<String>(
                          value: '1',
                          onChanged: (String? newValue) {
                            // código para manejar el cambio de valor
                          },
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
           Container(
            child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      //dding: EdgeInsets.only(left: 60),
                      height: 50,
                      width: 900,
                      color: Color.fromARGB(255, 7, 77, 228),
                      child: Center(
                        child: Text(
                          "Total a pagar:       ****,**",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
          ),
          Container(
            child: Padding(
             padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 7, 77, 228), 
    minimumSize: Size(150, 50),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        (TasaAnual())));
              },
              child: const Text("Proceder al Pago"),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
