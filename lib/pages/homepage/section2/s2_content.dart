import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaffie_website/pages/homepage/section2/time_comparison.dart';
import 'package:kaffie_website/theme/size_config.dart';

class S2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      height: SizeConfig.scaleH*120,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: SizeConfig.scaleH*2, bottom: SizeConfig.scaleH*2),
            child: Text("Brew more, in way less time.", style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white)),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: SizeConfig.scaleH*10),
                alignment: Alignment.center,
                width: SizeConfig.scaleW*35,
                child: Image.asset("assets/coffee_just_machine.png")),
              TimeComparison()
            ],
          )
        ],
      ),
    );
  }

}
