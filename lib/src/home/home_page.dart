import 'package:appfox/src/avaliacao/wdtavaliar_widget.dart';
import 'package:appfox/src/modells/Choice.dart';
import 'package:flutter/material.dart';
import 'package:appfox/src/settings/settings_page.dart';
import 'package:appfox/src/caixa/wdtCaixa_widget.dart';
import 'package:appfox/src/venda/wdtVenda_widget.dart';

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Configuração', icon: Icons.settings),
//  const Choice(title: 'Outros', icon: Icons.directions_bike),
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _select(Choice choice) {
    if (choice.title.compareTo('Configuração') == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caixa"),
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
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          WdtCaixaWidget(),
          WdtVendaWidget(),
          WdtavaliarWidget(),
        ],
      ),
    );
  }
}
