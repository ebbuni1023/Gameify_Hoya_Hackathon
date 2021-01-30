import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          DrawerHeader(
              child: Text('Gameify',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/mountain1.jpg'),),),
          ),
          ListTile(
            leading: Icon(Icons.add_box),
            title: Text('Scheduler'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/scheduler'),
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/profile',arguments: {'username':'Profile Name', 'filename':'assets/images/mountain1.jpg', 'streak_time': 6, 'total_point':555,'high_point': 44},),
            },
          ),
          //
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text('Friends'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/friendlist'),
            },
          ),
          ListTile(
            leading: Icon(Icons.leaderboard),
            title: Text('Leaderboard'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/leaderboard'),
            },
          ),
          /*
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/settings'),
            },
          ),
          */
        ],
      ),
    );
  }
}
