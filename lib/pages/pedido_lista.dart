import 'package:apphumanlive/models/productos_model.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class Cart extends StatefulWidget {
  List<ProductosModel> _cart = [];

  Cart(this._cart);

  @override
  State<Cart> createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);
  final _scrollController = ScrollController();
  var _firstScroll = true;

  bool _enabled = false;

  final List<ProductosModel> _cart;

  Container pagoTotal(List<ProductosModel> _cart) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(left: 120),
      height: 70,
      width: 400,
      color: Colors.grey[200],
      child: Row(
        children: <Widget>[
          Text(
            'Total: \$${valorTotal(_cart)}',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black),
          )
        ],
      ),
    );
  }

  String valorTotal(List<ProductosModel> listaProductos) {
    double total = 0.0;
    for (int i = 0; i < listaProductos.length; i++) {
      total = total + listaProductos[i].price * listaProductos[i].quantity;
    }
    return total.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            color: Colors.white,
          )
        ],
        title: Text(
          'Detalle',
          style: new TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (_enabled && _firstScroll) {
            _scrollController
                .jumpTo(_scrollController.position.pixels - details.delta.dy);
          }
        },
        onVerticalDragEnd: (_) {
          if (_enabled) _firstScroll = false;
        },
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _cart.length,
              itemBuilder: (context, index) {
                final String imagen = _cart[index].image;
                var item = _cart[index];
                return Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                            "assets/images/$imagen",
                                            fit: BoxFit.contain))),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      item.name,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.black),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blue[900],
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 6.0,
                                                  color: Colors.blue,
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50.0),
                                              )),
                                          margin: EdgeInsets.only(top: 20.0),
                                          padding: EdgeInsets.all(2.0),
                                          child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 8.0,
                                              ),
                                              IconButton(
                                                icon: Icon(Icons.remove),
                                                onPressed: () {
                                                  _removeProduct(index);
                                                  valorTotal(_cart);
                                                },
                                                color: Colors.white,
                                              ),
                                              Text(
                                                '${_cart[index].quantity}',
                                                style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22.0,
                                                    color: Colors.white),
                                              ),
                                              IconButton(
                                                icon: Icon(Icons.add),
                                                onPressed: () {
                                                  _addProduct(index);
                                                  valorTotal(_cart);
                                                },
                                                color: Colors.yellow,
                                              ),
                                              SizedBox(
                                                height: 8.0,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 38.0,
                                ),
                                Text('ud: \$${item.price.toString()}',
                                  //item.price.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.black),
                                )
                              ],
                            )
                          ],
                        )),
                    Divider(
                      color: Color.fromARGB(255, 0, 12, 173),
                    )
                  ],
                );
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            pagoTotal(_cart),
            SizedBox(
              width: 20.0,
            ),
            Container(
          child: Column(children: <Widget>[
            ElevatedButton(onPressed: (){
              showAlert();
            }, child: Text("Proceder al Pago"),
            
            )
          ]),
              
              
            )



          ]),
        ),
      ),
    );
  }

  _addProduct(int index){
    setState(() {
      _cart[index].quantity++;

    });
  }

  _removeProduct(int index){
    setState(() {
      _cart[index].quantity--;
    });
  }

  void showAlert(){
    QuickAlert.show(context: context, 
    title: '¿Deseas Pagar?',
    confirmBtnText: 'Si',
    cancelBtnText: 'No',
    type: QuickAlertType.confirm,
    );
     
          
  }
}
