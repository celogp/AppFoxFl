import 'package:flutter/material.dart';


class WdtavaliarWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.star_half, color: Colors.blue),
              title: Text('Avaliação do atendimento'),
            ),

            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Regular'),
                    onPressed: () { print('passou no regular'); },
                  ),
                  FlatButton(
                    child: const Text('Bom'),
                    onPressed: () { print('passou no bom'); },
                  ),
                  FlatButton(
                    child: const Text('Muito Bom'),
                    onPressed: () { print('passou no muito bom'); },
                  ),
                  FlatButton(
                    child: const Text('ótimo'),
                    onPressed: () { print('passou no ótimo'); },
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
