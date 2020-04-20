import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabbarController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';
import '../pages/FormDome.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';
import '../pages/Http.dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context) => Search(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/appbardemo': (context) => AppBarDemo(),
  '/tabBarController': (context) => TabBarController(),
  '/userCenter': (context) => UserCenter(),
  '/button': (context) => Button(),
  '/formDome': (context) => FormDome(),
  '/swiper': (context) => SwiperInfo(),
  '/dialog': (context) => DialogPage(),
  '/http': (context) => HttpPage()
};

// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
