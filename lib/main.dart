import 'package:apphumanlive/models/productos_model.dart';
import 'package:apphumanlive/pages/formas_pago.dart';
import 'package:apphumanlive/pages/pedido_lista.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'App Productos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProductosModel> _productosModel = [];
  List<ProductosModel> _listaCarro = [];

  @override
  void initState() {
    super.initState();
    _productosDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 38,
                    color: Colors.white,
                  ),
                  if (_listaCarro.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(_listaCarro.length.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0)),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (_listaCarro.isNotEmpty)
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cart(_listaCarro),
                    ),
                  );
              },
            ),
          )
        ],
      ),
      drawer: Container(
        width: 170.0,
        child: Drawer(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.white,
            child: new ListView(
              padding: EdgeInsets.only(top: 50.0),
              children: <Widget>[
                Container(
                  height: 120,
                  child: new UserAccountsDrawerHeader(
                    accountName: new Text(''),
                    accountEmail: new Text(''),
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/royale.png'),
                      ),
                    ),
                  ),
                ),
                //new Divider(),
                new ListTile(
                    title: new Text(
                      'Home',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: new Icon(
                      Icons.home,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (Formas_pago())))),
                new Divider(),

                new ListTile(
                    title: new Text(
                      'Historial de Ventas',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: new Icon(
                      Icons.shop,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (Formas_pago())))),
                new Divider(),

                new ListTile(
                    title: new Text(
                      'Productos',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: new Icon(
                      Icons.fastfood,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (Formas_pago())))),

                new Divider(),

                new ListTile(
                    title: new Text(
                      'QR Code',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: new FaIcon(
                      FontAwesomeIcons.qrcode,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                (Formas_pago())))),
              ],
            ),
          ),
        ),
      ),
      body: _cuadroProductos(),
    );
  }

  GridView _cuadroProductos() {
    return GridView.builder(
      padding: const EdgeInsets.all(4.0),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: _productosModel.length,
      itemBuilder: (context, index) {
        final String image = _productosModel[index].image;
        var item = _productosModel[index];
        return Card(
          elevation: 4.0,
          child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: new Image.asset(
                    "assets/images/$image",
                    fit: BoxFit.contain,
                  )),
                  Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        item.price.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          bottom: 8.0,
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            child: (!_listaCarro.contains(item))
                                ? Icon(
                                    Icons.shopping_cart,
                                    color: Colors.green,
                                    size: 38,
                                  )
                                : Icon(
                                    Icons.shopping_cart,
                                    color: Colors.red,
                                    size: 38,
                                  ),
                            onTap: () {
                              setState(() {
                                if (!_listaCarro.contains(item))
                                  _listaCarro.add(item);
                                else
                                  _listaCarro.remove(item);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  void _productosDb() {
    var list = <ProductosModel>[
      ProductosModel(
          name: 'Olla de Presión 1', 
          image: 'olla1.jpg', 
          price: 110.6),
      ProductosModel(name: 'Olla Americana', 
      image: 'olla2.jpg', 
      price: 200.99),
      ProductosModel(
          name: 'Juego de Cuchillos', 
          image: 'cuchillo1.jpg', 
          price: 574.10),
      ProductosModel(
          name: 'Power Blender', 
          image: 'powerbl.jpg', 
          price: 200.22),
      ProductosModel(
        name: 'Parrilla de Acero',
        image: 'parrilla.jpg',
        price: 300.99,
      ),
    ];
    setState(() {
      _productosModel = list;
    });
  }
}
