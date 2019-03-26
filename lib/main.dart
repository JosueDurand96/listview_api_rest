import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:listview_with_rest/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<User>> _getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2");
    //  var data = await http.post("http://192.168.1.61:8084/api/administrador/find?=1");

    var jsonData = json.decode(data.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user =
          User(u["index"], u["about"], u["name"], u["email"], u["picture"]);
      users.add(user);
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Cargando..."),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  );
                  return Card(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 5,
                                right: 15,
                              ),
                              padding: EdgeInsets.only(top: 10),
                              height: 45,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextField(
                                //  controller: departamentoControll,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Nombre:',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 4.0),
                              height: 45,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration.collapsed(
                                  hintText: snapshot.data[index].name,
                                ),
                                //controller: provinciaControll,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 5,
                                right: 15,
                              ),
                              padding: EdgeInsets.only(top: 10),
                              height: 45,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                //  controller: departamentoControll,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Tarifa Diurna:',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 4.0),
                              height: 45,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration.collapsed(
                                  hintText: snapshot.data[index].name,
                                ),
                                //controller: provinciaControll,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 5,
                                right: 15,
                              ),
                              padding: EdgeInsets.only(top: 10),
                              height: 45,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                //  controller: departamentoControll,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Tarifa Nocturna:',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 4.0),
                              height: 45,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration.collapsed(
                                  hintText: snapshot.data[index].name,
                                ),
                                //controller: provinciaControll,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 5,
                                right: 15,
                              ),
                              padding: EdgeInsets.only(top: 10),
                              height: 45,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                //  controller: departamentoControll,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Precios actualizados al:',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 4.0),
                              height: 45,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration.collapsed(
                                  hintText: snapshot.data[index].name,
                                ),
                                //controller: provinciaControll,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 19),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 20.0, left: 15),
                              height: 95,
                              width: 195,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                height: 50.0,
                                child: RaisedButton(
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  color: Colors.amber,
                                  child: Text(
                                    "Guardar Cambios",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 20.0, right: 20),
                              height: 95,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: ButtonTheme(
                                minWidth: 100.0,
                                height: 50.0,
                                child: RaisedButton(
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  color: Colors.amber,
                                  child: Text(
                                    "Ver Histórico",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
