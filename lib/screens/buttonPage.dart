import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uttils/global.dart';

class buttonPage extends StatefulWidget {
  const buttonPage({super.key});

  @override
  State<buttonPage> createState() => _buttonPageState();
}

class _buttonPageState extends State<buttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(img),
                  ),
                  const Text(
                    'Kashish',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            // drawerContain(),
            ...List.generate(
              drawerList.length,
              (index) => drawerContain(index: index),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Actions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Common Buttons'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Elevated'),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('Icon'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Elevated'),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton(
                            onPressed: () {},
                            child: Text('Filled'),
                          ),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('Icon'),
                          ),
                          FilledButton(
                            onPressed: () {},
                            child: Text('Filled'),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton.tonal(
                            onPressed: () {},
                            child: Text('Filled Tonal'),
                          ),
                          FilledButton.tonalIcon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('Icon'),
                          ),
                          FilledButton.tonal(
                            onPressed: () {},
                            child: Text('Filled'),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Outlined'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('Icon'),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Outlined'),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Text'),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('Icon'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Text'),
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text('Icons Buttons'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined),
                                onPressed: () {},
                              ),
                              IconButton.filledTonal(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined,color: Colors.purple,),
                                onPressed: () {},
                              ),
                              IconButton(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined),
                                onPressed: () {},
                              ),
                              IconButton.outlined(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined),
                                onPressed: () {},
                              ),
                              IconButton.filledTonal(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined,color: Colors.grey,),
                                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey.shade300)),
                                onPressed: () {},
                              ),
                              IconButton(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined,color: Colors.black,),
                                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey.shade300)),
                                onPressed: () {},
                              ),
                              IconButton.outlined(
                                iconSize: 25,
                                icon: Icon(Icons.settings_outlined),
                                onPressed: () {},
                              ),
                            ],
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text('Floating Action Buttons'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton.small(
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton.extended(
                                label: Text('Creat'),
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                              FloatingActionButton.large(
                                onPressed: () {},
                                child: Icon(Icons.add),



                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ListTile drawerContain({required int index}) {
    return ListTile(
      leading: Icon(
        drawerList[index]['icon'],
        color: Colors.black,
      ),
      title: Text(
        drawerList[index]['name'],
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
