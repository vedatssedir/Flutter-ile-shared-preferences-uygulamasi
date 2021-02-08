import 'package:flutter/material.dart';
import 'package:oneapp/methods/crud.dart';
import 'package:oneapp/views/Sayfa1.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CrudService crudService = new CrudService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                crudService.veriKaydi();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SayfaA()));
              },
              child: Text("Geçiş Yap"),
            )
          ],
        ),
      ),
    );
  }
}
