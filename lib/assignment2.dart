import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 88, 157, 169),
                  foregroundColor:
                      const Color.fromARGB(255, 37, 35, 34),
                  fixedSize: Size(100, 20),
                  side: BorderSide(),
                  // elevation: 10,
                ),
                child: Text("TextButton"),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 92, 154, 179),
                  foregroundColor:
                      const Color.fromARGB(255, 50, 147, 171),
                  fixedSize: Size(150, 20),
                  side: BorderSide(),
                ),
                child: Text("ElevatedButton"),
              ),

              OutlinedButton(
                onPressed: () {},
                child: Text("OutlineButton"),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.login),
              ),
            ],
          ),
        ),

        Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(100),
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 85, 151, 161),
            border: Border.all(
              width: 5,
              color: const Color.fromARGB(255, 74, 148, 151),
            ),
            // borderRadius: BorderRadius.all(Radius.circular(20)),
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                const Color.fromARGB(255, 63, 89, 100),
                const Color.fromARGB(255, 131, 205, 200),
              ],
            ),
          ),
          child: Text("its body"),
        ),
      ],
    );
  }
}