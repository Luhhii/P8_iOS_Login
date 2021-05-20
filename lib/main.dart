import 'package:flutter/material.dart';

void main() => runApp(MyLogin());

class MyLogin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Luhi',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    );
  } //Fin de Widget
} //Fin de clase MyLogin

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
}

class _IngresoSistemaState extends State<IngresoSistema> {
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //Fin widget []
        title: Text('Login Luhi'),
      ), //Fin appBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/foto.jpg'),
                SizedBox(height: 16.0),
              ],
            ), //Fin Column
            if (!isLogin)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.amber,
                      labelText: 'Nombre de usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCELAR'),
                          onPressed: () {
                            setState(() {
                              isLogin = false;
                            });
                          },
                        ), //Fin FlatButton
                        RaisedButton(
                          child: Text(
                            'SIGUIENTE',
                          ),
                          onPressed: () {
                            setState(() {
                              isLogin = true;
                            });
                          },
                        ), //Fin RaisedButton
                      ], //Fin Widget []
                    ), //Fin Child
                  ) //Fin de Padding
                ], //Fin Widget []
              ) //Fin Column

            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text('Inicio de sesion correcta'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Salir'),
                      onPressed: () {
                        setState(() {
                          isLogin = false;
                        });
                      },
                    )
                  ], //Fin Widget []
                ), //Fin child
              ) //Fin Center
          ], //Fin widget []
        ), //Fin ListView
      ), //Area Segura
    ); //Fin Scaffold
  } //Fin Widget
} //Fin _IngresoSistema
