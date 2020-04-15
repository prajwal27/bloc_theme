import 'package:bloc_theme/global/theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  ThemeEvent([List props = const <dynamic>[]]) : super (props);
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({@required this.theme}) : super([theme]);


}
