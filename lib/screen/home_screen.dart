import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 100.0,
              forceElevated: true,
              floating: true,
              //pinned: true,
              leading: IconButton(
                  icon: Icon(Icons.settings), iconSize: 30.0, onPressed: () {}),
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Simple Budget'),
                centerTitle: true,
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.add), iconSize: 30.0, onPressed: () {})
              ],
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  color: Colors.red,
                );
              },
              childCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}
