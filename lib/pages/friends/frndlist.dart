import 'package:flutter/material.dart';
import 'package:gameify/widgets/nav-bar.dart';

class friendlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Friendlist',
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
      body: fli(),
    );
  }
}

class fli extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    Container _fimg(String filename){
      return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(left: 15),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(filename),
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    Container _fname(String name){
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 15, right: 50),
        child: Text(name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      );
    }

    Container _frndName(String name, String filename, int streak, int total, int high){
      return Container(
        child: InkWell(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _fimg(filename),
                  _fname(name),
                ],
              ),
            ),
          ),
          onTap: () => {
            Navigator.of(context).pop(),
            Navigator.pushNamed(context, '/profile',arguments: {'username':name, 'filename':filename, 'streak_time': streak, 'total_point':total,'high_point': high},),
          },
        ),
      );
    }

    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children:<Widget>[
              _frndName('Random 1', 'assets/images/space1.jpg', 4, 66, 6),
              _frndName('Random 2', 'assets/images/mountain1.jpg',66, 87, 4545),
              _frndName('Random 3', 'assets/images/mountain1.jpg', 566, 5445, 354),
              _frndName('Random 4', 'assets/images/mountain1.jpg', 1, 3, 4),
              _frndName('Random 5', 'assets/images/mountain1.jpg', 54, 888, 77),
              _frndName('Random 6', 'assets/images/mountain1.jpg',67, 76, 767),
              _frndName('Random 7', 'assets/images/mountain1.jpg', 54, 455, 56),
            ],
          ),
        ],
      ),
    );
  }
}
