import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget{
  final AppBar appBar;

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);

  HAppBar({Key key, @required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 229, 217, 1),
      elevation: 0,
      title: Container(
        margin: EdgeInsets.only(left: SizeConfig.scaleW*1, top: SizeConfig.scaleH*3),
        child: Row(
          children: [
            Container(
              child: Text("Kaffie", style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.bold)),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Product", style: Theme.of(context).textTheme.headline3),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Design", style: Theme.of(context).textTheme.headline3),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Sustainability", style: Theme.of(context).textTheme.headline3),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
            Container(
              child: Text("Features", style: Theme.of(context).textTheme.headline3),
              margin: EdgeInsets.only(right: SizeConfig.scaleW*2),
            ),
          ],
        ),
      ),
    );
  }

}
