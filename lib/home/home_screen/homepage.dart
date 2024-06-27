import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/globle_image.dart';
import 'package:zomato_clone/utils/globle_model.dart';
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
    exploreList = FoodModel.toList(list1: imageListExplore);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   bottom: TabBar(
        //     tabs: [
        //
        //     ],
        //   ),
        // ),
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 0.5,
            bottom: TabBar(
              labelColor: Colors.purple,
              // indicatorColor: Colors.purple,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black,
              onTap: (value) {
                setState(() {
                  boolColorTabBar=!boolColorTabBar;
                });
              },
              indicatorColor: Colors.red,
              automaticIndicatorColorAdjustment: true,
              tabs: [
                Container(
                  height: 68,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (boolColorTabBar==true)?Icon(Icons.delivery_dining,size: 35,color: colorZomatoAll,):Icon(Icons.delivery_dining_outlined,size: 35,color: Colors.black,),
                      Text(' Delivery',style: TextStyle(fontFamily: fontBold,fontSize: 18,color: Colors.black),)
                    ],
                  ),
                ),
                Container(
                  height: 68,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (boolColorTabBar==true)?Icon(Icons.dining_outlined,size: 35,color: Colors.black,):Icon(Icons.dining,size: 35,color: colorZomatoAll,),
                      Text(' Delivery',style: TextStyle(fontFamily: fontBold,fontSize: 18,color: Colors.black),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                            leading: Icon(
                              Icons.location_on,
                              color: colorZomatoAll,
                              size: 35,
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Parvat Patiya',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontFamily: fontLight,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ],
                            ),
                            subtitle: const Text(
                              'Surat',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
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
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 20,
                                              offset: Offset(0, 0),
                                              spreadRadius: -10,
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
                              const SizedBox(
                                width: 6,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 20,
                                          offset: Offset(0, 0),
                                          spreadRadius: -13,
                                          blurStyle: BlurStyle.solid),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                height: 45,
                                width: width / 1.22,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: colorZomatoAll,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Search',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontFamily: fontLight,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Spacer(),
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      child: const VerticalDivider(
                                        color: Colors.black45,
                                        width: 1,
                                        thickness: 1,
                                      ),
                                    ),
                                    Icon(
                                      Icons.mic_none,
                                      color: colorZomatoAll,
                                    ),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Column(
                                      children: [

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'VEG',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: fontBold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Mode',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: fontBold,
                                        fontSize: 12,
                                        height: 0.1),
                                  ),
                                  Transform.scale(
                                    scale: 0.7,
                                    child: Switch.adaptive(
                                      value: valueBool,
                                      onChanged: (value) {
                                        setState(() {
                                          valueBool = !valueBool;
                                        });
                                      },
                                      activeColor: colorZomatoAll,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      trackOutlineWidth: WidgetStateProperty.all(13),
                                      trackOutlineColor:
                                          WidgetStateProperty.all(Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // GestureDetector(
                          //   //todo navigator button
                          //   onTap: () {},
                          //   child: Container(
                          //     height: 250,
                          //     width: width,
                          //     margin: const EdgeInsets.symmetric(horizontal: 15),
                          //     decoration: BoxDecoration(
                          //       // color: Colors.blue,
                          //       gradient: RadialGradient(colors: [
                          //         colorZomatoAll,
                          //         colorZomato,
                          //       ]),
                          //       image: DecorationImage(
                          //         image: imageVote,
                          //         fit: BoxFit.cover,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Text(
                    //   ' Vote now > ',
                    //   style: TextStyle(
                    //     height: -1.5,
                    //     fontSize: 25,
                    //     color: Colors.white,
                    //     fontFamily: fontLight,
                    //     backgroundColor: Colors.black,
                    //   ),
                    // ),
                    paddingShowLineText(textFind: 'EXPLORE'),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          ...List.generate(
                            exploreList!.foodListDetails.length,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(//todo sat data index type Navigator
                                onTap: () {
                                  setState(() {
                                    // print(index);
                                  });
                                },
                                child: Container(
                                  width: 110,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 3,
                                        offset: Offset(0, 0),
                                        spreadRadius: -3.3,
                                        blurStyle: BlurStyle.outer,
                                      ),
                                    ],
                                  ),
                                  // alignment: Alignment.topCenter,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: (index == 0) ? 80 : 80,
                                        width: (index == 1) ? 100 : 125,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(exploreList!
                                              .foodListDetails[index].image!),
                                          fit: BoxFit.fitWidth,
                                        ),),
                                      ),
                                      Text(
                                        exploreList!.foodListDetails[index].name!,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: fontBold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        exploreList!.foodListDetails[index].deal!,
                                        style: TextStyle(
                                            color: (index==0)?Colors.blue.shade800:Colors.black,
                                            fontFamily: fontLight,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    paddingShowLineText(textFind: "WHAT'S ON YOUR MIND?"),//todo image category

                  ],
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }

  Padding paddingShowLineText({required String textFind}) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          Container(
            height: 30,
            // color: Colors.blue,
            child: Stack(
              children: [
                Align(
                  child: Divider(
                    color: Colors.black26,
                    thickness: 0.3,
                  ),
                ),
                Align(
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      textFind,
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: fontLight,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          wordSpacing: 2),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// krispi,parata,subji,crunci,sweets,
