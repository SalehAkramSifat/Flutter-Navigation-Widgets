import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:HomeActivity());
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Navigation Widget"),centerTitle: true,),
      drawer: Drawer(child: ListView(padding: EdgeInsets.zero,
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Colors.blue,),
            child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 20),),),

          ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: (){Navigator.pop(context);},),
          ListTile(leading: Icon(Icons.person),title: Text("Person"),),
          ListTile(leading: Icon(Icons.person_pin),title: Text("Profile"),),
          ListTile(leading: Icon(Icons.exit_to_app),title: Text("Exit"),onTap: (){Navigator.pop(context);},)
        ],)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
          foregroundColor: Colors.white,),
    );

  }
}