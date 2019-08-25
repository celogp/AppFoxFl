import 'package:appfox/src/venda/vender_page.dart';
import 'package:flutter/material.dart';

const  _marginVda = 5.0;


class WdtVendaWidget extends StatelessWidget {

  void _vender(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VenderPage() ),
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
              title: Text('Venda'),
              subtitle: Text('Última Realizada as 14:51'),
            ),
            Container(
              padding: const EdgeInsets.all(_marginVda),
              alignment: Alignment.topRight,
              child:Text('Qtd.Produtos : 5')
            ),
            Container(
              padding: const EdgeInsets.all(_marginVda),
              alignment: Alignment.topRight,
              child:Text('Total : R\$ 25.00')
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Desfazer'),
                    onPressed: () { print('desfazer venda'); },
                  ),
                  FlatButton(
                    child: const Text('Vender'),
                    onPressed: () { _vender(context); },
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
