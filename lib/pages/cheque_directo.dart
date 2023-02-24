import 'package:flutter/material.dart';

class Cheque_directo extends StatefulWidget {
  const Cheque_directo({super.key});

  @override
  State<Cheque_directo> createState() => _Cheque_directoState();
}

class _Cheque_directoState extends State<Cheque_directo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cheque Directo'),
        ),
        body: Center(
       child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => (const Cheque_directo())));
            },
            child: const Text("Proceder al Pago"),
          ),
          
        ),
      
    )
    
    );
  }
}
