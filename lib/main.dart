import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); //application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.red,
      home: HomeAcitivity(),
    );
  }
}

class HomeAcitivity extends StatelessWidget {
  const HomeAcitivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory App'),
        titleSpacing: 2,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 14,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("I am comments", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackBar("I am Seach", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackBar("I am Mail", context);
              },
              icon: Icon(Icons.mail)),
          IconButton(
              onPressed: () {
                MySnackBar("I am Book. You can read me here!", context);
              },
              icon: Icon(Icons.menu_book)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.chat),
        backgroundColor: Colors.blue,
        onPressed: () {
          MySnackBar("I am floting action button", context);
        },
      ),
      body: Center(
        child: Text('Wellcome to the Home page of My App '),
      ),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(child: Text("Tarikul Hazra")),
          ListTile(leading: Icon(Icons.home), title: Text("Home")),
          ListTile(leading: Icon(Icons.chat), title: Text("Contact Us")),
          ListTile(leading: Icon(Icons.g_mobiledata), title: Text("About Us")),
          ListTile(leading: Icon(Icons.image), title: Text("Protfolio")),
          ListTile(leading: Icon(Icons.change_history), title: Text("Hire Us")),
        ]),
      ),
      // endDrawer: (),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("I am home bottom menu", context);
          }
          if (index == 1) {
            MySnackBar("I am home user  menu", context);
          }
          if (index == 2) {
            MySnackBar("I am home category menu", context);
          }
        },
      ),
      // floatingActionButton: (),
    );
  }
}
