import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/section1/s1_textcontent.dart';
import 'package:kaffie_website/theme/size_config.dart';

class S1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(//first section container
        color: Theme.of(context).highlightColor,
        height: SizeConfig.scaleH*75,
        child: Row(//basically the row with the text and image
          children: [
            S1TextContent(),
            Container(
                width: SizeConfig.scaleW*50,
                child: Image.asset("assets/brew_no_bg.png")
            )
          ],
        )
    );
  }

}
