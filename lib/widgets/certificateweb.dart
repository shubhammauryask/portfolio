import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

Widget CertificateWeb(BuildContext context, Map<String, dynamic> data) {
  return Padding(
    padding: const EdgeInsets.only(left: 100,right: 100,top:25,bottom: 25),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff9D44C0)
      ),
      child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20)),
                    child: Image.network(data['image'].toString(),height: MediaQuery.of(context).size.width*0.06,),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                Container(
                 height:  MediaQuery.of(context).size.height*0.35 ,
                  width: MediaQuery.of(context).size.width*0.3,
                  child: Column(
                    children: [
                      Center(
                        child: Text(data['name'].toString(),style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.02,
                          color: AppColors.primary
                        ),),
                      ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.width*0.1,
                              width: MediaQuery.of(context).size.width*0.4,
                              child: Text(data['about'].toString(),style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width*0.01,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),maxLines: 8,),
                            ),
                          ),

                    ],
                  ),
                )
              ],
            ),
    )

  );
}
