import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/project.dart';
import 'package:portfolio/utils/colors.dart';
import 'certificate.dart';
import 'countact.dart';
import 'home.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                  style:  TextStyle(),
                ),
                iconTheme: IconThemeData(
                  color: Color(0xFF2D033B),
                  size: 35,
                  shadows: <Shadow>[Shadow(color: Colors.greenAccent, blurRadius: 20.0)],
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
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Know Who ",
                                  style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: 31,
                                      fontWeight: FontWeight.normal)),
                              TextSpan(
                                  text: "I'M",
                                  style:  TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 31,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.75,
                            child: RichText(
                              maxLines: 6,
                              overflow: TextOverflow.fade,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Hi Everyone I am ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text: 'Shubham Maurya',
                                      style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: ' from ',
                                      style:  TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text: 'Varanasi , India',
                                      style:  TextStyle(
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
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.83,
                              child: RichText(
                                maxLines: 5,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text:
                                            "I am 3rd year undergraduate at UIET "
                                            "CSJM University, Kanpur. and I am pursuing my b.tech in",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal)),
                                    TextSpan(
                                        text: ' CSE.',
                                        style:  TextStyle(
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
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          "Some of my competitive programming achievements are :  ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 21,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/arrow.png',
                                  height: 20,
                                  color: AppColors.primary,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.7,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Secured ",
                                            style:  TextStyle(
                                                color: Colors.white,
                                                fontSize:  16,
                                                fontWeight: FontWeight.normal)),
                                        TextSpan(
                                            text: '950',
                                            style:  TextStyle(
                                                color: AppColors.primary,
                                                fontSize:  16,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: "rank in Starter 86 Codechef. ",
                                            style:  TextStyle(
                                                color: Colors.white,
                                                fontSize:  16,
                                                fontWeight: FontWeight.normal)),
                                      ],
                                    ),
                                    maxLines: 4,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/arrow.png',
                                  height: 20,
                                  color: AppColors.primary,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.7,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Secured ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal)),
                                        TextSpan(
                                            text: '9796',
                                            style:  TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: " rank in Round 858 in Codeforces. ",
                                            style:  TextStyle(
                                                color: Colors.white,
                                                fontSize:  16,
                                                fontWeight: FontWeight.normal)),
                                      ],
                                    ),
                                    maxLines: 4,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/arrow.png',
                                  height:  20,
                                  color: AppColors.primary,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.7,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Secured ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:  16,
                                                fontWeight: FontWeight.normal)),
                                        TextSpan(
                                            text: '5526 ',
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: " rank in ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:  16,
                                                fontWeight: FontWeight.normal)),
                                        TextSpan(
                                            text: 'Google Kickstart ',
                                            style:  TextStyle(
                                                color: AppColors.primary,
                                                fontSize:  16,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: " in Farewell Round A.  ",
                                            style:  TextStyle(
                                                color: Colors.white,
                                                fontSize:  16,
                                                fontWeight: FontWeight.normal)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // write more.......
                          ],
                        ),
                      ),

                      //<-------Achievements------------>

                      Image.network('https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fprogrammer.png?alt=media&token=7ab30700-db6b-4676-8922-0457cdccca7e'),
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
                child:Column(
                  children: [
                    Material(
                      elevation: 10,
                      color:  Color(0xFF421F6D),
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
                                      MediaQuery.of(context).size.width * 0.02,
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
                                  style:  TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width * 0.015,
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
                                  style:  TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width * 0.015,
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
                                  style:  TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width * 0.015,
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
                                      MediaQuery.of(context).size.width * 0.015,
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
                                  style:  TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary),
                                )),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height*0.85,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width * 0.1,
                                vertical: MediaQuery.of(context).size.height * 0.1,
                              ),
                              child: Row(
                                children: [
                                  ClipOval(
                                    child:StreamBuilder(
                                      stream: FirebaseFirestore.instance.collection('images').doc('8rbrn9PPBL84EBcBevuW').snapshots(),
                                      builder: (context,snapshot){
                                        if(!snapshot.hasData){
                                          return CircularProgressIndicator(color: Colors.greenAccent,);
                                        }else{
                                          var data = snapshot.data?.data();
                                          String image = data?['photo1'];
                                          return Image.network(
                                            image,
                                            height:MediaQuery.of(context).size.width * 0.2,
                                          );
                                        }
                                      },
                                    ),
                                    // child:
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText("Know Who I'M",
                                              textStyle:  TextStyle(
                                                  fontSize: MediaQuery.of(context).size.width * 0.02,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.primary),
                                              speed: Duration(milliseconds: 200),
                                              curve: Curves.bounceOut),
                                        ],
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.5,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "Hi Everyone I am ",
                                                  style:  TextStyle(
                                                      color: Colors.white,
                                                      fontSize: MediaQuery.of(context).size.width * 0.017,
                                                      fontWeight: FontWeight.normal)),
                                              TextSpan(
                                                  text: 'SHUBHAM MAURYA',
                                                  style:  TextStyle(
                                                      color: AppColors.primary,
                                                      fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                      fontWeight: FontWeight.bold)),
                                              TextSpan(
                                                  text: " from ",
                                                  style:  TextStyle(
                                                      color: Colors.white,
                                                      fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                      fontWeight: FontWeight.normal)),
                                              TextSpan(
                                                  text: "Varanasi , Uttar Pradesh, India.",
                                                  style: TextStyle(
                                                      color: AppColors.primary,
                                                      fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                      fontWeight: FontWeight.normal)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width*0.05
                              ),
                              child: Column(
                                children: [
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        "I am 3rd year undergraduate at UIET"
                                            " CSJM University, Kanpur and I am pursuing my B.tech in Computer Science and Engineering.",
                                        textStyle:  TextStyle(
                                            fontSize:  MediaQuery.of(context).size.width * 0.02,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        speed: Duration(milliseconds: 50),
                                        curve: Curves.linear,
                                      ),
                                    ],isRepeatingAnimation: false,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.08,
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                      MediaQuery.of(context).size.width * 0.1,
                                    ),
                                    child:Text(
                                      "Some of my competitive programming achievements are :",
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.03,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width * 0.1,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/arrow.png',
                                        height: MediaQuery.of(context).size.width * 0.018,
                                        color: AppColors.primary,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Secure ",
                                                style:  TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                            TextSpan(
                                                text: '950 ',
                                                style:  TextStyle(
                                                    color: AppColors.primary,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.bold)),
                                            TextSpan(
                                                text: "rank in Starter 86 Codechef ",
                                                style:  TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 40,),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/arrow.png',
                                        height:  MediaQuery.of(context).size.width * 0.018,
                                        color: AppColors.primary,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Secure ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                            TextSpan(
                                                text: ' 9796 ',
                                                style:  TextStyle(
                                                    color: AppColors.primary,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.bold)),
                                            TextSpan(
                                                text: "rank in Round 858 in Codeforces ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 40,),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/arrow.png',
                                        height:  MediaQuery.of(context).size.width * 0.018,
                                        color: AppColors.primary,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Secure ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                            TextSpan(
                                                text: '5526 ',
                                                style: TextStyle(
                                                    color: AppColors.primary,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.bold)),
                                            TextSpan(
                                                text: "rank ",
                                                style:  TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                            TextSpan(
                                                text: 'Google Kickstart ',
                                                style:  TextStyle(
                                                    color: AppColors.primary,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.bold)),
                                            TextSpan(
                                                text: " in Farewell Round A  ",
                                                style:  TextStyle(
                                                    color: Colors.white,
                                                    fontSize:  MediaQuery.of(context).size.width * 0.017,
                                                    fontWeight: FontWeight.normal)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  // write more.......
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            ClipRect(
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fprogrammer.png?alt=media&token=7ab30700-db6b-4676-8922-0457cdccca7e',
                                  height:  MediaQuery.of(context).size.width * 0.4,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                )

              ),
            );
          }
        }));
  }
}
