import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  static const String name = '/meditate-screen';

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  final List<Color> colors = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 66,
            ),
            Center(
                child: Text(
              'Meditate',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Color(0xFF3F414E)),
            )),
            SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              'we can learn how to recognize when our minds \nare doing their normal everyday acrobatics.',
              style: TextStyle(
                color: Color(0xFFA0A3B1),
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
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
                            color: Color(0xFF3F414E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
                            color: Color(0xFFA0A3B1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
                            color: Color(0xFFA0A3B1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
                            color: Color(0xFFA0A3B1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
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
                            color: Color(0xFFA0A3B1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset('assets/images/Group19.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Staggered_GridView()
          ],
        ),
      ),
    );
  }
}

class Staggered_GridView extends StatelessWidget {
  final List<String> imgPath = [
    'assets/images/mask_group3.png',
    'assets/images/group_image.png',
    'assets/images/mask_group_mask.png',
    'assets/images/mask_group3.png',
    'assets/images/group_image.png',
    'assets/images/mask_group_mask.png',
    'assets/images/mask_group3.png',
    'assets/images/group_image.png',
    'assets/images/mask_group_mask.png'


  ];
  final List<double> heightPattern = [210, 167];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      // দুই কলাম
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.all(16),
      itemCount: imgPath.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          height: heightPattern[index % heightPattern.length], // আলাদা height
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imgPath[index]),fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              'Item $index',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
