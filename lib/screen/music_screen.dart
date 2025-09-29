import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/customCardDesign.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {

  final List <String> _imgPath =
      [
        'assets/images/music_img1.png',
        'assets/images/music_img2.png',
        'assets/images/music_img3.png',
        'assets/images/music_img1.png',
        'assets/images/music_img2.png',
        'assets/images/music_img3.png',
        'assets/images/music_img1.png',
        'assets/images/music_img2.png',
        'assets/images/music_img3.png',
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C),
      appBar: AppBar(
        backgroundColor: Color(0xFF03174C),
        title: Center(
          child: Text(
            'Sleep',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFFE6E7F2)),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 320),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: _imgPath.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 20,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              return Home_recomended_container(
                imgPath: _imgPath[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
