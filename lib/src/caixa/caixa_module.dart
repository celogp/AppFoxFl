import 'package:appfox/src/caixa/wdtCaixa_bloc.dart';
import 'package:appfox/src/caixa/transacao_bloc.dart';
import 'package:appfox/src/caixa/fechar_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class CaixaModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => WdtCaixaBloc()),
        Bloc((i) => TransacaoBloc()),
        Bloc((i) => FecharBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<CaixaModule>.of();
}
