import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

Widget Projects(BuildContext context, Map<String, dynamic> data) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(color: Color(0xff9D44C0),borderRadius: BorderRadius.circular(20),),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.03,
                  vertical: MediaQuery.of(context).size.width * 0.05,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(data['image'].toString(),height: 300),
                ),
              ),
              Center(
                child: Text(
                  data['name'].toString(),
                  style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: AppColors.primary),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Center(
                  child: Text(
                    data['about'].toString(),
                    style:  TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
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
                          child: Image.network('https://firebasestorage.googleapis.com/v0/b/portfolio-ca96e.appspot.com/o/images%2Fgithub.png?alt=media&token=9d68e6dd-d486-4578-a705-ca1e35ec646f',height: 30,))),
                      SizedBox(width: 5,),
                      Center(
                        child: Text(data['name'].toString(),style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.primary
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 20,),
            ],
          ),
        )),
  );
}
