import 'package:flutter/material.dart';
import 'Products.dart';
import 'SideMenuDrawer.dart';
import 'Appbar.dart';
class Essentials extends StatefulWidget {
  const Essentials({Key key}) : super(key: key);

  @override
  _EssentialsState createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {
  final String userName="Amritha";
  final List<String> productName = ["Dettol Hand Wash","Presto Cleaner","Lizol ","Lifebouy Hand Wash","Solimo Hand Wash"];
  final List<String> brandName = ["Dettol","Presto","Lizol ","Lifebouy","Solimo"];
  final List<double> price = [100,200,100,200,100];
  final List<double> perlPrice = [142.00,145.00,146.00,147.00,148.00];
  final List<String> productImg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQs_rsoGxuD_je0ghSGRiLxXuBFc1_X6hRTw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO0ktofb8GwuFDjCzRX0w4S4j6SuDEtMMa2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgGhQTemLY5K6bx_VY2R-kPjYlToSZLYE07A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvW53sWzZbHcKuDycsQJP0WfquU3P0EMVAZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvW53sWzZbHcKuDycsQJP0WfquU3P0EMVAZQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child:Appbar(),
        ),
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
              child:Padding(
              padding: EdgeInsets.all(10),
                child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTakCz4Xen5IOGFTvOlcv95HJMOHl_fbydS7Q&usqp=CAU',
                  height: MediaQuery.of(context).size.height*0.35,
                ),
              ),
            ),
            Container(
              //height: orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.5:MediaQuery.of(context).size.height*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text("Stay Safe",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  ),

                  Container(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context,int index){
                        return Products(productName:productName[index],brandName:brandName[index],price:price[index],perlPrice:perlPrice[index],productImg: productImg[index],);
                      },

                    ),
                  ),
                ],
              ),

            ),
            Container(
              //height: orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.4:MediaQuery.of(context).size.height*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text("Wear Mask",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  ),

                  Container(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context,int index){
                        return Products(productName:productName[index],brandName:brandName[index],price:price[index],perlPrice:perlPrice[index],productImg:productImg[index]);
                      },

                    ),
                  ),
                ],
              ),

            ),
            
            ],
          ),
          );
        }
      ),
    );
  }

}
