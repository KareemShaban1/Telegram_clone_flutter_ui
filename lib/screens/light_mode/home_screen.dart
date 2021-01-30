import 'package:flutter/material.dart';
import 'file:///D:/My%20Flutter%20Projects/telegram_clone_flutter/lib/screens/light_mode/drawer.dart';
import 'package:telegram_clone_flutter/screens/models/chat_model.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),

      drawer: DrawerScreen(),

      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(

                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(items[i].imgPath),
                ),

                  title:items[i].status ?
                  Text(items[i].name,style: TextStyle(fontWeight: FontWeight.bold),):
                Row(children: [
                  Text(items[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.volume_mute,size: 18,color: Colors.grey[400],)
                ],),
                subtitle:Text(items[i].message,style: TextStyle(color: Colors.grey),),


                trailing:
                items[i].messNum!=null ?

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [


                    Text(items[i].time),

                    SizedBox(height: 7,),


                    Container(

                      decoration: BoxDecoration(
                          color: items[i].status?Colors.green:Colors.grey[400],
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${items[i].messNum}',style: TextStyle(color: Colors.white),),
                      ),
                    )

                  ],
                ):

                Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

              Text(items[i].time),

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