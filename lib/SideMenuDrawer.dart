import 'package:flutter/material.dart';


class SideMenuDrawer extends StatelessWidget {
  final String userName;
  const SideMenuDrawer({Key key, this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final List<String> entries = <String>['A', 'B', 'C'];
    //final List<int> colorCodes = <int>[600, 500, 100];
    Widget _listTile(String options){
      return ListTile(title:Text("$options",style: TextStyle(fontSize: 16,color: Colors.grey[700]),),
        onTap:(){
          Navigator.pop(context);
        },
      );
    }
    return Container(
      width: MediaQuery.of(context).size.width*0.75,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              height:80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
                child: Row(
                  children: [
                    Icon(Icons.person_outlined,size: 27,),
                    Text("Hello $userName",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            _listTile("Home"),
            _listTile("Account"),
            _listTile("Orders"),
            _listTile("Buy Again"),
            _listTile("Lists"),
            _listTile("Customer Services"),
          ],
        ),
      ),
    );
  }
}
