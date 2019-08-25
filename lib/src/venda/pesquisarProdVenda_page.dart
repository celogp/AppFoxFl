import 'package:appfox/src/modells/Choice.dart';
import 'package:flutter/material.dart';

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Descrição'),
  const Choice(title: 'Código'),
];

class PesquisarProdVendaPage extends StatefulWidget {
  @override
  _PesquisarProdVendaPageState createState() => _PesquisarProdVendaPageState();
}

class _PesquisarProdVendaPageState extends State<PesquisarProdVendaPage> {
  final _formKey = GlobalKey<FormState>();

  void _select(Choice choice) {
    print('passou na opcao menu...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesquisar produtos"),
        actions: <Widget>[
          // overflow menu
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          ),
          SizedBox(width: 5)
        ],
      ),
      body:
      Container(
      padding: const EdgeInsets.all(8.0),
        child:       Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Coloque a pesquisa aqui...'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Valor Obrigatório';
                }
                return null;
              },
            ),
            Center(child: Text('Nada pesquisado!!'),)
          ]
        )
      ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () { 
        print('passou no pesquisar xxxx'); 
        if (_formKey.currentState.validate()) {
          // Process data.
        }

      },
      child: Icon(Icons.search),
    ),
    );
  }
}
