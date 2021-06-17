import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kaffie_website/theme/size_config.dart';

class TimeComparison extends StatelessWidget {

  final bool isMobile;
  TimeComparison({Key key,this.isMobile = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: this.isMobile ? 0 : 50),
      child: Column(
        children: [
          TimeCard(
            title: "Kaffie",
            subtitle: "The fastest machine in the industry.",
            seconds: 10,
            isKaffie: true,
            isMobile: this.isMobile,
          ),
          TimeCard(
            title: "Leading pod-type machine",
            subtitle: "4x slower.",
            seconds: 40,
            isMobile: this.isMobile,

          ),
          TimeCard(
            title: "Drip-type coffee machine",
            subtitle: "10x slower.",
            seconds: 160,
            isMobile: this.isMobile,

          ),
          TimeCard(
            title: "Built-in coffee machine",
            subtitle: "22x slower.",
            seconds: 225,
            isMobile: this.isMobile,

          ),

        ]
      ),
    );
  }

}

class TimeCard extends StatelessWidget {

  final String title, subtitle;
  final int seconds;
  final bool isKaffie;
  final bool isMobile;
  TimeCard({Key key, this.title, this.subtitle, this.seconds, this.isMobile = false, this.isKaffie = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    if (this.isMobile) {
      return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: this.isKaffie ? Theme
              .of(context)
              .primaryColorDark : Theme
              .of(context)
              .highlightColor,
        ),
        width: 200,
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.title, style: this.isKaffie ? Theme
                      .of(context)
                      .accentTextTheme
                      .headline2.copyWith(color: Colors.white) : Theme
                      .of(context)
                      .accentTextTheme
                      .headline2
                      .copyWith(color: Colors.black54)),
                  Text(this.isKaffie ? this.subtitle : "${this.subtitle}",
                      style: this.isKaffie ? Theme
                          .of(context)
                          .accentTextTheme
                          .headline3.copyWith(color: Colors.white) : Theme
                          .of(context)
                          .accentTextTheme
                          .headline3
                          .copyWith(color: Colors.black54)),
                ],
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.centerRight,
              child: Text("${this.seconds}s", style: Theme.of(context).accentTextTheme.headline2.copyWith(color: this.isKaffie ? Colors.white : Colors.black54)))
          ],
        )/*Card(
          color: this.isKaffie ? Theme
              .of(context)
              .primaryColorDark : Theme
              .of(context)
              .highlightColor,
          child: ListTile(
            leading: Icon(FontAwesome5.clock, color: this.isKaffie ? Colors.white : Colors.black54, size: 16,),
            trailing: Text("${this.seconds}s", style: Theme.of(context).accentTextTheme.headline2.copyWith(color: this.isKaffie ? Colors.white : Colors.black54)),
            title: Text(this.title, style: this.isKaffie ? Theme
                .of(context)
                .accentTextTheme
                .headline2.copyWith(color: Colors.white) : Theme
                .of(context)
                .accentTextTheme
                .headline2
                .copyWith(color: Colors.black54)),
            subtitle: Text(this.isKaffie ? this.subtitle : "${this.subtitle}",
                style: this.isKaffie ? Theme
                    .of(context)
                    .accentTextTheme
                    .headline3.copyWith(color: Colors.white) : Theme
                    .of(context)
                    .accentTextTheme
                    .headline3
                    .copyWith(color: Colors.black54)),
          ),
        ),*/
      );
    }
    else {
      return Container(
        child: Card(
          color: this.isKaffie ? Theme
              .of(context)
              .primaryColorDark : Theme
              .of(context)
              .highlightColor,
          child: ListTile(
            leading: Icon(FontAwesome5.clock, color: this.isKaffie ? Colors.white : Colors.black54),
            trailing: Text("${this.seconds}s", style: this.isKaffie ? Theme
                .of(context)
                .textTheme
                .headline3.copyWith(color: Colors.white) : Theme
                .of(context)
                .textTheme
                .headline3
                .copyWith(color: Colors.black54)),
            title: Text(this.title, style: this.isKaffie ? Theme
                .of(context)
                .textTheme
                .headline2.copyWith(color: Colors.white) : Theme
                .of(context)
                .textTheme
                .headline2
                .copyWith(color: Colors.black54)),
            subtitle: Text(this.isKaffie ? this.subtitle : "${this.subtitle}",
                style: this.isKaffie ? Theme
                    .of(context)
                    .textTheme
                    .headline3.copyWith(color: Colors.white) : Theme
                    .of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.black54)),
          ),
        ),
      );
    }
  }

}
