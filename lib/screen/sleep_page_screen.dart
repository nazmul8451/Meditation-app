import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meditation_app/screen/night_island_screen.dart';

import '../widgets/customHome_courseContainer.dart';

class SleepPageScreen extends StatefulWidget {
  const SleepPageScreen({super.key});

  static const String name = '/sleep-page';

  @override
  State<SleepPageScreen> createState() => _SleepPageScreenState();
}

class _SleepPageScreenState extends State<SleepPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sleep.png'),
                fit: BoxFit.fill

            )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  'Sleep Stories',
                  style: TextStyle(
                      color: Color(0xFFF2F2F2),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                textAlign: TextAlign.center,
                'Soothing bedtime stories to help you fall\ninto a deep and natural sleep',
                style: TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 34,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFF8E97FD),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/images/Frame1.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'All',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE6E7F2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFF586894),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/images/Frame4.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'My',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE6E7F2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFF586894),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/images/Frame8.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Kids',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE6E7F2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFF586894),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/images/Group6.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Sleep',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE6E7F2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFF586894),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/images/Frame3.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Sleep',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE6E7F2),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: 233,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset('assets/images/cover_img_for_sleep.png'),
                    ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(NightIslandScreen.name);
                          },
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.teal[300],
                                  ),
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/MaskGroup.png',),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Night Island',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xFFE6E7F2)),
                                ),
                                Text(
                                  '45 MIN . SLEEP MUSIC',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF98A1BD)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){},
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: 162,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.teal[300],
                                  ),
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/MaskGroup2.png',),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Sweet Sleep',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xFFE6E7F2)),
                                ),
                                Text(
                                  '45 MIN . SLEEP MUSIC',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF98A1BD)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    // body: Stack(
    //   children: [
    //     Align(
    //       alignment: Alignment.topCenter,
    //       child: Image.asset('assets/images/Union.png'),
    //     ),
    //     Positioned(
    //       height: 50.74,
    //       width: 50.74,
    //       top: 14.26,
    //       left: 48.69,
    //       child: Image.asset('assets/images/Ellipse32.png'),
    //     ),
    //     Positioned(
    //       height: 50.74,
    //       width: 50.74,
    //       top: 4.88,
    //       left: 65.91,
    //       child: Image.asset('assets/images/Ellipse.png'),
    //     ),
    //     Positioned(
    //       height: 12.68,
    //       width: 9.64,
    //       top: 20.95,
    //       left: 359.31,
    //       child: Image.asset(
    //         'assets/images/Vector6.png',
    //       ),
    //     ),
    //     Positioned(
    //       height: 12.68,
    //       width: 9.64,
    //       top: 73.69,
    //       left: 21.44,
    //       child: Image.asset(
    //         'assets/images/Vector8.png',
    //       ),
    //     ),
    //     Positioned(
    //         top: 66,
    //         left: 115.5,
    //         child: Center(
    //             child: Text(
    //           'Sleep Stories',
    //           style: TextStyle(
    //               color: Color(0xFFF2F2F2),
    //               fontSize: 28,
    //               fontWeight: FontWeight.w700),
    //         ))),
    //     Positioned(
    //       height: 8.25,
    //       width: 6.27,
    //       top: 71.52,
    //       left: 377.81,
    //       child: Image.asset(
    //         'assets/images/Vector9.png',
    //       ),
    //     ),
    //     Positioned(
    //       height: 8.69,
    //       width: 6.6,
    //       top: 134,
    //       left: 22.94,
    //       child: Image.asset(
    //         'assets/images/Vector10.png',
    //       ),
    //     ),
    //     Positioned(
    //       height: 8.69,
    //       width: 6.6,
    //       top: 123.26,
    //       left: 36.26,
    //       child: Image.asset(
    //         'assets/images/Vector11.png',
    //       ),
    //     ),
    //     Positioned(
    //         height: 44,
    //         width: 276,
    //         top: 111,
    //         left: 69,
    //         child: Center(
    //             child: Text(
    //           textAlign: TextAlign.center,
    //           'Soothing bedtime stories to help you fall into a deep and natural sleep',
    //           style: TextStyle(
    //               color: Color(0xFFF2F2F2),
    //               fontSize: 16,
    //               fontWeight: FontWeight.w300),
    //         ))),
    //     Positioned(
    //       top: 189.02,
    //       width: 404,
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 20),
    //         child: SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: Row(
    //             children: [
    //               Column(
    //                 children: [
    //                   Container(
    //                     height: 65,
    //                     width: 65,
    //                     decoration: BoxDecoration(
    //                       color: Color(0xFF8E97FD),
    //                       borderRadius: BorderRadius.circular(25),
    //                     ),
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(20),
    //                       child: Image.asset(
    //                         'assets/images/Frame1.png',
    //                         width: 25,
    //                         height: 25,
    //                         fit: BoxFit.contain,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'All',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                       color: Color(0xFFE6E7F2),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(width:20 ,),
    //               Column(
    //                 children: [
    //                   Container(
    //                     height: 65,
    //                     width: 65,
    //                     decoration: BoxDecoration(
    //                       color: Color(0xFF8E97FD),
    //                       borderRadius: BorderRadius.circular(25),
    //                     ),
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(20),
    //                       child: Image.asset(
    //                         'assets/images/Frame1.png',
    //                         width: 25,
    //                         height: 25,
    //                         fit: BoxFit.contain,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'All',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                       color: Color(0xFFE6E7F2),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(width:20 ,),
    //               Column(
    //                 children: [
    //                   Container(
    //                     height: 65,
    //                     width: 65,
    //                     decoration: BoxDecoration(
    //                       color: Color(0xFF8E97FD),
    //                       borderRadius: BorderRadius.circular(25),
    //                     ),
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(20),
    //                       child: Image.asset(
    //                         'assets/images/Frame1.png',
    //                         width: 25,
    //                         height: 25,
    //                         fit: BoxFit.contain,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'All',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                       color: Color(0xFFE6E7F2),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(width:20 ,),
    //               Column(
    //                 children: [
    //                   Container(
    //                     height: 65,
    //                     width: 65,
    //                     decoration: BoxDecoration(
    //                       color: Color(0xFF8E97FD),
    //                       borderRadius: BorderRadius.circular(25),
    //                     ),
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(20),
    //                       child: Image.asset(
    //                         'assets/images/Frame1.png',
    //                         width: 25,
    //                         height: 25,
    //                         fit: BoxFit.contain,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'All',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                       color: Color(0xFFE6E7F2),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(width:20 ,),
    //               Column(
    //                 children: [
    //                   Container(
    //                     height: 65,
    //                     width: 65,
    //                     decoration: BoxDecoration(
    //                       color: Color(0xFF8E97FD),
    //                       borderRadius: BorderRadius.circular(25),
    //                     ),
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(20),
    //                       child: Image.asset(
    //                         'assets/images/Frame1.png',
    //                         width: 25,
    //                         height: 25,
    //                         fit: BoxFit.contain,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'All',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                       color: Color(0xFFE6E7F2),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(width:20 ,),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       top: 311.02,
    //         left: 20,right: 20,
    //         child: Container(
    //       height: 233,
    //           width:373.6 ,
    //           child: Image.asset('assets/images/cover_img_for_sleep.png'),
    //     ),
    //     ),
    //     Positioned(
    //         top: 564.22,
    //         left: 20,
    //         child: Row(
    //       children: [
    //         SizedBox(
    //           height: MediaQuery.of(context).size.height,
    //           width: 162,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: Colors.teal[300],
    //                 ),
    //                 child:ClipRRect(
    //                   borderRadius: BorderRadius.circular(10),
    //                   child: Image.asset('assets/images/MaskGroup.png',),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Text(
    //                 'Night Island',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w700,
    //                     fontSize: 18,
    //                     color: Color(0xFFE6E7F2)),
    //               ),
    //               Text(
    //                 '45 MIN . SLEEP MUSIC',
    //                 style: TextStyle(
    //                     fontSize: 11,
    //                     fontWeight: FontWeight.w400,
    //                     color: Color(0xFFA1A4B2)),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     )),
    //     Positioned(
    //         top:564.22,
    //         left: 217,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             SizedBox(
    //               height: MediaQuery.of(context).size.height,
    //               width: 162,
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Container(
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.teal[300],
    //                     ),
    //                     child:ClipRRect(
    //                       borderRadius: BorderRadius.circular(10),
    //                       child: Image.asset('assets/images/MaskGroup2.png',),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 10,
    //                   ),
    //                   Text(
    //                     'Sweet Sleep',
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.w700,
    //                         fontSize: 18,
    //                         color: Color(0xFFE6E7F2)),
    //                   ),
    //                   Text(
    //                     '45 MIN . SLEEP MUSIC',
    //                     style: TextStyle(
    //                         fontSize: 11,
    //                         fontWeight: FontWeight.w400,
    //                         color: Color(0xFFA1A4B2)),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         )),
    //
    //
    //   ],
    // ),
  }
}
