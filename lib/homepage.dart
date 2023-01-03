import 'package:designapp/utils/chatpage.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children:const [
              SizedBox(height: 100,),
              ListTile (
                leading: CircleAvatar(
                    child: Icon(Icons.home, color: Color.fromARGB(255, 146, 132, 132),),
                     backgroundColor: Colors.white,
                ),
                title: Text("Home",style: TextStyle(fontFamily: "Poppins"),),
                trailing: Icon(Icons.more_vert),
                ),
                SizedBox(height: 10,),
                ListTile(
                leading: CircleAvatar(
                   child: Icon(Icons.location_history, color: Color.fromARGB(255, 146, 132, 132),),
                     backgroundColor: Colors.white,
                ),
                title: Text("About Us"),
                trailing: Icon(Icons.more_vert),
                ),
                SizedBox(height: 10,),
                ListTile(
                leading: CircleAvatar(
                   child: Icon(Icons.headset_mic_outlined, color: Color.fromARGB(255, 146, 132, 132),),
                     backgroundColor: Colors.white,
                ),
                title: Text("Contact Us"),
                trailing: Icon(Icons.more_vert),
                ),
                SizedBox(height: 10,),
                ListTile(
                leading: CircleAvatar(
                   child: Icon(Icons.history, color: Color.fromARGB(255, 146, 132, 132),),
                     backgroundColor: Colors.white,
                ),
                title: Text("History"),
                trailing: Icon(Icons.more_vert),
                ),

                Card(
                child: ListTile(
                leading: Icon(Icons.home),
                title: Text('My Home',style: TextStyle(fontFamily: "Poppins")),
                trailing: Icon(Icons.more_vert),
                ),
                ),

                 Card(
                child: ListTile(
                leading: Icon(Icons.location_history),
                title: Text('About Us'),
                trailing: Icon(Icons.more_vert),
                ),
                ),

                 Card(
                child: ListTile(
                leading: Icon(Icons.headset_mic_outlined),
                title: Text('Contact Us'),
                trailing: Icon(Icons.more_vert),
                ),
                ),

                 Card(
                child: ListTile(
                leading: Icon(Icons.history),
                title: Text('My history',style: TextStyle(fontFamily: "Poppins",),),
                trailing: Icon(Icons.more_vert),
                ),
                ),
            ],
          ),
        ],
        ),
      ),

     appBar: AppBar(
        title:const Text("saboor",style: TextStyle(fontFamily: "Poppins")),
     leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.remove_red_eye_sharp,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    ),
    body: Center(
      child:ElevatedButton(onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Chat()), );
      },
       child:const Text("login panel"),)
    ),
    );
  }
}