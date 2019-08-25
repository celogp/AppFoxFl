import 'package:appfox/src/venda/pesquisarProdVenda_page.dart';
import 'package:appfox/src/venda/receber_page.dart';
import 'package:flutter/material.dart';

import 'dart:async';
//import 'package:barcode_scan/barcode_scan.dart';
//import 'package:flutter/services.dart';

const _totVenda = 25.0;

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}

Widget myCard(BuildContext context, descricao, valor) =>  Card(
    elevation: 2,
      child:
      ListTile(
        leading:
        SizedBox(
          width: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
            //BlueBox(),
          CircleAvatar(child: 
          Image(image: AssetImage('images/app/SemImagem.jpg'),  )
         ), 
         

          ],)
        ),

        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert(context);
            },
          );
        },
        title: Text(descricao),
        subtitle: Text('Valor R\$ ' + valor),
      ),
    );

Widget cancelaButton(BuildContext context) => FlatButton(
      child: Text("Cancelar"),
      onPressed: () {
        print('passou no cancelar');
        Navigator.pop(context);
      },
    );

Widget continuaButton(BuildContext context) => FlatButton(
      child: Text("Confirmar"),
      onPressed: () {
        print('passou no confirmar');
        Navigator.pop(context);
      },
    );

//configura o AlertDialog
AlertDialog alert(BuildContext context) => AlertDialog(
      title: Text("Retirar da venda ?"),
      actions: [
        cancelaButton(context),
        continuaButton(context),
      ],
    );

class VenderPage extends StatefulWidget {
  @override
  _VenderPageState createState() => _VenderPageState();
}

class _VenderPageState extends State<VenderPage> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Venda R\$ " + _totVenda.toString()),
      ),
      body: ListView(

        padding: const EdgeInsets.all(1.0),
        children: <Widget>[
          myCard(context, 'Produto A', '10,00'),
          myCard(context, 'Produto B', '10,00'),
          myCard(context, 'Produto C', '2,50'),
          myCard(context, 'Produto D', '1,00'),
          myCard(context, 'Produto E', '1,50'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.photo_camera),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.monetization_on),
              onPressed: () {
                _receber(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _pesquisar(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _pesquisar(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PesquisarProdVendaPage()),
    );
  }

  void _receber(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ReceberPage()),
    );
  }

  Future scan() async {
    print('passou no scan');
    setState(() => this.barcode = 'teste barcode');
    //   try {
    //     String barcode = await BarcodeScanner.scan();
    //     setState(() => this.barcode = barcode);
    //   } on PlatformException catch (e) {
    //     if (e.code == BarcodeScanner.CameraAccessDenied) {
    //       setState(() {
    //         this.barcode = 'The user did not grant the camera permission!';
    //       });
    //     } else {
    //       setState(() => this.barcode = 'Unknown error: $e');
    //     }
    //   } on FormatException{
    //     setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    //   } catch (e) {
    //     setState(() => this.barcode = 'Unknown error: $e');
    //   }
  }
}
