import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/project.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/certificate.dart';
import 'package:portfolio/widgets/certificateweb.dart';
import 'about.dart';
import 'countact.dart';
import 'home.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

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
                  'My Some Achievements are:',
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
                          height: 10,
                        ),
                        SafeArea(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.80,
                            width: MediaQuery.of(context).size.width,
                            child: StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('Certificate')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context, index) {
                                      print(snapshot.data!.docs[index].data());
                                      return Certificate(
                                          context,
                                          snapshot.data!.docs[index].data()
                                              as Map<String, dynamic>);
                                    },
                                  );
                                } else {
                                  return const Center(child: CircularProgressIndicator());
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    )),
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
                                        builder: (context) => ContactScreen()));
                              },
                              child: Text(
                                'Contact Me',
                                style: TextStyle(
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
                    height: MediaQuery.of(context).size.height * 0.87,
                    // child: SingleChildScrollView(
                    //   scrollDirection: Axis.vertical,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Center(
                          child: Text(
                            'My Some Achievements are:',
                            style:  TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.02,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.71,
                                    width: MediaQuery.of(context).size.width,
                                    child: StreamBuilder<QuerySnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('Certificate')
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                snapshot.data!.docs.length,
                                            itemBuilder: (context, index) {
                                              // print(snapshot.data!.docs[index].data());
                                              return CertificateWeb(
                                                  context,
                                                  snapshot.data!.docs[index]
                                                          .data()
                                                      as Map<String, dynamic>);
                                            },
                                          );
                                        } else {
                                          return CircularProgressIndicator();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  // ),
                ],
              )),
            );
          }
        }));
  }
}
