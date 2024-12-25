/*
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  List<int> counter = [1, 2, 3, 4, 5, 6, 7];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                if(currentIndex < counter.length -1){
                  currentIndex ++;
                }
                setState(() {

                });
              },
              icon: Icon(Icons.add),
            ),
            Text(
              '${counter[currentIndex]}',
              style: TextStyle(fontSize: 28),
            ),
            IconButton(
              onPressed: () {
                if(currentIndex > 0){
                  currentIndex -- ;
                }
                setState(() {

                });
              },
              icon: Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

List<Map<String, dynamic>> users = [
  {'name': 'Alice', 'age': 25},
  {'name': 'Bob', 'age': 30},
  {'name': 'Charlie', 'age': 35},
];


class UserListScreen extends StatelessWidget {

  final List<Map<String, dynamic>> users = [
    {'name': 'Alice', 'age': 25},
    {'name': 'Bob', 'age': 30},
    {'name': 'Charlie', 'age': 35},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User  List')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]['name']),
            subtitle: Text('Age: ${users[index]['age']}'),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: UserListScreen()));
}