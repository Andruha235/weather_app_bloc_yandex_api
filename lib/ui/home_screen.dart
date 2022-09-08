import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_bloc_yandex_api/widgets/refresh.dart';

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
          onRefresh: _refresh,
          child: Container(
            height: double.infinity,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),),
                  child: Image.asset('assets/images/img_7.png'),
                ),
                Container(
                  height: 120,
                  width: 392,
                  child: AnimatedBuilder(
                    animation: _ColorAnimationController,
                    builder: (context, child) => AppBar(
                      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
                      backgroundColor: _colorTween.value,
                      centerTitle: true,
                      elevation: 0,
                      titleSpacing: 0,
                      title: Column(
                        children: [
                          Text('Москва', style: TextStyle(fontSize: 18),),
                          Text('Обручевский район', style: TextStyle(fontSize: 15,),),
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
                SingleChildScrollView(
                  child:  Container(
                    margin: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('+9°', style: TextStyle(fontSize: 40, color: Colors.white), ),
                            Icon(Icons.wb_cloudy, size: 32, color: Colors.white,),
                          ],
                        ),
                        Text('Небольшой дождь', style: TextStyle(fontSize: 20, color: Colors.white),),
                        Text('Ощущается как +5°', style: TextStyle(fontSize: 20, color: Colors.white),),
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

Future<void> _refresh() async {}

// Column(
// children: [
// Stack(
// children: [
// Container(
// height: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(40),
// ),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(40),
// child: Image.asset('assets/images/img.png', fit: BoxFit.cover,),
// ),
// )
// ],
// )
// ],
// ),
