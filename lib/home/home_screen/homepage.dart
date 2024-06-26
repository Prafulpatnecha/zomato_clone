import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/globle_values.dart';

import '../../utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                width: width,
                decoration: BoxDecoration(
                    color: colorZomato,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    //todo -> changing button
                    ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 35,
                      ),
                      title: Row(
                        children: [
                          Text(
                            'Parvat Patiya',
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontFamily: fontLight,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                      subtitle: const Text(
                        'Surat',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: Container(
                        height: 100,
                        width: 100,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    const BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 5,
                                        offset: Offset(0, 0),
                                        spreadRadius: -2,
                                        blurStyle: BlurStyle.solid)
                                  ]),
                              child: const Icon(
                                Icons.translate,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              //todo profile add navigator
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  shape: BoxShape.circle,
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: const Text(
                                  'P',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10,),
                        Container(
                          decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          height: 45,
                          width: width/1.2,
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.search,color: Colors.red,),
                              SizedBox(width: 10,),
                              Text('Search',style: TextStyle(color: Colors.black87,fontFamily: fontLight,fontSize: 16,fontWeight: FontWeight.w500),),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.all(10),
                                  child: const VerticalDivider(color: Colors.black45,width: 1,thickness: 1  ,)),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// krispi,parata,subji,crunci,sweets,
