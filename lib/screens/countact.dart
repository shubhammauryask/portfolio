import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/Service/firebaseData.dart';
import 'package:portfolio/screens/project.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';
import 'certificate.dart';
import 'home.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  var fullName = TextEditingController ();
  var emailAddress = TextEditingController ();
  var mobileNumber = TextEditingController ();
  var subject = TextEditingController ();
  var message = TextEditingController ();
  // Defining funtion

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
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Center(
                          child: Text(
                            'Get Touch With',
                            style:  TextStyle(
                                fontSize: 31,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          'Me',
                          style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 31,
                              color: AppColors.primary),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(
                              width: 2,
                              color: AppColors.primary,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Full Name',style:  TextStyle(
                                  color:AppColors.primary,
                                ),textAlign: TextAlign.start,),
                                TextFormField(
                                    controller: fullName,
                                    decoration: InputDecoration(
                                      hintText: 'Shubham maurya',
                                     enabledBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(10),
                                         borderSide: BorderSide(
                                             width: 1,
                                             color: AppColors.primary
                                         )
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(10),
                                       borderSide: BorderSide(
                                         width: 1,
                                         color: AppColors.primary
                                       )
                                     )
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                    cursorColor: AppColors.primary
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                Text('Email Address',style:  TextStyle(
                                  color:AppColors.primary,
                                ),textAlign: TextAlign.start,),
                                TextFormField(
                                    controller: emailAddress,
                                    decoration: InputDecoration(
                                        hintText: 'shubhammauryask2002@gmail.com',
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        )
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                    cursorColor: AppColors.primary
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                Text('Mobile Number',style:  TextStyle(
                                  color:AppColors.primary,
                                ),textAlign: TextAlign.start,),
                                TextFormField(
                                    controller: mobileNumber,
                                    decoration: InputDecoration(
                                        hintText: '+91 9110009988',
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        )
                                    ),
                                    keyboardType: TextInputType.number,
                                    style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                    cursorColor: AppColors.primary
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                Text('Subject',style: TextStyle(
                                  color:AppColors.primary,
                                ),textAlign: TextAlign.start,),
                                TextFormField(
                                    controller: subject,
                                    decoration: InputDecoration(
                                        hintText: 'Type Your Subject',
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        )
                                    ),
                                    keyboardType: TextInputType.text,
                                    style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                    cursorColor: AppColors.primary
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                Text('Message',style:  TextStyle(
                                  color:AppColors.primary,
                                ),textAlign: TextAlign.start,),
                                TextFormField(
                                    controller: message,
                                    maxLines: 8,
                                    decoration: InputDecoration(
                                        hintText: 'Message',
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.primary
                                            )
                                        )
                                    ),
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                    cursorColor: AppColors.primary
                                ),

                                Center(
                                  child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                  ),
                                      child: Text('Send Message',style:  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: AppColors.primary,
                            )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email Address',style:  TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                              Text('shubhammauryask2002@gmail.com',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.02),
                              Text('Address',style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                              Text('Shivaji Boys Hostel, CSJM University Kanpur, Uttar Pradesh (208024)',style:  TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.02),
                              Text('Phone Number',style:  TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
                              Text('+91 9118601993',style:  TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),),
                              Divider(
                                color: AppColors.primary,
                              ),
                              Text('Social Media',style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),),
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
                            ],
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Image.network(
                            FirebaseData.email,
                            width: MediaQuery.of(context).size.width * 0.6,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03),
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
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Center(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText(" Get Touch With Me ",
                                    textStyle:  TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        color: AppColors.primary),
                                    speed: Duration(milliseconds: 100))
                              ],
                              repeatForever: true,
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
                              isRepeatingAnimation: true,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email_outlined,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    AnimatedTextKit(
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          "Email:",
                                          textStyle:  TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.018,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          speed: Duration(milliseconds: 50),
                                          curve: Curves.linear,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      'shubhammauryask2002@gamil.com',
                                      style:  TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02,
                                          color: AppColors.primary),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_sharp,
                                      color: AppColors.primary,
                                    ),
                                    Text(
                                      "Address: D205, Chhatrapati Shahu ji Boys Hostel CSJM University, Kanpur",
                                      style:  TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.017,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border:Border.all(
                                width: 2,
                                color: AppColors.primary,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Full Name',style:  TextStyle(
                                    color:AppColors.primary,
                                  ),textAlign: TextAlign.start,),
                                  TextFormField(
                                      controller: fullName,
                                      decoration: InputDecoration(
                                          hintText: 'Shubham maurya',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          )
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      style:  TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                      cursorColor: AppColors.primary
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                  Text('Email Address',style:  TextStyle(
                                    color:AppColors.primary,
                                  ),textAlign: TextAlign.start,),
                                  TextFormField(
                                      controller: emailAddress,
                                      decoration: InputDecoration(
                                          hintText: 'shubhammauryask2002@gmail.com',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          )
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      style:  TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                      cursorColor: AppColors.primary
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                  Text('Mobile Number',style:  TextStyle(
                                    color:AppColors.primary,
                                  ),textAlign: TextAlign.start,),
                                  TextFormField(
                                      controller: mobileNumber,
                                      decoration: InputDecoration(
                                          hintText: '+91 9110009988',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          )
                                      ),
                                      keyboardType: TextInputType.number,
                                      style:  TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                      cursorColor: AppColors.primary
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                  Text('Subject',style: TextStyle(
                                    color:AppColors.primary,
                                  ),textAlign: TextAlign.start,),
                                  TextFormField(
                                      controller: subject,
                                      decoration: InputDecoration(
                                          hintText: 'Type Your Subject',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          )
                                      ),
                                      keyboardType: TextInputType.text,
                                      style:  TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                      cursorColor: AppColors.primary
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                  Text('Message',style:  TextStyle(
                                    color:AppColors.primary,
                                  ),textAlign: TextAlign.start,),
                                  TextFormField(
                                      controller: message,
                                      maxLines: 8,
                                      decoration: InputDecoration(
                                          hintText: 'Message',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color: AppColors.primary
                                              )
                                          )
                                      ),
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                      cursorColor: AppColors.primary
                                  ),

                                  Center(
                                    child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                    ),
                                        child: Text('Send Message',style:  TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                          Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.primary,
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email Address',style:  TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                                Text('shubhammauryask2002@gmail.com',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                ),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02),
                                Text('Address',style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                                Text('Shivaji Boys Hostel, CSJM University Kanpur, Uttar Pradesh (208024)',style:  TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                ),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02),
                                Text('Phone Number',style:  TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                                Text('+91 9118601993',style:  TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                ),),
                                Divider(
                                  color: AppColors.primary,
                                ),
                                Text('Social Media',style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
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
                              ],
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.03),
                          Image.network(
                            FirebaseData.email,
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
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
