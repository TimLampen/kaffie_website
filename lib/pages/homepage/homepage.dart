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
          Stack(
            children: [
              Image.asset("assets/brew_bg_full.png", width: SizeConfig.scaleW*100,),
              Column(
                children: [
                  HAppBar(),
                  SignupContent(),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(SizeConfig.scaleW*5, 100, SizeConfig.scaleW*5, 100),
            color: Color.fromRGBO(250, 255, 253, 1),
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
