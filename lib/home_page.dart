
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/inc_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Provider')
      ),
      body: Center(
        child: Consumer<IncController>(
        builder: (BuildContext context, IncController value, Widget? child) {
            return Text(value.number.toString(),style: const TextStyle(fontSize: 60),);
        },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: (){
            Provider.of<IncController>(context, listen: false).incNumber();
          }
      ),
    );
  }
}
