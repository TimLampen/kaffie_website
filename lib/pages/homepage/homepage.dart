import 'package:flutter/material.dart';
import 'package:kaffie_website/pages/homepage/design/design_content.dart';
import 'package:kaffie_website/pages/homepage/features/cup_feature.dart';
import 'package:kaffie_website/pages/homepage/features/eou_feature.dart';
import 'package:kaffie_website/pages/homepage/features/health_feature.dart';
import 'package:kaffie_website/pages/homepage/footer/footer.dart';
import 'package:kaffie_website/pages/homepage/footer/stay_in_touch.dart';
import 'package:kaffie_website/pages/homepage/h_appbar.dart';
import 'package:kaffie_website/pages/homepage/resized_background_image.dart';
import 'package:kaffie_website/pages/homepage/signup/signup_content.dart';
import 'package:kaffie_website/pages/homepage/speed/speed_content.dart';

import 'package:kaffie_website/theme/size_config.dart';

import 'bottom_navigation.dart';
import 'features/feature_header.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;


  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
          [
                Stack(
                  children: [
                    ResizedBackgroundImage(),
                    Column(
                      children: [
                        HAppBar(scrollController: this._scrollController),
                        SignupContent(),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    DesignContent(),
                    SpeedContent(),
                    FeatureHeader(),
                    Container(
                      width: SizeConfig.scaleW*100,
                      color: Theme.of(context).highlightColor,
                      child: Column(
                        children: [
                          HealthFeature(),
                          EaseOfUseFeature()
                        ],
                      ),
                    ),
                    CupFeature(),
                    StayInTouch(),
                    Footer(),
                  ],
                ),
              ]
            ),
          )
        ]
      ),
      bottomNavigationBar: BottomNavigation()
    );
  }
}
