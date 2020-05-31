import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "GALLERIA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'KaushanScript',
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/party.png'),
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Photos Gallery!!!",
                  style: TextStyle(fontFamily: 'KaushanScript'),
                ),
              ),
            ),
            SliverStaggeredGrid.countBuilder(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset('images/$index.jpg'),
                    ),
                  );
                },
                itemCount: 18)
          ],
        ),
      ),
    );
  }
}
