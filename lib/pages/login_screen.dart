import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:netsurf/pages/wrapper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin{

  TextEditingController ctrlUsername;
  TextEditingController ctrlPassword;

  AnimationController animationControllerButton;

  @override
    void initState() {

      ctrlUsername = new TextEditingController(
        text: ''
      );
      ctrlPassword = new TextEditingController(
        text: ''
      );
      super.initState();
      animationControllerButton = AnimationController(
        duration: Duration(
          seconds: 3
        ),
        vsync: this
      );
    }

  @override
    void dispose() {
      super.dispose();
      animationControllerButton.dispose();
    }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/login_cover.jpg')
              )
            ),
            child: Container(
              child: ListView(
                padding: const EdgeInsets.all(0.0),
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 270.0,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                ),
                                Icon(
                                  Icons.public,
                                  size: 150.0,
                                ),
                                Text('Netsurf',
                                  style: TextStyle(
                                    fontSize: 30.0, 
                                    color: Colors.white, 
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                TextFormField(
                                  controller: ctrlUsername,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person_outline),
                                    labelText: 'Username',
                                    labelStyle: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      inherit: true,
                                      color: Colors.red,
                                    )
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextFormField(
                                  controller: ctrlPassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock_outline),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: InputBorder.none
                                    ),
                                  ),
                                FlatButton(
                                  padding: const EdgeInsets.only(
                                    top: 200.00, 
                                    bottom: 30.0
                                  ),
                                  onPressed: null,
                                  child: Text('Forgot Password', 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 0.5
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]
                      ),
                      new InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => WrapperScreen()
                              )
                            );
                          });
                        },
                        child: new LogIn()
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Padding(
      padding: const EdgeInsets.all(100.0),
      child: new Container(
        alignment: FractionalOffset.center,
        width: 320.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.green[700],
          borderRadius: BorderRadius.all(
            const Radius.circular(30.0)
          )
        ),
        child: Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3
          ),
        )
      ),
    );
  }
}