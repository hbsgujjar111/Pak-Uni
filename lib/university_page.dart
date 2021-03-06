import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university_list/api/api.dart';
import 'package:url_launcher/url_launcher.dart';

class UniversityPage extends StatefulWidget {
  final String title, image;

  UniversityPage({required this.title, required this.image});

  @override
  _UniversityPageState createState() => _UniversityPageState();
}

class _UniversityPageState extends State<UniversityPage> {
  dynamic data = ApiData().fetchAllUni();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * .26,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              widget.image,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .26,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * .02,
                      horizontal: MediaQuery.of(context).size.width * .01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FutureBuilder(
                          future: data,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Expanded(
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .65,
                                  child: ListView.builder(
                                    itemCount: (snapshot.data as List).length,
                                    itemBuilder: (context, i) {
                                      if (widget.title.toString() ==
                                          "All Universities") {
                                        return universityBox(
                                          context,
                                          (snapshot.data as List)[i]["name"]
                                              .toString(),
                                          (snapshot.data as List)[i]
                                                  ["web_pages"][0]
                                              .toString(),
                                        );
                                      } else if (widget.title.toString() ==
                                          "Punjab") {
                                        if ((snapshot.data as List)[i]
                                                    ["state-province"]
                                                .toString() ==
                                            "Panjab") {
                                          return universityBox(
                                            context,
                                            (snapshot.data as List)[i]["name"]
                                                .toString(),
                                            (snapshot.data as List)[i]
                                                    ["web_pages"][0]
                                                .toString(),
                                          );
                                        }
                                      } else if (widget.title.toString() ==
                                          "Sindh") {
                                        if ((snapshot.data as List)[i]
                                                    ["state-province"]
                                                .toString() ==
                                            "Sindh") {
                                          return universityBox(
                                            context,
                                            (snapshot.data as List)[i]["name"]
                                                .toString(),
                                            (snapshot.data as List)[i]
                                                    ["web_pages"][0]
                                                .toString(),
                                          );
                                        }
                                      } else if (widget.title.toString() ==
                                          "Balochistan") {
                                        if ((snapshot.data as List)[i]
                                                    ["state-province"]
                                                .toString() ==
                                            "Balochistan") {
                                          return universityBox(
                                            context,
                                            (snapshot.data as List)[i]["name"]
                                                .toString(),
                                            (snapshot.data as List)[i]
                                                    ["web_pages"][0]
                                                .toString(),
                                          );
                                        }
                                      } else if (widget.title.toString() ==
                                          "Khyber Pakhtunkhwa") {
                                        if ((snapshot.data as List)[i]
                                                    ["state-province"]
                                                .toString() ==
                                            "Khyber Pakhtunkhwa") {
                                          return universityBox(
                                            context,
                                            (snapshot.data as List)[i]["name"]
                                                .toString(),
                                            (snapshot.data as List)[i]
                                                    ["web_pages"][0]
                                                .toString(),
                                          );
                                        }
                                      }
                                      return SizedBox();
                                    },
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height * .3,
                                ),
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .08,
              child: AppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                elevation: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget universityBox(BuildContext context, String title, url) {
  return Container(
    width: MediaQuery.of(context).size.width * .96,
    height: MediaQuery.of(context).size.height * .08,
    // color: Colors.yellow,
    margin: EdgeInsets.all(
      MediaQuery.of(context).size.width * .01,
    ),
    padding: EdgeInsets.all(
      MediaQuery.of(context).size.width * .012,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .83,
          height: MediaQuery.of(context).size.height * .07,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .83,
                    child: AutoSizeText(
                      title,
                      style: TextStyle(
                          color: Color(0xff1b5e20),
                          fontSize: MediaQuery.of(context).size.width * .04,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                      // textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.height * .07,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  if (await canLaunch(url))
                    await launch(url);
                  else
                    throw "Could not launch $url";
                },
                child: Icon(
                  Icons.link,
                  color: Color(0xff1b5e20),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
