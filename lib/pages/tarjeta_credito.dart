import 'package:apphumanlive/pages/detalle_tarjeta.dart';
import 'package:flutter/material.dart';

class Tarjeta_credito extends StatefulWidget {
  const Tarjeta_credito({super.key});

  @override
  State<Tarjeta_credito> createState() => _Tarjeta_creditoState();
}

class _Tarjeta_creditoState extends State<Tarjeta_credito> {
  bool? _agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjeta de Crédito'),
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
              padding: EdgeInsets.only(left: 120),
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
                          "Efectivo",
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
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.only(left: 150),
                        height: 50,
                        width: 30.0,
                        color: Color.fromARGB(255, 168, 168, 168),
                        child: DropdownButton<String>(
                          value: 'VISA',
                          onChanged: (String? newValue) {
                            // código para manejar el cambio de valor
                          },
                          items: <String>['VISA', 'PICHINCHA', 'GUAYAQUIL', 'MASTERCARD']
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
                        color: Color.fromARGB(0, 188, 195, 209),
                        child: Center(
                          child: Text(
                            "Diferir a: ",
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
                          value: '3',
                          onChanged: (String? newValue) {
                            // código para manejar el cambio de valor
                          },
                          items: <String>['3', '6', '9', '12']
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
             padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 7, 77, 228), 
    minimumSize: Size(150, 50),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        (const detalle_tc())));
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
