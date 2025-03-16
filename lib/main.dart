import 'package:flutter/material.dart';
import 'package:learnflutter/core/theme/color_schemes.dart';
import 'package:learnflutter/screen/BottomNavigationScreen.dart';
import 'package:learnflutter/screen/CardViewWidget.dart';
import 'package:learnflutter/screen/CustomFontUsagesScreen.dart';
import 'package:learnflutter/screen/FlexBoxPattern.dart';
import 'package:learnflutter/screen/GestureDedectionScreen.dart';
import 'package:learnflutter/screen/HomeScreen.dart';
import 'package:learnflutter/screen/ImagesScreen.dart';
import 'package:learnflutter/screen/ListViewWidget.dart';
import 'package:learnflutter/screen/StatefulWidgetScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Flutter',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: colorSchemeLight,
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        colorScheme: colorSchemeDark,
      ),
      themeMode: ThemeMode.light,
      //  home: const UserPermission(),
      //  home: const HomeScreen(),
      // home: const ImagesScreen(),
      // home: FlexBoxPattern(),
      // home: StatefulWidgetScreen(),
      // home: GestureDedectionScreen(),
      // home: ListViewWidget(),
      //home: CustomFontSagesScreen(),
      //home: BottomNavigationScreen(),
      home: CardViewWidget(),
    );
  }
}
