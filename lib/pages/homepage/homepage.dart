import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/design/design_content.dart';
import 'package:kaffie_website/pages/homepage/h_appbar.dart';
import 'package:kaffie_website/pages/homepage/resized_background_image.dart';
import 'package:kaffie_website/pages/homepage/signup/signup_content.dart';
import 'package:kaffie_website/pages/homepage/speed/speed_content.dart';

import 'package:kaffie_website/theme/size_config.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              ResizedBackgroundImage(),
              Column(
                children: [
                  HAppBar(),
                  SignupContent(),
                ],
              )
            ],
          ),
          Column(
            children: [
              DesignContent(),
              SpeedContent()
            ],
          ),
        ],
      ),
    );
  }

}
