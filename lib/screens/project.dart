import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/projectsweb.dart';
import 'about.dart';
import 'certificate.dart';
import 'countact.dart';
import 'home.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

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
                  'My Some Projects are!!',
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
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.83,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                          bottom: 10,
                          left: MediaQuery.of(context).size.width * 0.08,
                          right: MediaQuery.of(context).size.width * 0.08,
                        ),
                        child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('Project')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  print(snapshot.data!.docs[index].data());
                                  return Projects(
                                      context,
                                      snapshot.data!.docs[index].data()
                                          as Map<String, dynamic>);
                                },
                              );
                            } else {
                              return Center( child: CircularProgressIndicator());
                            }
                          },
                        ),
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
                                style:  TextStyle(
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
                            'My Some Projects are!!',
                            style:  TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.72,
                            width: MediaQuery.of(context).size.width,
                            child: StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('Project')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context, index) {
                                      print(snapshot.data!.docs[index].data());
                                      return ProjectsWeb(
                                          context,
                                          snapshot.data!.docs[index].data()
                                              as Map<String, dynamic>);
                                    },
                                  );
                                } else {
                                  return CircularProgressIndicator();
                                }
                              },
                            ),
                          ),
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
