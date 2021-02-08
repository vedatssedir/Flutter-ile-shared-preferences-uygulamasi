import 'package:flutter/material.dart';
import 'package:oneapp/methods/crud.dart';

class SayfaA extends StatefulWidget {
  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  CrudService crudService = new CrudService();
  @override
  void initState() {
    super.initState();
    crudService.veriGuncelle();
    crudService.veriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
      ),
      body: Center(),
    );
  }
}
