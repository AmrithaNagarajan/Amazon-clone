import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,size:28),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        ),
        title: Text("amazon",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        actions: [
          IconButton(
            icon:Icon(Icons.mic, color: Colors.white,size:28),
              //onPressed: (),
          ),
          IconButton(
            icon:Icon(Icons.shopping_cart_outlined, color: Colors.white,size:28),
              //onPressed: (),
            ),
          ],
    );
  }
}
