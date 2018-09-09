import 'package:flutter/material.dart';
import 'package:netsurf/pages/Ewallet.dart';
import 'package:netsurf/pages/Home.dart';
import 'package:netsurf/pages/about_screen.dart';
import 'package:netsurf/pages/feedback_screen.dart';
import 'package:netsurf/pages/login_screen.dart';
import 'package:netsurf/pages/message_screen.dart';
import 'package:netsurf/pages/network_screen.dart';
import 'package:netsurf/pages/profile_screen.dart';
import 'package:netsurf/pages/settings_screen.dart';

class WrapperScreen extends StatefulWidget {
  @override
  _WrapperScreenState createState() => new _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController= new TabController(initialIndex: 1, length: 2, vsync: this);
  }

 // Widget _select(Choice choice) {
 //   if(choice == choices[0]) {
 //         return _showModalSheet(),
 //   }
 //   else {
 //     return _showAlertDialog(),
 //   }
//  }

 // void _showModalSheet(Choice choice) {
  //  showModalBottomSheet(
  //    context: context,
  //    builder: (builder) {
   //     return new Container(
    //      height: 250.0,
       //   color: Colors.white,
       //   padding: const EdgeInsets.all(32.0),
      //    child: Row(
      //      children: <Widget>[
      //        Expanded(
       //         child: Column(
        //          crossAxisAlignment: CrossAxisAlignment.center,
         //         children: <Widget>[
                  //  Container(
                   //   padding: const EdgeInsets.only(bottom: 8.0),
                    //  child: Text('SETTINGS TRAY', 
                    //    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  //    ),
               //     )
               //   ],
             //   ),
           //   )
          //  ],
       //   )
       // );

     // });
  //}

  Column buttonColumn(IconData icon, String label) {
    Color color = Theme.of(context).accentColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }

 // void _showAlertDialog() {
 //   new AlertDialog(
 //     content: new Text(Lumous.quit_title, style: new TextStyle(fontSize: 20.0),
//      ),
//      actions: <Widget>[
//        new FlatButton(
//          color: Colors.blueAccent,
//          child: new Text(Lumous.dialog_yes),
//          onPressed: () => exit(0),
//        ),
//        new FlatButton(
//          color: Colors.blueAccent,
//          child: new Text(Lumous.dialog_no),
//          onPressed: () {
 //           Navigator.pop(context);
//          },
 //       ),
//      ],
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Netsurf'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor:Colors.white,
          tabs:<Widget>[
            new Tab(text:"Home"),
            new Tab(text:"E-Wallet"),
          ]
        ),
        //centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MessageScreen()
                  )
                );
            },
          ),
          new PopupMenuButton<Choice>(
            onSelected: null,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: new ListTile(
                    title: new Text(choice.title),
                    leading: new Icon(choice.icon),
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children:<Widget>[
          new Home(),
          new Ewallet(),
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Kalango Michael'),
              accountEmail: new Text('kalango.michael@lmu.edu.ng'),
              currentAccountPicture: new CircleAvatar(
              ),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.home,
                  size: 20.0,
                )
              ),
              title: new Text('Home'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => WrapperScreen()
                  )
                );
              }
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.account_circle,
                  size: 20.0,
                )
              ),
              title: new Text('Profile'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProfileScreen()
                  )
                );
              }
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.swap_horiz,
                  size: 20.0,
                )
              ),
              title: new Text('Switch Account'),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.feedback,
                  size: 20.0,
                )
              ),
              title: new Text('Feedback'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => FeedbackScreen()
                  )
                );
              }
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.info_outline,
                  size: 20.0,
                )
              ),
              title: new Text('About App'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => AboutScreen()
                  )
                );
              }
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.star,
                  size: 20.0,
                )
              ),
              title: new Text('Rate App'),
            ),
                        new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.settings,
                  size: 20.0,
                )
              ),
              title: new Text('Settings'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => SettingsScreen()
                  )
              );
              }
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.exit_to_app,
                  size: 20.0,
                )
              ),
              title: new Text('Logout'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()
                  )
                );
              }
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => NetworkScreen()
            )
          );
        },
        child: Icon(Icons.flash_on, color: Colors.white),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  //const Choice(title: ('Settings'), icon: Icons.settings),
  const Choice(title: ('Quit'), icon: Icons.exit_to_app),
];
