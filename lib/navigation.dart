import 'package:flutter/material.dart';

import 'package:flutter_navigator_1/main.dart';
import 'package:flutter_navigator_1/secondPage.dart';
import 'package:flutter_navigator_1/thirdPage.dart';

class SlideTransitionPage extends PageRouteBuilder {
 final Widget child;

  SlideTransitionPage(
      {required this.child,
      RouteSettings? settings,})
      : super(
            settings: settings,
            pageBuilder: (context, animation, secondAnimation) => child,
      );
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  if (settings.name == MyHomePage.pageName) {
    return SlideTransitionPage(
      child:const MyHomePage(title: 'Home Page'),
      settings: settings,
    );
  } else if (settings.name == SecondPage.pageName) {
    return SlideTransitionPage(child:const SecondPage(data: 'Second Page'));
  } else if (settings.name == ThirdPage.pageName) {
    return SlideTransitionPage(
      child:const ThirdPage(data: 'ThirdPage',
    ));
  }
}
