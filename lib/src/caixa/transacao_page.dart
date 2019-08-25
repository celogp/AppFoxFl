import 'package:flutter/material.dart';
import 'package:fab_menu/fab_menu.dart';

class TransacaoPage extends StatefulWidget {
  @override
  _TransacaoPageState createState() => _TransacaoPageState();
}

class _TransacaoPageState extends State<TransacaoPage> {
  final _formKey = GlobalKey<FormState>();
  List<MenuData> menuDataList;

void _confirmaTransacao(BuildContext context){
  // Validate will return true if the form is valid, or false if
  // the form is invalid.
  print('passou na confirmação da transaao');
  if (_formKey.currentState.validate()) {
    // Process data.
  }
}

@override
void initState() {
  super.initState();
  menuDataList = [
      new MenuData(Icons.save_alt, (context, menuData) {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text('Sangria pressionada ${menuData.labelText}')));
            this._confirmaTransacao(context);
      },labelText: 'Sangria'),
      new MenuData(Icons.save, (context, menuData) {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text('Suprimento pressionado ${menuData.labelText}')));
            this._confirmaTransacao(context);
      },labelText: 'Suprimento'),
    ];  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transações em valores."),
      ),
      body:ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Valor'
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Valor Obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Observação '
                  ),
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
