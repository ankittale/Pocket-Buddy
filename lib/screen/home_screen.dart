import 'package:flutter/material.dart';
import 'package:pocket_buggy/data/data.dart';
import 'package:pocket_buggy/widgets/bar_chart.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<double> weeklyExpending;

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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 6.0
                      )
                    ]
                  ),
                  child: BarChart(weeklySpending),
                );
              },
              childCount: 1,
            ))
          ],
        ),
      ),
    );
  }
}
