import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const String name = '/profile-screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Profile', style: Theme
              .of(context)
              .textTheme
              .headlineSmall,)),
        ),
      
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                     SizedBox(
                       height: 120,
                       width: 120,
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(100),
                         child: Image.asset('assets/images/night_islan_img2.png',fit: BoxFit.cover,),
                       ),
                     ),
          
                    // Positioned(
                    //     bottom: 1,
                    //     right: 0,
                    //     child:Container(
                    //       width: 30,
                    //       height: 30,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(100),color: Colors.grey
                    //       ),
                    //       child: const Icon(Icons.edit),
                    //     ) ),
                  ],
                ),
                Text('Rimon islam',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black54),),
                Text('rimon124@gmail.com'),
                SizedBox(height: 20,)
      ,              FractionallySizedBox(
                  child: SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Edit Profile')),),
                ),
                const Divider()
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
