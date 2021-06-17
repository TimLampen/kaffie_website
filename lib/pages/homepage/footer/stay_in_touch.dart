import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StayInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1150){
            return DesktopStayInTouch();
          }
          else if(constraints.maxWidth > 600) {
            return DesktopStayInTouch();
          }
          else{
            return MobileStayInTouch();
          }
        }
    );
  }
}


class DesktopStayInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 75),
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 227, 219, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.email_outlined,
            size: 196,
          ),
          Text("Stay in touch", style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 10),
          Text("Sign up below to stay updated on information surrounding Kaffie’s release.", style: Theme.of(context).textTheme.headline2)

        ],
      ),
    );
  }
}


class MobileStayInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 227, 219, 1),
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.email_outlined,
              size: 64,
            ),
            Text("Stay in touch", style: Theme.of(context).accentTextTheme.headline1),
            SizedBox(height: 10),
            Text("Sign up below to stay updated on information surrounding Kaffie’s release.", style: Theme.of(context).accentTextTheme.headline2, textAlign: TextAlign.center,)

          ],
        ),
      ),
    );
  }
}
