import 'package:fab_menu/fab_menu.dart';
import 'package:flutter/material.dart';

class ReceberPage extends StatefulWidget {
  @override
  _ReceberPageState createState() => _ReceberPageState();
}

class _ReceberPageState extends State<ReceberPage> {
  final _formKey = GlobalKey<FormState>();
  List<MenuData> menuDataList;

  //se recebeu tudo, retorna para a home
  void _voltaMenu(BuildContext context){
    Navigator.pop(context);
    Navigator.pop(context);
  }

  void _receberDinheiro(BuildContext context) {
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    print('passou no receber dinheiro');
    if (_formKey.currentState.validate()) {
      // Process data.
      _voltaMenu(context);
    }
  }

  void _receberCartaoCredito(BuildContext context) {
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    print('passou no receber cartão crédito');
    if (_formKey.currentState.validate()) {
      // Process data.
      _voltaMenu(context);
    }
  }

  void _receberCartaoDebito(BuildContext context) {
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    print('passou no receber cartão debito');
    if (_formKey.currentState.validate()) {
      // Process data.
      _voltaMenu(context);
    }
  }

  void initState() {
    super.initState();
    menuDataList = [
      new MenuData(Icons.monetization_on, (context, menuData) {
        Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text('Dinheiro recebido ${menuData.labelText}')));
        this._receberDinheiro(context);
      }, labelText: 'Dinheiro', ),
      new MenuData(Icons.credit_card, (context, menuData) {
        Scaffold.of(context).showSnackBar(new SnackBar(
            content:
                new Text('Cartão Crédito recebido ${menuData.labelText}')));
        this._receberCartaoCredito(context);
      }, labelText: 'Cartão Crédito'),
      new MenuData(Icons.payment, (context, menuData) {
        Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text('Cartão Débito recebido ${menuData.labelText}')));
        this._receberCartaoDebito(context);
      }, labelText: 'Cartão Débito'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receber"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.topRight,
                    child: Text('Valor da Venda : R\$ 25.00')),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.topRight,
                    child: Text('Retornar Troco : R\$ 0.00')),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Valor A Receber'),
                  initialValue: '25.00',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Valor Obrigatório';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: new FabMenu(
        menus: menuDataList,
        maskColor: Colors.black,
      ),
      floatingActionButtonLocation: fabMenuLocation,
    );
  }
}
