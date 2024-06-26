import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                color: Colors.redAccent
                ),
                child: const ListTile(
                  leading: Icon(Icons.location_on,color: Colors.white,),
                  title: Row(children: [
                    Text('Parvat Patiya',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),//todo -> changing button
                  ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
