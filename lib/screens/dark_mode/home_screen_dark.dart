import 'package:flutter/material.dart';
import 'package:telegram_clone_flutter/screens/dark_mode/drawer_dark.dart';
import 'file:///D:/My%20Flutter%20Projects/telegram_clone_flutter/lib/screens/light_mode/drawer.dart';
import 'package:telegram_clone_flutter/screens/models/chat_model.dart';


class HomeScreenDark extends StatefulWidget {
  @override
  _HomeScreenDarkState createState() => _HomeScreenDarkState();
}

class _HomeScreenDarkState extends State<HomeScreenDark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2733),
      appBar: AppBar(

        backgroundColor: Color(0xff212d3b),
        title: Text('Telegram'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: Theme(
      data: Theme.of(context).copyWith(
    canvasColor: Color(0xff1d2733),
        //This will change the drawer background to blue.
    //other styles
    ),
      child: DrawerScreenDark(),),



      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(items[i].imgPath),
                ),
                title: items[i].status ?
                Text(items[i].name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),):
                Row(children: [
                  Text(items[i].name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  Icon(Icons.volume_mute,size: 18,color: Color(0xff7d8b98),)
                ],),
                subtitle:Text(items[i].message,style: TextStyle(color: Color(0xff7d8b98)),),


                trailing:items[i].messNum!=null ?

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [


                    Text(items[i].time,style: TextStyle(color: Colors.grey),),

                    SizedBox(height: 7,),


                    Container(

                      decoration: BoxDecoration(
                          color: items[i].status?Color(0xff64b4ef):Color(0xff3e5263),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${items[i].messNum}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    )

                  ],
                ):

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Text(items[i].time,style: TextStyle(color: Colors.grey),),

                    SizedBox(height: 7,),

                  ],)


              );
            },
            separatorBuilder: (ctx, i) {
              return Divider();
            },
            itemCount: items.length),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create,color: Colors.white,),
          backgroundColor: Color(0xFF65a9e0),
          onPressed: (){}),
    );
  }
}