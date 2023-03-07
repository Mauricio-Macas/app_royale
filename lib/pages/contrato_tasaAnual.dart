import 'package:apphumanlive/pages/tarjeta_credito.dart';
import 'package:flutter/material.dart';

class TasaAnual extends StatefulWidget {
  const TasaAnual({Key? key}) : super(key: key);

  @override
  _TasaAnualState createState() => _TasaAnualState();
}

class _TasaAnualState extends State<TasaAnual> {
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
                            'CONTRATO',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 56, 56, 56),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Tasa anual del pagaré',
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
                          'Precio de compra (s/iva)',
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
                                  '999.99',
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
                          'Costo despacho de manejo',
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
                                  '000.00',
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
                          'IVA de 12 ',
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
                          'Precio Total',
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
                                  '90.00',
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
                          'Deposito pagado hoy',
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
                          'Deposito adicional',
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
                          'Saldo Financiar',
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
                          'Tasa de interés vigente',
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
                                  '1.30% MV',
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
                //////////////////////////////////
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
                          'N° de inversiones',
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
                                  'X',
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
                          'Pago mínimo',
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
