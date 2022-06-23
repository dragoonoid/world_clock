import 'package:flutter/material.dart';
import 'package:world_clock/dark_light.dart';
import 'package:provider/provider.dart';
import 'package:world_clock/screen/change_place.dart';
import 'package:world_clock/screen/loading.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/day.jpg"), context);
    precacheImage(const AssetImage("assets/night.jpg"), context);
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        //final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const Loading(),
            '/home': (context) => const MyHomePage(
                  title: 'World Clock',
                ),
            '/location': (context) => const Location(),
          },
          title: 'Flutter Demo',
          //themeMode: themeProvider.theme,
          themeMode: ThemeMode.dark,
          theme: DarkLight.light,
          darkTheme: DarkLight.dark,
        );
      },
    );
  }
}
