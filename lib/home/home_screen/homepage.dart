import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/globle_image.dart';
import 'package:zomato_clone/utils/globle_model.dart';
import 'package:zomato_clone/utils/globle_product_list.dart';
import 'package:zomato_clone/utils/globle_values.dart';
import '../../utils/color.dart';
import '../../utils/image_list_globle.dart';
import '../components/Containers.dart';
import '../components/funtions_use.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    exploreList = FoodModel.toList(list1: imageListExplore);
    productListModelUse =FoodModel.toList(list1: productDetail);
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
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: colorZomatoAll, width: 7.0),
                  insets: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 62.0),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              unselectedLabelColor: colorZomatoAll,
              unselectedLabelStyle: textStyle.copyWith(
                fontSize: 20.0,
                color: colorZomatoAll,
              ),
              onTap: (value) {
                setState(() {
                  boolColorTabBar = !boolColorTabBar;
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
                      (boolColorTabBar == true)
                          ? Icon(
                              Icons.delivery_dining,
                              size: 35,
                              color: colorZomatoAll,
                            )
                          : const Icon(
                              Icons.delivery_dining_outlined,
                              size: 35,
                              color: Colors.black,
                            ),
                      Text(
                        ' Delivery',
                        style: TextStyle(
                            fontFamily: fontBold,
                            fontSize: 18,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 68,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (boolColorTabBar == true)
                          ? const Icon(
                              Icons.room_service_outlined,
                              size: 35,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.room_service,
                              size: 35,
                              color: colorZomatoAll,
                            ),
                      Text(
                        ' Delivery',
                        style: TextStyle(
                            fontFamily: fontBold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
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
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                    const Column(
                                      children: [],
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
                                      trackOutlineWidth:
                                          WidgetStateProperty.all(13),
                                      trackOutlineColor:
                                          WidgetStateProperty.all(Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
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
                    const SizedBox(
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
                              child: GestureDetector(
                                //todo sat data index type Navigator
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
                                          ),
                                        ),
                                      ),
                                      Text(
                                        exploreList!
                                            .foodListDetails[index].name!,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: fontBold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        exploreList!
                                            .foodListDetails[index].deal!,
                                        style: TextStyle(
                                            color: (index == 0)
                                                ? Colors.blue.shade800
                                                : Colors.black,
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
                    paddingShowLineText(textFind: "WHAT'S ON YOUR MIND?"),
                    //todo image category
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 45,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurStyle: BlurStyle.solid,
                              offset: Offset(0, 0),
                              blurRadius: 20
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          //todo all and near fast
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildPaddingButton(
                                width: width,
                                textFind: 'ALL',
                                widthFind: width / 4,
                                boolValueFind: true,
                                valueBoolSatStateData: false,
                                nowBoolFind: false, satStateDataSend: () {
                              setState(() {
                                fastFindBool = false;
                                tabCreateBool=false;
                              });
                            }),
                            buildPaddingButton(
                                width: width,
                                textFind: ' NEAR & FAST',
                                widthFind: width / 1.57,
                                boolValueFind: false,
                                valueBoolSatStateData: true,
                                nowBoolFind: true, satStateDataSend: () {
                              setState(() {
                                fastFindBool = true;
                                tabCreateBool=true;
                              });
                            })
                          ],
                        ),
                      ),
                    ),
                    (tabCreateBool==false)?Container(
                      child: Column(
                        children: [
                          ...List.generate(33, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                      BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      blurStyle: BlurStyle.normal
                                  ),],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 235,
                                      width: width/1.01,
                                      decoration: BoxDecoration(
                                      color: Colors.blue,
                                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                        image: DecorationImage(
                                          image: imageProductList['custard'][index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          PositionedDirectional(
                                            bottom: 0,
                                              child: Container(
                                                height: 20,
                                                width: 140,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                                color: Colors.white,
                                                  boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black,
                                                    offset: Offset(0, -40),
                                                    blurRadius: 60,
                                                    spreadRadius: 0,
                                                    blurStyle: BlurStyle.normal
                                                  ),
                                                  ]
                                                ),
                                                child: SizedBox(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      const Icon(Icons.timer_sharp,size: 15,color: Colors.black45,),
                                                      Text(' ${productListModelUse!.foodListDetails[index].time!} • ${productListModelUse!.foodListDetails[index].km!} km',style: TextStyle(fontFamily: fontBold,fontSize: 11),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: width/1.01,
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                        // border: Border.fromBorderSide(BorderSide(color: Colors.black,width: 0.1)),
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white70,
                                            offset: Offset(0, -1),
                                            blurRadius: 20,
                                            spreadRadius: 0,
                                            blurStyle: BlurStyle.solid
                                          ),
                                        ]
                                      ),
                                      // child: ,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },),
                        ],
                      ),
                    ):Container(),//todo near & fast code write
                  ],
                ),
              ),
            ),
            Container(),//todo delivery tab
          ],
        ),
      ),
    );
  }

  // Padding buildPaddingButton({required double width,required String textFind,required double widthFind,required bool boolValueFind,required bool valueBoolSatStateData}) {
  //   return ;
  // }
}