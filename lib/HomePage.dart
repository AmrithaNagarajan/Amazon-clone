import 'dart:async';

import 'package:amazon/Category.dart';
import 'package:amazon/DeliveryUpdates.dart';
import 'package:amazon/SideMenuDrawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Appbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController imageSlider = PageController(initialPage: 0);
  int currentPage=0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      print("Enter timer $currentPage");
      if (currentPage < 5) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      imageSlider.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );
    });
  }
  final String userName="Amritha";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child:Appbar(),
      ),
        /*AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading:Builder(
          builder: (BuildContext context){
            return IconButton(
              //key: _scaffoldKey,
              icon: Icon(Icons.menu, color: Colors.white,size:28),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
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
      ),*/
      drawer: SideMenuDrawer(userName:userName),
      body: OrientationBuilder(
        builder: (context,orientation){
          return Container(
            child:ListView(
              children: [
                Container(
                  //height:orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.12:MediaQuery.of(context).size.height*0.17,
                  child:Container(
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
                                borderRadius:BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: InkWell(
                              child:Container(
                                //height:orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.12:MediaQuery.of(context).size.height*0.17,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:Icon(Icons.search, color: Colors.black,size:28),
                              )
                            ),
                          ),
                        ),
                  )
                ),
                Container(
                  //height:orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.07:MediaQuery.of(context).size.height*0.15,
                  color: Colors.blueGrey[800],
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child:Row(
                      children: [
                        IconButton(icon: Icon(Icons.location_on_outlined,size:17,color: Colors.white,),
                          //onPressed: onPressed
                        ),
                        Text("Turn on your location",style: TextStyle(color: Colors.white),),
                      ],
                    )
                  ),

                ),
                Container(
                  //color: Colors.red,
                  height: 100,
                  //height: orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.177:MediaQuery.of(context).size.height*0.32,
                  child:ListView(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Category(catColor:Colors.blue[100],catIcon:FontAwesomeIcons.pumpSoap,catText:"Essentials"),
                      Category(catColor:Colors.red[200],catIcon:Icons.kitchen,catText:"Pantry"),
                      Category(catColor:Colors.amber[200],catIcon:Icons.phone_android_outlined,catText:"Mobiles"),
                      Category(catColor:Colors.pink[100],catIcon:Icons.watch_rounded,catText:"Fashion"),
                      Category(catColor:Colors.lightGreen[100],catIcon:Icons.airplay,catText:"Electronics"),
                      Category(catColor:Colors.teal[100],catIcon:Icons.chair,catText:"Home"),
                      Category(catColor:Colors.red[100],catIcon:Icons.wallet_membership_outlined,catText:"Appliances"),
                      Category(catColor:Colors.amber[100],catIcon:Icons.wallet_membership_outlined,catText:"Appliances"),
                    ],
                  ),
                ),
                Container(    // check height
                  height:orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.35:MediaQuery.of(context).size.height*0.5,
                  //color: Colors.black,
                  child:PageView(
                    scrollDirection: Axis.horizontal,
                    controller: imageSlider,
                    children: [
                      Image.network('https://images.indianexpress.com/2020/09/Untitled-design-57-3.jpg',fit: BoxFit.fill,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0c-1OZU1a9ZmqyFmdt2_mQsW-GGHbiymVGg&usqp=CAU',fit: BoxFit.fill,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGFmB2QR2L6UNFTl03qpNGkxPhMFk8y5OIXA&usqp=CAU',fit: BoxFit.fill,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDvw8wvt3waL_Qw_FU9LMpxY2TWT8zFjgM3A&usqp=CAU',fit: BoxFit.fill,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyKJdRR9mitJJoEhMHZFG1nAzRdasg2_oGpA&usqp=CAU',fit: BoxFit.fill,),
                    ],
                  ),
                ),
                Container(
                  //height: 380,
                  //color: Colors.black,
                  child:InkWell(
                    child:Container(
                      child:Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Padding(
                              padding: EdgeInsets.fromLTRB(25, 10, 0, 20),
                              child:Text("Update on deliveries & more", style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                            ),
                          ),
                          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgVxsIXrOUE03fWX3YjRZEwIN77uw--kbKrg&usqp=CAU',)
                        ],
                      ),
                    ),
                    onTap: (){
                      print("Tapped on updates");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeliveryUpdate(),

                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
          );
        },
      )
    );
  }
}
