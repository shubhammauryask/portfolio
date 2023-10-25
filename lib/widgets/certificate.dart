import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

Widget Certificate(BuildContext context, Map<String, dynamic> data) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(color: Color(0xff9D44C0),borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.03,
                  vertical: MediaQuery.of(context).size.width * 0.05,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(data['image'].toString()),
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
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        )),
  );
}
