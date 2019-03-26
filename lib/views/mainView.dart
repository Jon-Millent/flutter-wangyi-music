
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
      body: Container(
        child: Stack(
          children: <Widget>[
            new TabBarView(
              controller: _tabController,
              children: <Widget>[
                new Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text('12132', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                new Center(child: new Text('发现')),
                new Center(child: new Text('朋友')),
                new Center(child: new Text('视频')),
              ],
            ),
            Positioned(
              child: Container(
                height: 40,
                color: Color.fromRGBO(255, 255, 255, 0.8),
              ),
              left: 0,
              bottom: 0,
              right: 0,
            )
          ],
        ),
      ),
      drawer: Drawer(   // this will set the drawer
        child: Container(
          child: Text('xxxxxx'),
        ) // render your drawer Widget here
      )
    );
  }
}