import 'package:flutter/material.dart';
import 'package:netsurf/pages/wrapper.dart';

class StartAnimation extends StatefulWidget {
  StartAnimation({Key key, this.buttonController, this.user, this.pass})
  : shrinkAnimation = new Tween(
    begin: 320.0,
    end: 70.0
  ).animate(CurvedAnimation(
    parent: buttonController,
    curve: Interval(
      0.0, 
      0.150
    )
  ),
),

zoomAnimation = new Tween(
  begin: 70.0,
  end: 900.0
).animate(CurvedAnimation(
  parent: buttonController,
  curve: Interval(
    0.550, 
    0.99,
    curve: Curves.bounceInOut,
  )
)),
  super(key:key);

  final AnimationController buttonController;
  final AnimationController shrinkAnimation;
  final AnimationController zoomAnimation;
  final String user;
  final String pass;

  Widget _buildAnimation(BuildContext context, Widget child){
      return new Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: zoomAnimation.value <= 300 ?
        new Container(
          alignment: FractionalOffset.center,
          width: shrinkAnimation.value,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.green[700],
            borderRadius: BorderRadius.all(
              const Radius.circular(30.0)
            )
          ),
          child: shrinkAnimation.value > 75
          ? Text('Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3
            ),
          )
          : CircularProgressIndicator(
            strokeWidth: 1.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
          ),
        )
        : user == 'M' ?
        Container(
          width: zoomAnimation.value,
          height: zoomAnimation.value,
          decoration: BoxDecoration(
            shape: zoomAnimation.value < 600
            ? BoxShape.circle
            : BoxShape.rectangle,
            color: Colors.green[700],
          )
        )
        : new Container(
          alignment: FractionalOffset.center,
          width: shrinkAnimation.value,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.green[700],
            borderRadius: BorderRadius.all(
              const Radius.circular(30.0)
            )
          ),
          child: shrinkAnimation.value > 75
          ? Text('Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3
            ),
          )
          : CircularProgressIndicator(
            strokeWidth: 1.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
          ),
        )
      );
  }

  @override
  _StartAnimationState createState() => new _StartAnimationState();
}

class _StartAnimationState extends State<StartAnimation> {
  @override
  Widget build(BuildContext context){
    widget.buttonController.addListener((){
      if(widget.zoomAnimation.isCompleted){
        if(widget.user == 'M'){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context)=>WrapperScreen()
            )
          );
        }
      }
    });
    return new AnimatedBuilder(
      builder: widget._buildAnimation,
      animation: widget.buttonController,
    );
  }
}