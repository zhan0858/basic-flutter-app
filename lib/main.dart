import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

// Your app should start with a MaterialApp widget with title, theme and home properties.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Basic Flutter App",
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              SizedBox(
                  width: 400,
                  height: 200,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1498100152307-ce63fd6c5424?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.network(
                      'https://images.unsplash.com/photo-1609665558965-8e4c789cd7c5?q=80&w=2969&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.network(
                      'https://images.unsplash.com/photo-1494256997604-768d1f608cac?q=80&w=3029&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    )
                  ])),
              const SizedBox(height: 20),
              const ListTile(
                title: Text('Poppins Regular'),
                leading: Icon(Icons.access_alarm),
                style: ListTileStyle.list,
              ),
              const ListTile(
                title: Text('Poppins Bold',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                leading: CircleAvatar(child: Icon(Icons.access_alarm)),
                style: ListTileStyle.list,
              ),
              const ListTile(
                title: Text('Poppins Italic',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, fontFamily: "Poppins")),
                trailing: Icon(Icons.access_alarm),
              ),
              const ListTile(
                title: Text('Default Font'),
                leading: Icon(Icons.access_alarm),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Image(
                      image: AssetImage('assets/dog.jpg'),
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Image(
                      image: AssetImage('assets/husky.jpg'),
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Image(
                      image: AssetImage('assets/schnauzer.jpg'),
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ])));
  }
}
