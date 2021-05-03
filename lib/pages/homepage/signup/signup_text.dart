import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/signup/emailform.dart';
import 'package:kaffie_website/theme/size_config.dart';

class DesktopSignupText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: SizeConfig.scaleW*10, top: SizeConfig.scaleH*20, right: SizeConfig.scaleW*5),
      width: SizeConfig.scaleW*55,
      child: Column(
        children: [
          Text("Reimagine the way you brew coffee.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white)),
          SizedBox(height: SizeConfig.scaleH*2),
          Text("Sign up below to stay updated on information surrounding Kaffie's release.", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white), textAlign: TextAlign.left,),
          SizedBox(height: SizeConfig.scaleH*2),
          DesktopEmailForm()
        ],
      ),
    );
  }

}

class LaptopSignupText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: SizeConfig.scaleH*10, left: SizeConfig.scaleW*10, right: SizeConfig.scaleW*10, bottom: SizeConfig.scaleH*10),
      child: Column(
        children: [
          Text("Simplify your morning routine.", style: Theme.of(context).textTheme.headline1),
          SizedBox(height: SizeConfig.scaleH*2),
          Text("Mornings don’t have to be the worst part of your day. Kaffie makes it the best part.", style: Theme.of(context).textTheme.headline2),
          SizedBox(height: SizeConfig.scaleH*2),
          LaptopEmailForm()
        ],
      ),
    );
  }
}

class MobileSignupText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: SizeConfig.scaleH*10, left: SizeConfig.scaleW*5, right: SizeConfig.scaleW*5, bottom: SizeConfig.scaleH*10),
      child: Column(
        children: [
          Text("Simplify your morning routine.", style: Theme.of(context).accentTextTheme.headline1),
          SizedBox(height: SizeConfig.scaleH*2),
          Text("Mornings don’t have to be the worst part of your day. Kaffie makes it the best part.", style: Theme.of(context).accentTextTheme.headline2),
          SizedBox(height: SizeConfig.scaleH*2),
          MobileEmailForm()
        ],
      ),
    );
  }
}
