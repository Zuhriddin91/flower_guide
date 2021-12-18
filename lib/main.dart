import 'package:flower_guide/provider/plant_card_provider.dart';
import 'package:flower_guide/provider/tab_bar_provider.dart';
import 'package:flower_guide/core/components/app_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
        ChangeNotifierProvider(create: (_) => TextFieldProvider()),
        ChangeNotifierProvider(create: (_) => TabBarProvider()),
        ChangeNotifierProvider(create: (_)=> PageViewProvider()),
        ChangeNotifierProvider(create: (_)=> PlantCardProvider()),

      ],
      child: const MyApp(),
    ),
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flower Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        fontFamily: 'WorkSans',
        appBarTheme: MyAppBarTheme.theme,
      ),
      home:  HomePage(),
    );
  }
}
