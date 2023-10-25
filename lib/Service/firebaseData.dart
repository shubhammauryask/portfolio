import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseData {
  static var email = '';
  static var linkedin = '';
  static var github = '';
  static var about ='';
  static var arrow ='';
  static var cp ='';
  static var hii ='';
  static var instagram ='';
  static var profile ='';
  static var programmer ='';
  static var twitter ='';

  static Future<String> getData() async {
    // EasyLoading.show();
    // certificateList = await FirebaseFirestore.instance
    //     .collection('Certificate')
    //     .snapshots()
    //     .toList();
    // QuerySnapshot certificateQuery = await FirebaseFirestore.instance.collection('Certificate').get();
    // List<DocumentSnapshot> certificateList = certificateQuery.docs;
    // print('chandan');
    // projectList = await FirebaseFirestore.instance
    // .collection('Project')
    // .snapshots()
    // .toList();


    await FirebaseFirestore.instance
    .collection('images')
    .doc('IRBmmcDNORyxoZE3Ac7L')
    .get()
    .then((value) => {
      about = value.get('about'),
      arrow = value.get('arrow'),
       cp = value.get('cp'),
       hii = value.get('hii'),
       instagram = value.get('instagram'),
       profile = value.get('profile'),
       programmer = value.get('programmer'),
       twitter = value.get('twitter'),
      linkedin = value.get('linkedin'),
      github = value.get('github'),
      email = value.get('email'),
    });
    print('chandan');
    print(arrow);
    print(programmer);
    print(profile);
     print(twitter);
     print(instagram);
    print(cp);
    print(email);
    print(hii);
    print(about);
    print(linkedin);
    print(github);


    return "";

  }
}

