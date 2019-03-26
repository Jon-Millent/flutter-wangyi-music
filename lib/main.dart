import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_music/router/router.dart';
import 'package:flutter_music/router/application.dart';
import 'package:flutter_music/theme/GlobalConfig.dart';
import 'package:flutter/services.dart';

import 'package:flutter_music/views/mainView.dart';

void main(){

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  MyApp()  {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return new MaterialApp(
      title: '',
      theme: GlobalConfig.themeData,
      home: new MainViewWidget(),
      // 静态路由，不能传参
      routes: {
      },

      onGenerateRoute: Application.router.generator,

    );
  }
}