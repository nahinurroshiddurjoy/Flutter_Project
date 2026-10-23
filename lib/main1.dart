import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(25),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 10,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.6,
        elevation: 50,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("Comments", context);
            },
            icon: Icon(Icons.comment_rounded),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Search bar", context);
            },
            icon: Icon(Icons.search_sharp),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Settings options", context);
            },
            icon: Icon(Icons.settings_applications),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Email section", context);
            },
            icon: Icon(Icons.email_rounded),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("Floating Action Button Pressed", context);
        },
        elevation: 10,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("This is home bar", context);
          }
          if (index == 1) {
            MySnackBar("This is account bar", context);
          }
          if (index == 2) {
            MySnackBar("This is cart bar", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Nahin Ur Roshid Durjoy",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "nahin@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://flutter.dev/assets/lockup_flutter_horizontal.d0515092173211776ceed19b39c2a041.png",
                  alignment: AlignmentDirectional(0, 0),
                ),
                onDetailsPressed: () {
                  MySnackBar("This is my profile page", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Account"),
              onTap: () {
                MySnackBar("Account button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Email button", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Nahin Ur Roshid Durjoy",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "nahin@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://flutter.dev/assets/lockup_flutter_horizontal.d0515092173211776ceed19b39c2a041.png",
                  alignment: AlignmentDirectional(0, 0),
                ),
                onDetailsPressed: () {
                  MySnackBar("This is my profile page", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Account"),
              onTap: () {
                MySnackBar("Account button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Email button", context);
              },
            ),
          ],
        ),
      ),

      // drawer: (),
      // body: Container(
      //   height: 250,
      //   width: 250,
      //   margin: EdgeInsets.fromLTRB(20, 30, 20, 70),
      //   padding: EdgeInsets.fromLTRB(20, 20, 30, 30),
      //   decoration: BoxDecoration(
      //     color: Colors.amber,
      //     border: Border.all(color: Colors.black, width: 6),
      //   ),
      //   alignment: Alignment.center,
      //   child: Image.network(
      //     "https://cdn.ostad.app/public/upload/2022-11-27T06-52-05.802Z-logo%20ostad.png",
      //   ),
      // ),
      // drawer: (),
      // endDrawer: (),
      // bottomNavigationBar: (),
      // floatingActionButton: (),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       width: 60,
      //       height: 60,
      //       child: Image.network(
      //         "https://cdn.ostad.app/public/upload/2022-11-27T06-52-05.802Z-logo%20ostad.png",
      //       ),
      //     ),
      //     Container(
      //       width: 60,
      //       height: 60,
      //       child: Image.network(
      //         "https://cdn.ostad.app/public/upload/2022-11-27T06-52-05.802Z-logo%20ostad.png",
      //       ),
      //     ),
      //     Container(
      //       width: 60,
      //       height: 60,
      //       child: Image.network(
      //         "https://cdn.ostad.app/public/upload/2022-11-27T06-52-05.802Z-logo%20ostad.png",
      //       ),
      //     ),
      //   ],
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              MySnackBar("Iam Text Button", context);
            },
            child: Text("Text Button"),
          ),
          ElevatedButton(
            onPressed: () {
              MySnackBar("Iam Elevated Button", context);
            },
            child: Text("Elevated Button"),
            style: buttonStyle,
          ),
          OutlinedButton(
            onPressed: () {
              MySnackBar("Iam Outlined Button", context);
            },
            child: Text("Outlined Button"),
          ),
        ],
      ),
    );
  }
}
