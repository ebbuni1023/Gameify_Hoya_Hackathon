import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gameify/widgets/nav-bar.dart';

class Leaderbo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Leaderboard',
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
      body: BoardList(),
    );
  }
}


class BoardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Container _lposition(int position){
      String postem = '$position.';
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        child: Text( postem,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      );
    }

    Container _lpoints(int points){
      String poitem = '$points';
      return Container(
        padding: EdgeInsets.all(10),
        child: Text( poitem,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      );
    }

    Container _limg(String filename){
      return Container(
        padding: EdgeInsets.all(15),
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

    Container _lname(String name){
      return Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 10, right: 50),
          child: Text(name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      );
    }
    
    Container _listName(String name, int position, String filename, int points){
      return Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _lposition(position),
            _limg(filename),
            _lname(name),
            _lpoints(points),
          ],
        ),
      );
    }

    return SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                _listName('Random 1', 1, 'assets/images/mountain1.jpg', 45),
                _listName('Random 2', 2, 'assets/images/mountain1.jpg', 30),
                _listName('Random 1', 3, 'assets/images/mountain1.jpg', 45),
                _listName('Random 2', 4, 'assets/images/mountain1.jpg', 30),
                _listName('Random 1', 5, 'assets/images/mountain1.jpg', 45),
                _listName('Random 1', 6, 'assets/images/mountain1.jpg', 45),
                _listName('Random 2', 7, 'assets/images/mountain1.jpg', 30),
                _listName('Random 1', 8, 'assets/images/mountain1.jpg', 45),
                _listName('Random 2', 9, 'assets/images/mountain1.jpg', 30),
                _listName('Random 1', 10, 'assets/images/mountain1.jpg', 45),
                _listName('Random 1', 11, 'assets/images/mountain1.jpg', 45),
                _listName('Random 2', 12, 'assets/images/mountain1.jpg', 30),
                _listName('Random 1', 13, 'assets/images/mountain1.jpg', 45),
                _listName('Random 2', 14, 'assets/images/mountain1.jpg', 30),
                _listName('Random 1', 15, 'assets/images/mountain1.jpg', 45),
              ],
            ),
          ],
        ),
    );
  }
}
