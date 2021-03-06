import 'package:disenos_flutter_app/src/pages/basic_page.dart';
import 'package:disenos_flutter_app/src/pages/buttons_page.dart';
import 'package:disenos_flutter_app/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ) );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: '/buttons',
      routes: {
        '/basico'   : (BuildContext context) => BasicPage(),
        '/scroll'   : (BuildContext context) => ScrollPage(),
        '/buttons'  : (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
