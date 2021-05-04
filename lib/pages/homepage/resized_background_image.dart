import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class ResizedBackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if(constraints.maxWidth > 1050){
          return Image.asset("assets/brew_bg_full_desktop.png", width: SizeConfig.scaleW*100,);
        }
        else if(constraints.maxWidth > 500){
          return Image.asset("assets/brew_bg_full_laptop.png", width: SizeConfig.scaleW*100,);

        }
        else{
          return Image.asset("assets/brew_bg_full_mobile.png", width: SizeConfig.scaleW*100,);

        }
      },
    );
  }

}
