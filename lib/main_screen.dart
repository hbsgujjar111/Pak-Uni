import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:university_list/university_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xff1b5e20),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/bg.png",
                    height: MediaQuery.of(context).size.height * .14,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      child: Wrap(
                        runSpacing: MediaQuery.of(context).size.height * .02,
                        spacing: MediaQuery.of(context).size.width * .04,
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        children: [
                          generalBox(
                            context,
                            "assets/pakistan.png",
                            "All Universities",
                          ),
                          provinceBox(
                            context,
                            "assets/punjab.jpg",
                            "Punjab",
                          ),
                          provinceBox(
                            context,
                            "assets/sindh.jpg",
                            "Sindh",
                          ),
                          provinceBox(
                            context,
                            "assets/balochistan.jpg",
                            "Balochistan",
                          ),
                          provinceBox(
                            context,
                            "assets/khyber pakhtunkhwa.jpg",
                            "Khyber Pakhtunkhwa",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget generalBox(BuildContext context, String image, title) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UniversityPage(title: title, image: image),
        ),
      );
    },
    child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .84,
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * .84,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .84,
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * .02,
          ),
          child: Center(
            child: AutoSizeText(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * .06,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget provinceBox(BuildContext context, String image, title) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UniversityPage(title: title, image: image),
        ),
      );
    },
    child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * .02,
          ),
          child: Center(
            child: AutoSizeText(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * .06,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ),
      ],
    ),
  );
}
