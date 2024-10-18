import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Service/firebaseData.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/countact.dart';
import 'package:portfolio/screens/project.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/certificateweb.dart';
import '../widgets/projectsweb.dart';
import 'certificate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF512B81),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            //<------------Mobile App-------------------->
            return Scaffold(
              backgroundColor: Color(0xFF2D033B),
              // drawer: NavBar(),
              appBar: AppBar(
                title: Text(
                  'Welcome!!',
                  style: TextStyle(),
                ),
                iconTheme: IconThemeData(
                  color: Color(0xFF2D033B),
                  size: 35,
                  shadows: <Shadow>[
                    Shadow(color: Colors.greenAccent, blurRadius: 20.0)
                  ],
                ),
                backgroundColor: AppColors.primary,
              ),
              body: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hi There! ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 31,
                                color: Colors.white),
                          ),
                          Image.network(
                            FirebaseData.hii,
                            // 'https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fhii.png?alt=media&token=397b50ea-7d3d-49d4-9a70-1b4d042ec314',
                            height: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "I'M ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 31,
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text: 'SHUBHAM \nMAURYA',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 31,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.download_rounded,
                                    size: 30,
                                    color: AppColors.primary,
                                  ),
                                  Spacer(),
                                  Text(
                                    'My Resume',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF512B81),
                                padding: EdgeInsets.all(5)
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Container(
                          child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('work')
                            .doc('AlehcyCohVaohQ0t3T8k')
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return CircularProgressIndicator();
                          } else {
                            var userData = snapshot.data?.data();
                            String name = userData?['name'];
                            return Row(
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      name,
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                      speed: Duration(milliseconds: 100),
                                      curve: Curves.linear,
                                    ),
                                  ],
                                  repeatForever: true,
                                ),
                              ],
                            );
                          }
                        },
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      ClipRRect(
                          child: Image.network(
                        FirebaseData.cp,
                      )
                          // 'https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fcp.png?alt=media&token=8fe77d31-1e1a-4749-97c9-617c743f86cb'),
                          ),
                      // Work hai
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.78,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: [
                                  Text('Certificates',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 21,
                                          color: Colors.white)),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CertificateScreen()));
                                    },
                                    child: Text('View all',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: AppColors.primary)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.32,
                                  child: StreamBuilder<QuerySnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('Certificate')
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return CarouselSlider.builder(
                                            itemCount:
                                                snapshot.data!.docs.length,
                                            itemBuilder: (BuildContext context,
                                                    int itemIndex,
                                                    int pageViewIndex) =>
                                                Image.network(
                                              snapshot.data!
                                                  .docs[itemIndex]['image']
                                                  .toString(),
                                            ),
                                            options: CarouselOptions(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              aspectRatio: 16 / 9,
                                              viewportFraction: 1,
                                              initialPage: 0,
                                              enableInfiniteScroll: true,
                                              reverse: false,
                                              autoPlay: true,
                                              autoPlayInterval:
                                                  Duration(seconds: 3),
                                              autoPlayAnimationDuration:
                                                  Duration(milliseconds: 800),
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              enlargeCenterPage: true,
                                              enlargeFactor: 0.3,
                                              scrollDirection: Axis.horizontal,
                                            ),
                                          );
                                        } else {
                                          return CircularProgressIndicator();
                                        }
                                      })),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Text(
                        'LET ME',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 31,
                            color: Colors.white),
                      ),
                      Text(
                        'INTRODUCE',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 31,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        'MYSELF',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 31,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 18, color: Colors.white), // Default style
                                children: [
                                  TextSpan(text: "I am a "),
                                  TextSpan(
                                    text: "final year undergraduate student",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary), // Highlighted
                                  ),
                                  TextSpan(text: " at "),
                                  TextSpan(
                                    text: "UIET CSJM University, Kanpur",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange), // Highlighted
                                  ),
                                  TextSpan(text: ", pursuing a Bachelor's degree in Computer Science "),
                                  TextSpan(text: "."),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 18, color: Colors.white), // Default style
                                children: [
                                  // TextSpan(text: "I am a "),
                                  // TextSpan(
                                  //   text: "final year undergraduate student",
                                  //   style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary), // Highlighted
                                  // ),
                                  // TextSpan(text: " at "),
                                  // TextSpan(
                                  //   text: "UIET CSJM University, Kanpur",
                                  //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange), // Highlighted
                                  // ),
                                  TextSpan(text: "I have over "),
                                  TextSpan(
                                    text: "8 months",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary), // Highlighted
                                  ),
                                  TextSpan(text: " of hands-on experience as a "),
                                  TextSpan(
                                    text: "Flutter developer",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), // Highlighted
                                  ),
                                  TextSpan(text: ", having worked at "),
                                  TextSpan(
                                    text: "HealTether",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary), // Highlighted
                                  ),
                                  TextSpan(text: " and "),
                                  TextSpan(
                                    text: "Kartavaya Technology",
                                    style: TextStyle(fontWeight: FontWeight.bold, color:AppColors.primary), // Highlighted
                                  ),
                                  TextSpan(text: "."),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       width: MediaQuery.of(context).size.width * 0.8,
                      //       child: RichText(
                      //         text: TextSpan(
                      //           children: [
                      //             TextSpan(
                      //                 text: "I Love",
                      //                 style: TextStyle(
                      //                     color: Colors.white,
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.normal)),
                      //             TextSpan(
                      //                 text: ' problem solving ',
                      //                 style: TextStyle(
                      //                     color: AppColors.primary,
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.bold)),
                      //             TextSpan(
                      //                 text:
                      //                     'and doing competitive programming.',
                      //                 style: TextStyle(
                      //                     color: Colors.white,
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.normal)),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.02,
                      // ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('work')
                                  .doc('AlehcyCohVaohQ0t3T8k')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return CircularProgressIndicator();
                                } else {
                                  var userData = snapshot.data?.data();
                                  String name1 = userData?['name1'];
                                  return RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text:
                                                "My Field of Interest are building new ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal)),
                                        TextSpan(
                                            text: name1,
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "I am a ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text: 'tech geek ',
                                      style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          "and always learn \nand explore things related to\n",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text: 'Technology and Software',
                                      style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection("hobbies")
                                  .doc('FTZOg8CdaU3AE8OTwz6V')
                                  .snapshots(),
                              builder: (context, snapshots) {
                                if (!snapshots.hasData) {
                                  return CircularProgressIndicator();
                                } else {
                                  var userData = snapshots.data?.data();
                                  String name0 = userData?['name0'];
                                  String name1 = userData?['name1'];
                                  return RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: name0,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal)),
                                        TextSpan(
                                            text: name1,
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.78,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20),
                        //   border:Border.all(
                        //     color:Color(0xFF512B81),
                        //     width: 1,
                        //   ),
                        //   boxShadow:[
                        //     BoxShadow(
                        //         color: Color(0xC0B0C0B2),
                        //         blurRadius: 1,
                        //         spreadRadius: 1,
                        //         offset: Offset(4, 4)
                        //     )
                        //   ],
                        //   color:Color(0xFF512B81),
                        // ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: [
                                  Text('Projects',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 21,
                                          color: Colors.white)),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProjectScreen()));
                                    },
                                    child: Text('View all',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: AppColors.primary)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Container(
                                  child: StreamBuilder<QuerySnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('Project')
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return CarouselSlider.builder(
                                            itemCount:
                                                snapshot.data!.docs.length,
                                            itemBuilder: (BuildContext context,
                                                    int itemIndex,
                                                    int pageViewIndex) =>
                                                Image.network(
                                              snapshot.data!
                                                  .docs[itemIndex]['image']
                                                  .toString(),
                                            ),
                                            options: CarouselOptions(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              aspectRatio: 16 / 9,
                                              viewportFraction: 1,
                                              initialPage: 0,
                                              enableInfiniteScroll: true,
                                              reverse: false,
                                              autoPlay: true,
                                              autoPlayInterval:
                                                  Duration(seconds: 3),
                                              autoPlayAnimationDuration:
                                                  Duration(milliseconds: 800),
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              enlargeCenterPage: true,
                                              enlargeFactor: 0.3,
                                              scrollDirection: Axis.horizontal,
                                            ),
                                          );
                                        } else {
                                          return CircularProgressIndicator();
                                        }
                                      })),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      ClipRRect(
                        child: Image.network(
                          FirebaseData.profile,
                          // 'https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fprofile.png?alt=media&token=f29d8e45-653c-4468-8bcc-f9bd03d8e632',
                          height: 300,
                        ),
                        // child: Image.asset(
                        //   'assets/images/profile.png',
                        //   height: 300,
                        // ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText(
                            "FIND ME ON",
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white),
                            speed: Duration(milliseconds: 100),
                          )
                        ],
                        repeatForever: true,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutScreen()));
                        },
                        isRepeatingAnimation: true,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Feel free to, ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal)),
                            TextSpan(
                                text: 'connect ',
                                style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "with me.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () async {
                              Uri url = Uri.parse(
                                  'https://github.com/shubhammauryask');
                              if (!await launchUrl(url,
                                  mode: LaunchMode.externalApplication)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Image.network(
                              FirebaseData.github,
                              // 'https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fgithub.png?alt=media&token=9d68e6dd-d486-4578-a705-ca1e35ec646f',
                              height: 40,
                              color: AppColors.primary,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              Uri url = Uri.parse(
                                  'https://www.linkedin.com/in/shubham-maurya-20861a226/');
                              if (!await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                              )) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Image.network(
                              FirebaseData.linkedin,
                              // 'https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Flinkedin.png?alt=media&token=2a2107d0-da39-4d82-bb32-bb93ad26902a',
                              height: 40,
                              color: AppColors.primary,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              Uri url = Uri.parse(
                                  'https://www.instagram.com/shubhammaurya6894/');
                              if (!await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                              )) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Image.network(
                              FirebaseData.instagram,
                              height: 40,
                              color: AppColors.primary,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              Uri url = Uri.parse(
                                  'https://twitter.com/Shubhammau2431');
                              if (!await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                              )) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Image.network(
                              FirebaseData.twitter,
                              height: 40,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            //<-----------Desktop---------->
            return Scaffold(
              backgroundColor: Color(0xFF2D033B),
              body: Container(
                  child: Column(
                children: [
                  Material(
                    elevation: 10,
                    color: Color(0xFF421F6D),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.08,
                          vertical: MediaQuery.of(context).size.height * 0.015),
                      height: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: Text(
                                'Portfolio',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              )),
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutScreen()));
                              },
                              child: Text(
                                'About',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CertificateScreen()));
                              },
                              child: Text(
                                'Certificate',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProjectScreen()));
                              },
                              child: Text(
                                'Project',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ContactScreen()));
                              },
                              child: Text(
                                'Contact Me',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Hello It's Me",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 21,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        AnimatedTextKit(
                                          animatedTexts: [
                                            TyperAnimatedText(
                                              'SHUBHAM MAURYA',
                                              textStyle: TextStyle(
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.primary),
                                              speed: Duration(milliseconds: 50),
                                              curve: Curves.linear,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "And I  Welcome You all",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 21,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: Text(
                                            " I am Flutter developer and Android Developer,having extensive knowledge of Dart ,Flutter and Kotlin "
                                            "My expertise in making App , webApp, App design and Frontend design , backend and many more. ",
                                            maxLines: 4,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Add one more Line.
                                    SizedBox(
                                      height: 45,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    Uri url = Uri.parse(
                                                        'https://www.instagram.com/shubhammaurya6894/');
                                                    if (!await launchUrl(
                                                      url,
                                                      mode: LaunchMode
                                                          .externalApplication,
                                                    )) {
                                                      throw Exception(
                                                          'Could not launch $url');
                                                    }
                                                  },
                                                  child: ClipRect(
                                                    child: Image.network(
                                                      FirebaseData.instagram,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.04,
                                                      color: AppColors.primary,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02,
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    Uri url = Uri.parse(
                                                        'https://www.linkedin.com/in/shubham-maurya-20861a226/');
                                                    if (!await launchUrl(
                                                      url,
                                                      mode: LaunchMode
                                                          .externalApplication,
                                                    )) {
                                                      throw Exception(
                                                          'Could not launch $url');
                                                    }
                                                  },
                                                  child: ClipRect(
                                                    child: Image.network(
                                                      FirebaseData.linkedin,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.04,
                                                      color: AppColors.primary,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02,
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    Uri url = Uri.parse(
                                                        'https://github.com/shubhammauryask');
                                                    if (!await launchUrl(url,
                                                        mode: LaunchMode
                                                            .externalApplication)) {
                                                      throw Exception(
                                                          'Could not launch $url');
                                                    }
                                                  },
                                                  child: ClipRect(
                                                    child: Image.network(
                                                      FirebaseData.github,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.04,
                                                      color: AppColors.primary,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02,
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    Uri url = Uri.parse(
                                                        'https://twitter.com/Shubhammau2431');
                                                    if (!await launchUrl(
                                                      url,
                                                      mode: LaunchMode
                                                          .externalApplication,
                                                    )) {
                                                      throw Exception(
                                                          'Could not launch $url');
                                                    }
                                                  },
                                                  child: ClipRect(
                                                    child: Image.network(
                                                      FirebaseData.twitter,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.04,
                                                      color: AppColors.primary,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.018,
                              ),
                              ClipRRect(
                                child: Image.network(
                                  FirebaseData.cp,
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.017,
                              ),
                            ],
                          ),
                          //////////
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.55,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 55, top: 15),
                                    child: Row(
                                      children: [
                                        Text('Certificates',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 21,
                                                color: Colors.white)),
                                        Spacer(),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CertificateScreen()));
                                          },
                                          child: Text('View all',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color: AppColors.primary)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.44,
                                      child: StreamBuilder<QuerySnapshot>(
                                          stream: FirebaseFirestore.instance
                                              .collection('Certificate')
                                              .snapshots(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return CarouselSlider.builder(
                                                itemCount:
                                                    snapshot.data!.docs.length,
                                                itemBuilder: (BuildContext
                                                            context,
                                                        int itemIndex,
                                                        int pageViewIndex) =>
                                                    CertificateWeb(
                                                        context,
                                                        snapshot.data!
                                                                .docs[itemIndex]
                                                                .data()
                                                            as Map<String,
                                                                dynamic>),
                                                options: CarouselOptions(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.44,
                                                  aspectRatio: 16 / 9,
                                                  viewportFraction: 1,
                                                  initialPage: 0,
                                                  enableInfiniteScroll: true,
                                                  reverse: false,
                                                  autoPlay: true,
                                                  autoPlayInterval:
                                                      Duration(seconds: 3),
                                                  autoPlayAnimationDuration:
                                                      Duration(
                                                          milliseconds: 800),
                                                  autoPlayCurve:
                                                      Curves.fastOutSlowIn,
                                                  enlargeCenterPage: true,
                                                  enlargeFactor: 0.3,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                ),
                                              );
                                            } else {
                                              return CircularProgressIndicator();
                                            }
                                          })),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.1,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03,
                            ),
                            child: Row(
                              children: [
                                Image.network(
                                  FirebaseData.profile,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '.About Me',
                                            style: TextStyle(
                                                fontSize: 31,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.primary),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Flutter Developer',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.019,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'I am skilled and passionate flutter developer with deep knowledge and understanding of frontend and backend to change with '
                                        'creative mindset and strong foundation in flutter Development.',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.018,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        maxLines: 7,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Center(
                              //More About Me
                              child: AnimatedTextKit(
                            animatedTexts: [
                              WavyAnimatedText(" More About Me",
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: AppColors.primary),
                                  speed: Duration(milliseconds: 100))
                            ],
                            repeatForever: true,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutScreen()));
                            },
                            isRepeatingAnimation: true,
                          )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.65,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 65, top: 15),
                                    child: Row(
                                      children: [
                                        Text('Projects',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 21,
                                                color: Colors.white)),
                                        Spacer(),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CertificateScreen()));
                                          },
                                          child: Text('View all',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color: AppColors.primary)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.54,
                                      child: StreamBuilder<QuerySnapshot>(
                                          stream: FirebaseFirestore.instance
                                              .collection('Project')
                                              .snapshots(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return CarouselSlider.builder(
                                                itemCount:
                                                    snapshot.data!.docs.length,
                                                itemBuilder: (BuildContext
                                                            context,
                                                        int itemIndex,
                                                        int pageViewIndex) =>
                                                    ProjectsWeb(
                                                        context,
                                                        snapshot.data!
                                                                .docs[itemIndex]
                                                                .data()
                                                            as Map<String,
                                                                dynamic>),
                                                options: CarouselOptions(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.5,
                                                  aspectRatio: 16 / 9,
                                                  viewportFraction: 1,
                                                  initialPage: 0,
                                                  enableInfiniteScroll: true,
                                                  reverse: false,
                                                  autoPlay: true,
                                                  autoPlayInterval:
                                                      Duration(seconds: 3),
                                                  autoPlayAnimationDuration:
                                                      Duration(
                                                          milliseconds: 800),
                                                  autoPlayCurve:
                                                      Curves.fastOutSlowIn,
                                                  enlargeCenterPage: true,
                                                  enlargeFactor: 0.3,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                ),
                                              );
                                            } else {
                                              return CircularProgressIndicator();
                                            }
                                          })),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            );
          }
        }));
  }
}
