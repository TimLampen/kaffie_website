import 'package:flutter/widgets.dart';

import 'pages/homepage/homepage.dart';

///All the different 'pages' in the app, used for navigation.
final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => HomePage(),
};
