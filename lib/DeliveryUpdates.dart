import 'package:flutter/material.dart';

class DeliveryUpdate extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,),
          //onPressed: (),
          ),
        title: Text("Amazon",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        actions: [
          IconButton(
            icon:Icon(Icons.mic, color: Colors.white,),
            //onPressed: (),
            ),
          IconButton(
             icon:Icon(Icons.shopping_cart_outlined, color: Colors.white,),
              //onPressed: (),
          ),
        ],
      ),
      body:OrientationBuilder(
        builder: (context,orientation) {
          return Container(
            child: ListView(
              children: [
                Container(
                  color: Colors.blueGrey[900],
                  padding: EdgeInsets.all(7),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Amazon",
                      contentPadding: EdgeInsets.all(7),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                                Icons.search, color: Colors.black, size: 28),
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blueGrey[800],
                  child: Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: [
                          IconButton(icon: Icon(
                            Icons.location_on_outlined, size: 17,
                            color: Colors.white,),
                            //onPressed: onPressed
                          ),
                          Text("Turn on your location", style: TextStyle(
                              color: Colors.white),),
                        ],
                      )
                  ),
                ),
                Center(
                  child:Text("Yet to Update", style: TextStyle(color: Colors.grey),)
                ),
              ],
            ),
          );
        },
    ),


    );
  }
}
