
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music/util/Adapt.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MainViewWidget();
  }
}

class MainViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainViewWidgetState();
}

class MainViewWidgetState extends State<MainViewWidget> with SingleTickerProviderStateMixin {



  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();



    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor:Colors.transparent
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    _tabController = new TabController(vsync: this, length: 4);

  }



  @override
  Widget build(BuildContext context) {

    Adapt.init(context);

    // TODO: implement build
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: new AppBar(
          title: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              new Tab(
                text: '我的',
              ),
              new Tab(
                text: '发现',
              ),
              new Tab(
                text: '朋友',
              ),
              new Tab(
                text: '视频',
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            )
          ]
        ),

      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Center(child: new Text('我的')),
          new Center(child: new Text('发现')),
          new Center(child: new Text('朋友')),
          new Center(child: new Text('视频')),
        ],
      ),
      drawer: Drawer(   // this will set the drawer
        child: Container(
          child: Text('xxxxxx'),
        ) // render your drawer Widget here
      )
    );
  }
}