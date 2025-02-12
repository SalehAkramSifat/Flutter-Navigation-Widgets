import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner:false,
        home:HomeActivity());
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Widget"),centerTitle: true,),

      //Drawer Layout
      drawer: Drawer(child: ListView(padding: EdgeInsets.zero,
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Colors.blue,),
            child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 20),),),
          ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: (){Navigator.pop(context);},),
          ListTile(leading: Icon(Icons.person),title: Text("Person"),),
          ListTile(leading: Icon(Icons.person_pin),title: Text("Profile"),),
          ListTile(leading: Icon(Icons.exit_to_app),title: Text("Exit"),onTap: (){Navigator.pop(context);},)
        ],)),

      //Bottom Action Button
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],),

      //Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
          foregroundColor: Colors.white,),



      //Card
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(color: Colors.blue,
            elevation: 10, // Shadow depth
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Hey",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Hello",style:TextStyle(color: Colors.white) ),),
                      TextButton(
                        onPressed: () {},
                        child: const Text("World",style:TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Second Card
          Card(color: Colors.blue,
            elevation: 10, // Shadow depth
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "It's Second Card",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Hey Iam",style:TextStyle(color: Colors.white) ),),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Sifat",style:TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
      ),
    );


  }
}