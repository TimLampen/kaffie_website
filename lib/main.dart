import 'package:flutter/material.dart';
import 'package:kaffie_website/routes.dart';
import 'package:kaffie_website/theme/size_config.dart';
import 'package:kaffie_website/theme/style.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase/firebase.dart';


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




