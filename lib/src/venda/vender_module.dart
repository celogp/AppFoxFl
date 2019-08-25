import 'package:appfox/src/venda/receber_bloc.dart';
import 'package:appfox/src/venda/wdtVenda_bloc.dart';
import 'package:appfox/src/venda/pesquisarProdVenda_bloc.dart';
import 'package:appfox/src/venda/receberVenda_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class VenderModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ReceberBloc()),
        Bloc((i) => WdtVendaBloc()),
        Bloc((i) => PesquisarProdVendaBloc()),
        Bloc((i) => ReceberVendaBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<VenderModule>.of();
}
