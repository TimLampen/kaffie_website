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
          return Container(//first section container
              color: Theme.of(context).highlightColor,
              height: SizeConfig.scaleH*80,
              child: Row(//basically the row with the text and image
                children: [
                  DesktopSignupText(),
                  Container(
                      width: SizeConfig.scaleW*40,
                      padding: EdgeInsets.all(SizeConfig.scaleW*2.5),
                      child: Image.asset("assets/brew_no_bg.png")
                  )
                ],
              )
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
