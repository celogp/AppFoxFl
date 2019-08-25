import 'package:appfox/src/caixa/transacao_page.dart';
import 'package:flutter/material.dart';

import 'fechar_page.dart';

const  _marginCxa = 5.0;

class WdtCaixaWidget extends StatelessWidget {
  void _transacaoCaixa(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TransacaoPage() ),
      );
    }

  void _fechar(BuildContext context) {
      print ('so fechar');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FecharPage() ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.attach_money, color: Colors.blue),
              title: Text('Caixa aberto em 01/08/2019 por '),
              subtitle: Text('Maria da Silva Sauro.'),
            ),

            Container(
              padding: const EdgeInsets.all(_marginCxa),
              alignment: Alignment.topRight,
              child:Text('Iniciou com : 00.00')
            ),

            Container(
              padding: const EdgeInsets.all(_marginCxa),
              alignment: Alignment.topRight,
              child:Text('Em Dinheiro : 00.00')
            ),

            Container(
              padding: const EdgeInsets.all(_marginCxa),
              alignment: Alignment.topRight,
              child:Text('Em Cartão Crédito : R\$ 150.00')
            ),

            Container(
              padding: const EdgeInsets.all(_marginCxa),
              alignment: Alignment.topRight,
              child:Text('Em Cartão Débito : R\$ 25.00')
            ),

            Container(
              padding: const EdgeInsets.all(_marginCxa),
              alignment: Alignment.topRight,
              child:Text('Saldo é : R\$ 175.00')
            ),

            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Transação'),
                    onPressed: () { _transacaoCaixa(context); },
                  ),
                  FlatButton(
                    child: const Text('Fechar'),
                    onPressed: () { _fechar(context); },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }  


}
