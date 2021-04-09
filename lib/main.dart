import 'package:flutter/material.dart';
import 'package:kaffie_website/routes.dart';
import 'package:kaffie_website/theme/size_config.dart';
import 'package:kaffie_website/theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaffie',
      theme: appTheme(),
      initialRoute: "/",
      routes: routes,

    );
  }
}




