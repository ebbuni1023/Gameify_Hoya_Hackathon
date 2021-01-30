import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gameify/widgets/nav-bar.dart';

var username, file_name, streak_d, total_d,high_d;


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String,Object> PageData= ModalRoute.of(context).settings.arguments;
    username = '${PageData['username']}';
    file_name = '${PageData['filename']}';
    streak_d = PageData['streak_time'];
    total_d = PageData['total_point'];
    high_d = PageData['high_point'];
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Gameify',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(
            Icons.home_outlined,
            size: 25,
            color: Colors.white,
          ),
            onPressed: () => {
              // do something
              Navigator.pushNamed(context, '/home')
            },
          ),
        ],
      ),
      body: PageView(),
    );
  }
}

class PageView extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    //Profile Images
    Container _primg(String filename){
      return Container(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(top: 50.0),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              image: DecorationImage(
                //Image of the user
                image: AssetImage(filename),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      );
    }

    //Profile name
    Container _profname(String name){
      return Container(
        padding: EdgeInsets.all(20),
        child: Text(name,
        style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
      );
    }


    Color color = Colors.black87;

    Column _statIcon(Color color, IconData icon, int poi_val){
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30,),
          Container(
            margin: EdgeInsets.only(top: 8.0,),
            child: Text('$poi_val',
              style: TextStyle(
                fontSize: 20,
                color: color,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    }



    Container _pcol(  String uname, String filename, int streak, int totalpoints, int highpoints){
      return Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(filename),
          ),
        ),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _primg(filename),
                _profname(uname),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Streak
                      _statIcon(color, Icons.date_range_outlined, streak),
                      //Points
                      _statIcon(color, Icons.stars, totalpoints),
                      //Highest points a day
                      _statIcon(color, Icons.insert_chart, highpoints),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      child: _pcol(username, file_name, streak_d, total_d, high_d),
    );
  }
}
