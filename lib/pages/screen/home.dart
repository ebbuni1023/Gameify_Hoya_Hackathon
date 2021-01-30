import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:gameify/pages/friends/frndlist.dart';
import 'package:gameify/pages/friends/leaderboard.dart';
import 'package:gameify/pages/profiles/profile.dart';
import 'package:gameify/pages/Schedule.dart';
import 'package:gameify/widgets/nav-bar.dart';
import 'package:gameify/pages/screen/home.dart';
import 'package:gameify/pages/screen/splash.dart';
import 'package:gameify/pages/screen/auth.dart';


class HomePage extends StatefulWidget {
  final String username;
  HomePage({Key key, @required this.username}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
            Icons.exit_to_app,
            size: 25,
            color: Colors.white,
          ),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await googleSignIn.disconnect();
              await googleSignIn.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => AuthScreen()),
                      (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
      body: HomeBody(),
    );
  }
}



class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/space1.jpg',
            fit: BoxFit.cover,
            height: 240,
            width: 600,
          ),

        ],
      ),
    );
  }
}
