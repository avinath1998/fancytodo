import 'package:device_preview/device_preview.dart';
import 'package:fancy_todo/screens/todo_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.loggerName} ${record.message}');
  });
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder,
      title: 'Fancy Todo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        dividerTheme: DividerThemeData(space: 1),
        accentColor: Colors.redAccent,
        buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
            buttonColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)))),
        appBarTheme: AppBarTheme(
            color: Colors.white,
            textTheme: TextTheme(headline3: TextStyle(color: Colors.red))),
        cardTheme: CardTheme(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoScreen(),
    );
  }
}
