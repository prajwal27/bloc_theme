import 'package:bloc_theme/global/theme/theme_bloc.dart';
import 'package:bloc_theme/global/theme/theme_state.dart';
import 'package:bloc_theme/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
        return MaterialApp(
          title: 'Material App',
          theme: state.themeData,
          home: HomePage()
        );
      }
}
