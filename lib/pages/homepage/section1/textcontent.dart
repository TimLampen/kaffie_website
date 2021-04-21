import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/section1/emailform.dart';
import 'package:kaffie_website/theme/size_config.dart';

class S1TextContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: SizeConfig.scaleW*10, top: SizeConfig.scaleH*20),
      width: SizeConfig.scaleW*50,
      child: Column(
        children: [
          Text("Simplify your morning routine.", style: Theme.of(context).textTheme.headline1),
          SizedBox(height: SizeConfig.scaleH*2),
          Text("Mornings don’t have to be the worst part of your day. Kaffie makes it the best part.", style: Theme.of(context).textTheme.headline2),
          SizedBox(height: SizeConfig.scaleH*2),
          EmailForm()
        ],
      ),
    );
  }

}
