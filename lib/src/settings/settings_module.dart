import 'package:appfox/src/settings/settings_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class SettingsModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => SettingsBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<SettingsModule>.of();
}
