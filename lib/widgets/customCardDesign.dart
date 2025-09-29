import 'package:flutter/material.dart';
class Home_recomended_container extends StatelessWidget {
  String? imgPath;
  String? title;

  Home_recomended_container({
    super.key,
    this.imgPath,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final double cardWidth = MediaQuery.of(context).size.width * 0.4;
    final double imageHeight = 113.5; // fixed image height
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imageHeight,
            width: cardWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: imgPath == null || imgPath!.isEmpty
                  ? Colors.grey[300]
                  : null,
            ),
            child: imgPath != null && imgPath!.isNotEmpty
                ? ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imgPath!,
                fit: BoxFit.cover,
                width: cardWidth,
                height: imageHeight,
              ),
            )
                : Center(
              child: Icon(
                Icons.image_not_supported,
                color: Colors.grey[600],
                size: 40,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$title',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xFF3F414E)),
          ),
          Text(
            'MEDITATION . 3-10 MIN',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xFFA1A4B2)),
          ),
        ],
      ),
    );
  }
}
