import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

Widget ProjectsWeb(BuildContext context,  Map<String, dynamic> data) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(right:80,top: 25,left: 80),
      child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(color:  Color(0xff9D44C0),borderRadius: BorderRadius.circular(20),),
            child: Row(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    child: Image.network(data['image'].toString(),fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                    Center(
                      child: Text(
                        data['name'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.018,
                            color: AppColors.primary),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.3,
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Text(
                          data['about'].toString(),
                          style:  TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: MediaQuery.of(context).size.width * 0.016,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: () async{
                        Uri url = Uri.parse(data['link'].toString());
                        if (!await launchUrl(url, mode: LaunchMode.externalApplication,
                        )) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF512B81),
                        ),
                        child: Row(
                          children: [
                            Center(child: ClipRRect(
                                child: Image.network('https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fgithub.png?alt=media&token=9d68e6dd-d486-4578-a705-ca1e35ec646f',height: MediaQuery.of(context).size.width * 0.02,))),
                            SizedBox(width: 5,),
                            Center(
                              child: Text(data['name'].toString(),style:  TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width * 0.016,
                                  color: AppColors.primary
                              ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          )),
    ),
  );
}
