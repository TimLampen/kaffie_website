import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class FeatureHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: SizeConfig.scaleW*100,
          alignment: Alignment.center,
          child: Text("Kaffie", style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 425, color: Theme.of(context).highlightColor)),
        ),
        Container(
          margin: EdgeInsets.only(top: 370),
          color: Theme.of(context).highlightColor,
          width: SizeConfig.scaleW*100,
          height: 200,
        )
      ],
    );
  }

}
