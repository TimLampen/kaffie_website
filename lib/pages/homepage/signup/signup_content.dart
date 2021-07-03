import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/signup/signup_text.dart';
import 'package:kaffie_website/theme/size_config.dart';

class SignupContent extends StatelessWidget{

  final ScrollController scrollController;
  SignupContent({Key key,@required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if(constraints.maxWidth > 1150){
          return Container(
            padding: EdgeInsets.only(left: SizeConfig.scaleW*45),
            child: DesktopSignupText(scrollController: this.scrollController)
          );
        }
        else if(constraints.maxWidth > 600){
          return Container(
              child: LaptopSignupText()
          );
        }
        else{
          return Container(
              child: MobileSignupText()
          );
        }
      },
    );
  }

}
