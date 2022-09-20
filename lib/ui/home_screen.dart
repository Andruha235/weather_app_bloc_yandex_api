import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import '../widgets/10_days_forecast.dart';
import '../widgets/dots_indicator.dart';
import '../widgets/horizontal_scroll_weather_24h.dart';
import '../widgets/marketing.dart';
import '../widgets/marketing_down.dart';
import '../widgets/refresh.dart';
import '../widgets/triple_horizontal_pages.dart';
import '../widgets/weather_basic_parametr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _ColorAnimationController;
  late AnimationController _TextAnimationController;
  late Animation _colorTween, _iconColorTween;
  late Animation<Offset> _transTween;

  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Color(0xFFee4c4f))
        .animate(_ColorAnimationController);
    _iconColorTween = ColorTween(begin: Colors.grey, end: Colors.white)
        .animate(_ColorAnimationController);

    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    _transTween = Tween(begin: Offset(-10, 40), end: Offset(-10, 0))
        .animate(_TextAnimationController);

    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 350);

      _TextAnimationController.animateTo(
          (scrollInfo.metrics.pixels - 350) / 50);
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: NotificationListener<ScrollNotification>(
        onNotification: _scrollListener,
        child: RefreshIndicator(
          onRefresh: refresh,
          child: Container(
            color: Colors.white ,
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            child: Image.asset('assets/images/img_7.png'),
                          ),
                          basicParametr(),
                          horizontal_scroll_weather_24h(),
                          tripleHorizontalPage(),
                          dotsIndicator(),
                          marketing(),
                          tenDaysForecast(),
                          marketing_down(),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(                                          // AppBar
                  height: 120,
                  width: 392,
                  child: AnimatedBuilder(
                    animation: _ColorAnimationController,
                    builder: (context, child) => AppBar(
                      systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor: Colors.transparent),
                      backgroundColor: _colorTween.value,
                      centerTitle: true,
                      elevation: 0,
                      titleSpacing: 0,
                      title: Column(
                        children: [
                          Text(
                            'Москва',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Обручевский район',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      iconTheme: IconThemeData(
                        color: _iconColorTween.value,
                      ),
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu_open_rounded),
                        color: Colors.white,
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
