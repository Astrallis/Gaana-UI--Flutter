import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmnav/bmnav.dart' as bmnav;


class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  int currentTab = 0;

  final List<Widget> screens = [
    Home(), Workouts(), Account(), Settings()
  ];
  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    _portraitModeOnly();
    final double deviceheight = MediaQuery.of(context).size.height;
    final double devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        color: Color(0xff1b1b1b),
        iconStyle: bmnav.IconStyle(onSelectColor: Colors.red),
        labelStyle: bmnav.LabelStyle(onSelectTextStyle: TextStyle(color: Colors.red), ),
        index: currentTab,
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.mic_none, label: 'Search'),
          bmnav.BottomNavItem(Icons.radio, label: 'Radio'),
          bmnav.BottomNavItem(Icons.music_video, label: 'My Music')
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final double deviceheight = MediaQuery.of(ctx).size.height;
    final double devicewidth = MediaQuery.of(ctx).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 620,
            child: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 40,
                elevation: 0,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/sliverbg.jpg"),
                ),
                title: Container(
                  child: Image.asset(
                    "assets/sliverbg.png",
                    scale: 35,
                  ),

                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search,color: Colors.white54,), ),
                  IconButton(
                    icon: Icon(Icons.notifications_none,color: Colors.white54,)),
                  IconButton(
                    icon: Icon(Icons.settings,color: Colors.white54,)),
                ],
              ),
              SliverList(

                delegate: SliverChildListDelegate([
                  Container(
                    padding: EdgeInsets.only(left: 16,top: 5),
                    child:Container(

                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1,

                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      height: 60,
                      color: Color(0xff1b1b1b),
                    ),
                    color: Color(0xff1b1b1b),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(left: 16,bottom: 16),
                      color: Color(0xff1b1b1b),
                      child:Row(

                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                            backgroundImage: NetworkImage("https://a10.gaanacdn.com/images/playlists/27/7447627/crop_480x480_7447627_1488863362.jpg"),
                            radius: 37,
                          ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/71WU4SYujfL._SS500_.jpg"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://a10.gaanacdn.com/images/playlists/87/1722887/crop_175x175_1722887.jpg"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://a10.gaanacdn.com/images/playlists/77/10344377/crop_175x175_1551076846_10344377.jpg"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("http://cdn.edjing-project.appspot.com/v2/store/sample_pack/edjingFreeUniversalSamplePack13/cover"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("http://cdn.edjing-project.appspot.com/v2/store/sample_pack/edjingFreeUniversalSamplePack4/cover"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwYJ1rwIylMuOBqQtkl2YsygFgZQwWbKGQdMVNpXv6BhpCNEgY"),
                              radius: 37,
                            ),),


                        ],
                      ),
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      color: Color(0xff1b1b1b),
                      child:Row(

                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 140,
                                width: 285,
                                color:Colors.red,

                                //stack here
                              ),

                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/71WU4SYujfL._SS500_.jpg"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://a10.gaanacdn.com/images/playlists/87/1722887/crop_175x175_1722887.jpg"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://a10.gaanacdn.com/images/playlists/77/10344377/crop_175x175_1551076846_10344377.jpg"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("http://cdn.edjing-project.appspot.com/v2/store/sample_pack/edjingFreeUniversalSamplePack13/cover"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("http://cdn.edjing-project.appspot.com/v2/store/sample_pack/edjingFreeUniversalSamplePack4/cover"),
                              radius: 37,
                            ),),
                          Padding(
                            padding: EdgeInsets.only(right:10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwYJ1rwIylMuOBqQtkl2YsygFgZQwWbKGQdMVNpXv6BhpCNEgY"),
                              radius: 37,
                            ),),


                        ],
                      ),
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    color: Colors.black,
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            height: deviceheight-678,color: Color(0xff1b1b1b),
          )
        ],
      ),
    );
  }
}

class Workouts extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final double deviceheight = MediaQuery.of(ctx).size.height;
    final double devicewidth = MediaQuery.of(ctx).size.width;
    return Center(child: Text('Workouts', style: TextStyle(fontSize: 24.0)));
  }
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Center(child: Text('Account', style: TextStyle(fontSize: 24.0)));
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Center(child: Text('Settings', style: TextStyle(fontSize: 24.0)));
  }
}

void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
