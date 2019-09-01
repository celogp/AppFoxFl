import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();

  void _salvar(BuildContext context) {
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    print('passou no salvar');
    if (_formKey.currentState.validate()) {
      // Process data.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuração"),
      ),
      body:  ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Usuário'
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Valor Obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha'
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Valor Obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Link do ERP'
                  ),
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
      onPressed: (){ _salvar(context); },
      child: Icon(Icons.save),
      backgroundColor: Colors.blue,
      ),
    );
  }
}
