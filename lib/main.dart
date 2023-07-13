import 'package:flutter/material.dart';
import 'package:template/ui.dart';

import 'model/client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Component'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Client> clients = [
    Client((b) => b
      ..id = '1'
      ..name = 'Rastellis'),
    Client((b) => b
      ..id = '2'
      ..name = 'Nike'),
    Client((b) => b
      ..id = '3'
      ..name = 'Casamigos'),
    Client((b) => b
      ..id = '4'
      ..name = 'City of Newark'),
    Client((b) => b
      ..id = '5'
      ..name = 'Virginia'),
  ];
  late Client dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = clients.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width:500,
              child: DropdownButtonFormField<Client>(
                padding: EdgeInsets.all(8),
                isDense: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16).copyWith(left: 24),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      )),
                  filled: true,
                  fillColor: Colors.black,
                ),
                dropdownColor: Colors.black,
                value: dropdownValue,
                onChanged: (Client? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: clients.map((dropdownValue){
                  return DropdownMenuItem<Client>(
                    value: dropdownValue,
                    child: Text(dropdownValue.name,style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),),
                  );
                }).toList(),
              ),
            )],
        ),
      ),
    );
  }
}
