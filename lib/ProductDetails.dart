import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SideMenuDrawer.dart';
import 'Appbar.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final String userName="Amritha";

  String size = "500";
  List<String> sizelist=["100","250","500" "750", "1000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child:Appbar(),
        ),
        drawer: SideMenuDrawer(userName:userName),
        body: OrientationBuilder(
        builder: (context,orientation) {
          return Container(
            child: ListView(
              children: [
                Container(
                  //height:orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.12:MediaQuery.of(context).size.height*0.17,
                    child: Container(
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
                                //height:orientation==Orientation.portrait?MediaQuery.of(context).size.height*0.12:MediaQuery.of(context).size.height*0.17,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.search, color: Colors.black,
                                    size: 28),
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
                    ),
                  ),
                ),
                Container(
                  padding: orientation==Orientation.portrait?EdgeInsets.all(20):EdgeInsets.all(30),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Brand Name : Dettol",style: TextStyle(color: Colors.grey),),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.amber,size: 17,),
                                Icon(Icons.star, color: Colors.amber,size: 17,),
                                Icon(Icons.star, color: Colors.amber,size: 17,),
                                Icon(Icons.star, color: Colors.amber,size: 17,),
                                Icon(Icons.star, color: Colors.amber,size: 17,),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text("Dettol Original Germ Protection Handwash Liquid Soap Refill Jar, 900 ml",maxLines: 4,style: TextStyle(fontSize: 17,),),
                      Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/amazonFullfilled.png',height: 25,),
                            Text(" for 'dettol'",style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      Container(
                        //padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        height:MediaQuery.of(context).size.height*0.6,
                        child:Stack(
                          children: [
                            PageView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Image.asset('assets/images/dettolimg1.png'),
                                Image.asset('assets/images/dettolimg2.png'),
                                Image.asset('assets/images/dettolimg3.png'),
                                Image.asset('assets/images/dettolimg4.png'),
                                Image.asset('assets/images/dettolimg5.png'),
                                Image.asset('assets/images/dettolimg6.png'),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('assets/images/offerimg.png',height: 50,width: 50,),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.share,size: 27,color: Colors.grey[700],),
                              ),
                            ),
                          ],
                      ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey[700]),

                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Size:",style: TextStyle(fontSize: 17,color: Colors.grey[800]),),
                                  //Text("$size",style: TextStyle(color: Colors.grey[800]),),
                                ],
                              ),
                              DropdownButton<String>(
                                icon: Icon(Icons.chevron_right,size:27),
                                value: size,
                                items: <String>['100', '250', '500', '750', '1000',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String value) {
                                  setState(() {
                                    size = value;
                                  });
                                },
                                underline: Container(height: 0,),
                              ),

                            ],
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text:"\u{20B9}",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),
                            ),
                            TextSpan(
                              text: "250 ",
                              style: TextStyle(fontSize: 28,fontWeight: FontWeight.w300),
                            ),
                            TextSpan(
                              text: " (41.00/100ml)",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text:"MRP:",
                              style: TextStyle(fontSize: 15,color: Colors.grey[700]),
                            ),
                            TextSpan(
                              text: " \u{20B9}",
                              style: TextStyle(fontSize: 15,decoration: TextDecoration.lineThrough),
                            ),
                            TextSpan(
                              text: " 270",
                              style: TextStyle(fontSize: 15,decoration: TextDecoration.lineThrough),
                            ),
                            TextSpan(
                              text: " Save \u{20B9} 20",
                              style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                text:"FREE delivery",
                                style: TextStyle(fontSize: 16,color: Colors.teal[400]),
                              ),
                              TextSpan(
                                text:" on orders over \u{20B9} 499.00 shipped by Amazon",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey[200]),
                        ),
                        child:Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.local_offer, color: Colors.red[700],),
                                  RichText(
                                      text:TextSpan(
                                        style: DefaultTextStyle.of(context).style,
                                        children: [
                                          TextSpan(
                                            text:" Save Extra",
                                            style: TextStyle(fontSize: 16,color: Colors.red[700],fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: " with 3 offers",
                                            style: TextStyle(fontSize: 16,),
                                          ),
                                        ],

                                      )
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                              ),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: RichText(
                                      maxLines:2,
                                      overflow:TextOverflow.ellipsis,
                                      text: TextSpan(
                                        style: DefaultTextStyle.of(context).style,
                                        children: [
                                          TextSpan(
                                            text: "No Cost EMI: ",
                                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[700],fontSize: 16),
                                          ),
                                          TextSpan(
                                            text:"Avail No Cost EMI on select cards for orders above \u{20B9}3000",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.chevron_right),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                              ),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: RichText(
                                      maxLines:2,
                                      overflow:TextOverflow.ellipsis,
                                      text: TextSpan(
                                        style: DefaultTextStyle.of(context).style,
                                        children: [
                                          TextSpan(
                                            text: "CashBack (3): ",
                                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[700],fontSize: 16),
                                          ),
                                          TextSpan(
                                            text:"Get Flat \u{20B9}100 back with ",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          TextSpan(
                                            text:"Amazon Pay Later.",
                                            style: TextStyle(fontSize: 16,color: Colors.teal[400]),
                                          ),
                                          TextSpan(
                                            text:"Offer applicable on sign-up.",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.chevron_right),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),

                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
