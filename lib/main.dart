import 'package:flutter/material.dart';

void main()=>runApp(App());


final List<String> entries = <String>['項目1', '項目2', '項目3'];
final List<int> colorCodes = <int>[600, 500, 100];


class App extends StatelessWidget{

  Widget build(BuildContext context){
    @override
    var appTitle=Text('flutter button');

    var appBar=AppBar(
        title:appTitle
    );
    var app=MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: appBody,
      ),
    );
    return app;
  }

  var appBody =

  ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('Entry ${entries[index]}')),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );



}