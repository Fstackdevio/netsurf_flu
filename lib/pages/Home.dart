import 'package:flutter/material.dart';
import 'package:netsurf/static/home_list.dart' as homeList;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: new GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 25.0
        ),
        padding: const EdgeInsets.all(10.0),
        itemCount: homeList.list.length,
        itemBuilder: (BuildContext context, int index) {
          return new GridTile(
            footer: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Flexible(
                  child: new SizedBox(
                    height: 25.0,
                    width: 150.0,
                    child: new Text(
                      homeList.list[index]["name"],
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ]
            ),
            child: new Container(
              height: 500.0,
              child: new GestureDetector(
                onTap: homeList.list[index]["onTap"],
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Row(
                        children: <Widget>[
                          new Stack(
                            children: <Widget>[
                              new SizedBox(
                                child: new Container(
                                  child: new CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40.0,
                                    child: new Icon(
                                      homeList.list[index]["icon"],
                                      size: 40.0,
                                    ),
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                )
                              )
                            ]
                          )
                        ],
                      )
                    )
                  ],
                )
              )
            ),
          );
        },
      ),
    );
  }
} 