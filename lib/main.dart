import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Calculator UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
            child: Column(
              children: [
                TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintTextDirection: TextDirection.rtl,
                    hintText: '0'
                    
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('C')),),
                    Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('/')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('X')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('AC')),),
                ]),
                Row(
                  children: [
                    Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('7')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('8')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('9')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('-')),),
                ]),
                Row(
                  children: [
                    Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('4')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('5')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('6')),),
                      Flexible(
                      flex:1,
                      fit:FlexFit.tight,
                      child: OutlinedButton(onPressed: null, child: Text('+')),),
                ]),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(children: [
                            Flexible(
                              flex:1,
                              fit:FlexFit.tight,
                              child: OutlinedButton(onPressed: null, child: Text('1')),),
                            Flexible(
                              flex:1,
                              fit:FlexFit.tight,
                              child: OutlinedButton(onPressed: null, child: Text('2')),),
                            Flexible(
                              flex:1,
                              fit:FlexFit.tight,
                              child: OutlinedButton(onPressed: null, child: Text('3')),),
                          ],
                          ),
                          Row(children: [
                            Flexible(
                              flex:2,
                              fit:FlexFit.tight,
                              child: OutlinedButton(onPressed: null, child: Text('0')),),
                            Flexible(
                              flex:1,
                              fit:FlexFit.tight,
                              child: OutlinedButton(onPressed: null, child: Text(',')),),
                            
                          ],)
                        ],
                        
                      ) ,
                      )
                    ,Expanded(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: null, 
                        child: Text('='),
                        style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 30) ),
                        )
                                
                               )
                    
                ]),
                
              ],
            ),
          ),
        
        
        
      ),

    );
  }
}