import 'package:flutter/material.dart';

class FecharPage extends StatefulWidget {
  @override
  _FecharPageState createState() => _FecharPageState();
}

class _FecharPageState extends State<FecharPage> {
  final _formKey = GlobalKey<FormState>();

  void _fechar(BuildContext context) {
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    print('passou no fechar');
    if (_formKey.currentState.validate()) {
      // Process data.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fechar"),
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
                  child: Text('Iniciou com : R\$ 0.00')
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topRight,
                  child: Text('Fechando com : R\$ 175.00')
                ),                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Em Dinheiro'
                  ),
                  initialValue: '0.00',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Valor Obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Em Cartão Crédito'
                  ),
                  initialValue: '150.00',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Valor Obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Em Cartão Débito'
                  ),
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
      floatingActionButton: FloatingActionButton(
      onPressed: (){ _fechar(context); },
      child: Icon(Icons.save),
      ),
    );
  }
}
