import 'package:flutter/material.dart';
import 'package:idex_274_64g_durjoy/assignment2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 10, 96, 244),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Masud"),
              accountEmail: Text("masud@gmail.com"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 32, 253),
              ),
            ),
            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 167, 202, 227),
              onTap: () {},
            ),
            ListTile(title: Text("Person"), leading: Icon(Icons.person)),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assignment2(),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 12, 143, 250),
                foregroundColor: Colors.white,
                fixedSize: Size(100, 20),
                side: BorderSide(),
              ),
              child: Text("TextButton"),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              fixedSize: Size(150, 20),
              side: BorderSide(),
              elevation: 20,
            ),
            child: Text("Elevated Button"),
          ),
          OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
          IconButton(onPressed: () {}, icon: Icon(Icons.login)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
