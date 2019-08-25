import 'package:appfox/src/venda/vender_bloc.dart';
import 'package:appfox/src/settings/settings_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:appfox/src/app_widget.dart';
import 'package:appfox/src/app_bloc.dart';

import 'caixa/fechar_bloc.dart';
import 'caixa/transacao_bloc.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => VenderBloc()),
        Bloc((i) => FecharBloc()),
        Bloc((i) => TransacaoBloc()),
        Bloc((i) => SettingsBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
