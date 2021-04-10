import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/theme/size_config.dart';

class S2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      height: SizeConfig.scaleH*80,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: SizeConfig.scaleH*2, bottom: SizeConfig.scaleH*2),
            child: Text("What is Kaffie?", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white)),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: SizeConfig.scaleW*5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/brew_front.png", height: SizeConfig.scaleH*50,))),
            ],
          )
        ],
      ),
    );
  }

}
