import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/signup/signup_text.dart';
import 'package:kaffie_website/theme/size_config.dart';

class SignupContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if(constraints.maxWidth > 1050){
          return Container(
            padding: EdgeInsets.only(left: SizeConfig.scaleW*45),
            child: DesktopSignupText()
          );
        }
        else if(constraints.maxWidth > 500){
          return Container(//first section container
              color: Theme.of(context).highlightColor,
              padding: EdgeInsets.only(bottom: SizeConfig.scaleH*20, top: SizeConfig.scaleH*10),
              child: LaptopSignupText()
          );
        }
        else{
          return Container(//first section container
              color: Theme.of(context).highlightColor,
              padding: EdgeInsets.only(bottom: SizeConfig.scaleH*10, top: SizeConfig.scaleH*5),
              child: MobileSignupText()
          );
        }
      },
    );
  }

}
