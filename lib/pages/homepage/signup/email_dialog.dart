import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/signup/emailform.dart';
import 'package:kaffie_website/theme/size_config.dart';

class EmailDialog extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new SimpleDialog(
      contentPadding: EdgeInsets.all(SizeConfig.scaleW*5),
      children: [
        Text(
          "Kaffie pre-orders are set to launch soon in a limited supply. Don't miss out on your opportunity to get one.",
          style: Theme.of(context).accentTextTheme.headline2,
        ),
        SizedBox(height: 10),
        MobileEmailForm()
      ],
    );
  }

}
