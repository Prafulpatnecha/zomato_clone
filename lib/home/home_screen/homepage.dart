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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
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
                                  color: Colors.white,
                                  fontFamily: fontBold,
                                  fontSize: 20),
                            ),
                            Text(
                              'Mode',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontBold,
                                  height: 0.1),
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: Switch.adaptive(
                                value: valueBool,
                                onChanged: (value) {
                                  setState(() {
                                    valueBool = value!;
                                  });
                                },
                                activeColor: Colors.white,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                trackOutlineWidth: WidgetStateProperty.all(13),
                                trackOutlineColor:
                                    WidgetStateProperty.all(colorZomato),
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
              Text(
                ' Vote now > ',
                style: TextStyle(
                  height: -1.5,
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: fontLight,
                  backgroundColor: Colors.black,
                ),
              ),
              paddingShowLineText(textFind: 'EXPLORE'),
              SingleChildScrollView(
                child: Row(
                  children: [
                    ...List.generate(
                      exploreList!.foodListDetails.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // print(index);
                            });
                          },
                          child: Container(
                            width: 110,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.blue,

                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              paddingShowLineText(textFind: "WHAT'S ON YOUR MIND?"),
            ],
          ),
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
