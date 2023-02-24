import 'package:flutter/material.dart';

class Credito_directo extends StatefulWidget {
  const Credito_directo({super.key});

  @override
  State<Credito_directo> createState() => _Credito_directoState();
}

class _Credito_directoState extends State<Credito_directo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de Pagos'),
        ),
        body: Center(
       child: 
            ElevatedButton(onPressed: (){
               Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (const Credito_directo())));
            }, child: const Text("Proceder al Pago"),
            
            ),
      
    )
    
    );
  }
}
