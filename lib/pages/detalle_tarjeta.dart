import 'package:apphumanlive/pages/tarjeta_credito.dart';
import 'package:flutter/material.dart';

class detalle_tc extends StatefulWidget {
  const detalle_tc({Key? key}) : super(key: key);

  @override
  _detalle_tcState createState() => _detalle_tcState();
}

class _detalle_tcState extends State<detalle_tc> {
  bool? _agree = false;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final EdgeInsets padding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(
        title: Text('Contrato Anual'),
        backgroundColor: Color.fromARGB(255, 7, 77, 228),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(
            (screenSize.width * 0.05) - padding.left, // margen izquierdo
            (screenSize.height * 0.1) - padding.top, // margen superior
            (screenSize.width * 0.05) - padding.right, // margen derecho
            (screenSize.height * 0.05) - padding.bottom, // margen inferior
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 179, 14, 14), // color de la línea
              width: 2.0, // grosor de la línea
              style: BorderStyle.solid, // estilo de la línea
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 100,
                      color: Color.fromARGB(0, 158, 158, 158),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'DETALLE',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'TARJETA DE CRÉDITO',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 160,
                      height: 50,
                      color: Color.fromARGB(0, 255, 235, 59),
                      child: Center(
                        child: Text(
                          'Consumos',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 100,
                      color: Color.fromARGB(0, 240, 15, 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '0.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 160,
                      height: 50,
                      color: Color.fromARGB(0, 255, 235, 59),
                      child: Center(
                        child: Text(
                          'Subtotal consumos',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 100,
                      color: Color.fromARGB(0, 255, 11, 11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '0.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 160,
                      height: 50,
                      color: Color.fromARGB(0, 255, 235, 59),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'IVA 12% ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 100,
                      color: Color.fromARGB(0, 255, 11, 11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '12%',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 160,
                      height: 50,
                      color: Color.fromARGB(0, 255, 235, 59),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Total consumos',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 100,
                      color: Color.fromARGB(0, 255, 11, 11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '0.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 160,
                      height: 50,
                      color: Color.fromARGB(0, 255, 235, 59),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Interés de financiamiento',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 100,
                      color: Color.fromARGB(0, 255, 11, 11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '0.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 160,
                      height: 50,
                      color: Color.fromARGB(0, 255, 235, 59),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Total',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 100,
                      color: Color.fromARGB(0, 255, 11, 11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '0.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
