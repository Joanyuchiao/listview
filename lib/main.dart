


import 'package:flutter/material.dart';

void main()=>runApp(App());

const items=<String>['第1項','第2項','第3項','第4項','第5項','第6項','第7項','第8項'];


const icons=<String>['Icons.accessible ','Icons.abc_sharp','Icons.access_alarms_sharp ','Icons.accessibility_sharp','Icons.account_balance_sharp ','Icons.account_circle_rounded ','Icons.add_a_photo_outlined ','Icons.add_circle_outline_outlined'];


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

  var appBody =Container(


      child:



      ListView.separated(

        itemCount: items.length,
        itemBuilder: (content,index) =>

Card(
            child:ListTile(title:Text(items[index]),
              onTap:(){},
              leading:Container(
                child: CircleAvatar(backgroundImage: AssetImage(icons[index],),),

              ),
              subtitle:Text(items[index]+'項目說明',style:TextStyle(fontSize: 16),),),
),
        separatorBuilder: (content,index) => const Divider(),
      ),
);










}