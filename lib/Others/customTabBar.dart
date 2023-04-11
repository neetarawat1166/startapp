import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    //TODO implement iniState

    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Others",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              selectionColor: Color.fromARGB(255, 238, 235, 235),
            ),
            centerTitle: true,
            bottom: TabBar(
              controller: _controller,
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return Colors.blueGrey; //<-- SEE HERE
                  return null;
                },
              ),
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: ("Leave Process"),
                  icon: Icon(
                    Icons.description,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "Clubs",
                  icon: Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "Internship Info.",
                  icon: Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              Center(
                  child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Leave Procedure:\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey,
                            fontFamily: "Genos",
                            decoration: TextDecoration.underline)),
                    TextSpan(
                        text:
                            "Step 1: Parcel you leave docment from your house that is being signed by your parents.\n\nStep 2: When your leave process is arrived do signed it by you Wareden.\n\nStep 3: Then go to Vaani Mandir and verify your parents signature form the office.\n\nStep 4: Now next step is to go to your Department and do signed this docment by your respective HOD.\n\nStep 5: Now again go to your hostel and signed this leave again by your Warden.\n\nStep 6: Now your final step is to go to Vanni Mandir and submit this leave.From there you'll get a slip that mentions your departure date.\n\nStep 7:Now its a final step where you have to take final signature of your Warden and give half part of the slip to her.\n\n\n\n\n\n\n\n\n\n\n\n\nNOW YOU ARE ALL DONE WITH THE LEAVE PROCESS........"),
                  ],
                ),
              )),
              Center(
                  child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Various Clubs in Banasthali Vidyapith:\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey,
                            fontFamily: "Genos",
                            decoration: TextDecoration.underline)),
                    TextSpan(
                        text: '#Technical Clubs:\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                        text:
                            'These are the technical clubs which organizes events which consists of Hackathon,workshops,Quizes,Coding etc to enhance student\'s coding ability.\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                      text:
                          '1.GFGxBV Club\n2.Unstop Igniters Club\n3.Nayan Club\n4.Algobyte Club\n5.GDSC Club\n5.Wappers Club\n\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "Genos",
                      ),
                    ),
                    TextSpan(
                        text: '#Literary Clubs:\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                        text:
                            'Its a literary club which organizes events,workshops,competitions etc to enhance the literary skills of the students\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                      text: '1.Logos Club\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "Genos",
                      ),
                    ),
                    TextSpan(
                        text: '#Musical Clubs:\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                        text:
                            'Its a Musical club which organizes singing competitions and events in the college\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                      text: '1.Sangeha Club\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "Genos",
                      ),
                    ),
                    TextSpan(
                        text: '#Dancing Clubs:\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                        text:
                            'Its a Dancing club which organizes Dancing competitions and events in the college\n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Genos",
                        )),
                    TextSpan(
                      text: '1.Sangeha Club\n2.Aayam Club\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "Genos",
                      ),
                    ),
                  ],
                ),
              )),
              Center(
                  child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '6 Month Internship procedure:\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey,
                            fontFamily: "Genos",
                            decoration: TextDecoration.underline)),
                    TextSpan(text: 'Step1:  '),
                  ],
                ),
              )),
            ],
          )),
    );
  }
}
