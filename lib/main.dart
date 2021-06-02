import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/screens/FirstScreen.dart';
import 'package:flutter_calculator/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]) //app runs only on portrait mode
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false, //remove debug banner
      theme: ThemeData(
        primaryColor: kMainColor,
        scaffoldBackgroundColor: kMainColor,
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(title: 'Calculator'),
    );
  }
}
