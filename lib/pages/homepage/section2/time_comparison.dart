import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kaffie_website/theme/size_config.dart';

class TimeComparison extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.scaleW*60,
      child: Column(
        children: [
          Container(
            width: 550,
            margin: EdgeInsets.only(bottom: 100),
            child: Text(
              "On average, Kaffie can brew your coffee faster than any other coffee-competitor on the market, due to it's fast-wakeup mechanism when paired with your Apple Watch.",
              style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeCard(
                  title: "Built-in coffee machine",
                  seconds: 65,
                  isKaffie: false,
                ),
                SizedBox(width: 50),
                TimeCard(
                  title: "Drip-type coffee machine",
                  seconds: 75,
                  isKaffie: false,
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeCard(
                  title: "Competitor pod machine",
                  seconds: 65,
                  isKaffie: false,
                ),
                SizedBox(width: 50),
                TimeCard(
                  title: "Kaffie's brewing machine. ",
                  seconds: 15,
                  isKaffie: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class TimeCard extends StatelessWidget {

  final String title;
  final int seconds;
  final bool isKaffie;
  TimeCard({Key key, this.title, this.seconds, this.isKaffie}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.isKaffie ? Colors.white : Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: this.isKaffie ? [
          BoxShadow(
            color: Colors.white30,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ] : null,
      ),
      width: 200,
      height: 200,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(FontAwesome5.clock, size: 65),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                this.title,
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "${this.seconds}s",
                style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
