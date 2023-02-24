import 'package:flutter/material.dart';

class Tarjeta_credito extends StatefulWidget {
  const Tarjeta_credito({super.key});

  @override
  State<Tarjeta_credito> createState() => _Tarjeta_creditoState();
}

class _Tarjeta_creditoState extends State<Tarjeta_credito> {
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
                                (const Tarjeta_credito())));
            }, child: const Text("Proceder al Pago"),
            
            ),
      
    )
    
    );
  }
}
