import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/h_appbar.dart';
import 'package:kaffie_website/pages/homepage/section1/s1_content.dart';
import 'package:kaffie_website/pages/homepage/section2/s2_content.dart';
import 'package:kaffie_website/pages/homepage/section3/s3_content.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          HAppBar(),
          S1(),
          S2(),
          S3(),
        ],
      ),
    );
  }

}
