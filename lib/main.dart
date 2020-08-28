import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
   @override
  Widget build(BuildContext context)
   {
     return DefaultTabController(
       length: 5,
       child: Scaffold(
         backgroundColor: Colors.black,
         body:TabBarView(children: <Widget>[
           Text("1"),
           Text("1"),
           Text("1"),
           Text("1"),
           Text("1"),

         ]
         ),
         bottomNavigationBar: TabBar(tabs: <Widget>[
           Badge(
             child: Tab(
               icon: Icon(
                 FontAwesomeIcons.heart
               ),
             ),
             badgeContent: Text("2"),
             badgeColor: Colors.white,
           ),
           Badge(
             child: Tab(
               icon: Icon(
                   FontAwesomeIcons.comment
               ),
             ),
             badgeContent: Text("3"),
             badgeColor: Colors.white,
           ),

           Tab(
             child: FlatButton(onPressed: (){
               debugPrint("video button click");
             }, child: Image.asset('images/video_icon.png')),
           ),
           Badge(
             child: Tab(
               icon: Icon(
                   FontAwesomeIcons.shareSquare
               ),
             ),
             badgeContent: Text("3"),
             badgeColor: Colors.white,
           ),
           Badge(
             child: Tab(
               icon: Icon(
                   Icons.remove_red_eye
               ),
             ),
             badgeContent: Text("3"),
             badgeColor: Colors.white,
           ),
         ]
         ),
       ),
     );
   }
}
