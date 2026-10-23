import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 251, 6, 104),
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
              accountName: Text("Rahim"),
              accountEmail: Text("rahim@gmail.com"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 7, 102),
              ),
            ),
            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 150, 195, 228),
              onTap: () {},
            ),
            Divider(),
            Spacer(),
            ListTile(title: Text("Person"), leading: Icon(Icons.person)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 200, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 255, 119),
                      foregroundColor: Colors.red,
                      fixedSize: Size(100, 20),
                      side: BorderSide(),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                    child: Text("TextButton"),
                  ),

                  SizedBox(width: 20),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(),
                    child: Text("OutlineButton"),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text("ElevatedButton"),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.login)),
                ],
              ),
            ),
            Container(
              height: 242,
              width: 242,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(50),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 21, 23, 24),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: RadialGradient(
                  colors: [
                    const Color.fromARGB(255, 255, 150, 190),
                    const Color.fromARGB(255, 255, 7, 131),
                    const Color.fromARGB(55, 122, 111, 127),
                  ],
                ),
                // shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                child: Text(
                  "Hello world",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: const Color.fromARGB(255, 244, 9, 80),
                shadowColor: Colors.black,
                elevation: 10,
                shape: BeveledRectangleBorder(),
                child: Center(
                  child: Text(
                    "Hello world",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Image.asset('assets/images/images.jpg'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 242, 15, 95),
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }

  child({required MaterialColor color, required Text child}) {}
}
