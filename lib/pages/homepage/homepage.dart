import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/design/design_content.dart';
import 'package:kaffie_website/pages/homepage/h_appbar.dart';
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
          HAppBar(),
          SignupContent(),
          Container(
            padding: EdgeInsets.only(bottom: 100, top: 100),
            color: Theme.of(context).primaryColorDark,
            child: Column(
              children: [
                DesignContent(),
                SpeedContent()
              ],
            ),
          ),
        ],
      ),
    );
  }

}
