import 'package:flutter/material.dart';
import 'package:gameify/widgets/nav-bar.dart';

class scheduler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('App_Name',
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
      body: Column(

      ),
    );
  }
}
