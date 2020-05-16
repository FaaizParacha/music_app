import 'package:flutter/material.dart';
import 'package:musicapp/AnxietyAndStress.dart';
import 'package:musicapp/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,191,228,246),
      body: Column(
        children: <Widget>[
          sizedBoxHeight,
          Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                color: Colors.black,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){})),
          sizedBoxHeight,
          Text("SELF RESPECT",style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0
          ),),
          Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyApp()));
                        },
                        child: reusableContainer(
                          imageofCard: AssetImage('assets/1.jpeg'),
                          textofContainer: Text(
                            "STRESS AND ANXIETY",
                            style: TextStyle(color: Colors.white,
                            letterSpacing: 1.0,
                              fontSize: 22
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
//                            Navigator.of(context).push(MaterialPageRoute(
//                                builder: (context) => Providers()));
                        },
                        child: reusableContainer(
                          imageofCard: AssetImage('assets/2.jpeg'),
                          textofContainer: Text(
                            "RELAX",
                            style: TextStyle(color: Colors.white,
                                letterSpacing: 1.0,
                                fontSize: 22
                            ),
                          ),
                        ),
                      )),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
//                            Navigator.of(context).push(MaterialPageRoute(
//                                builder: (context) => Clients()));
                        },
                        child: reusableContainer(
                          imageofCard: AssetImage('assets/3.jpeg'),
                          textofContainer: Text(
                            "FALLING ASLEEP",
                            style: TextStyle(color: Colors.white,
                                letterSpacing: 1.0,
                                fontSize: 22
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
//                            Navigator.of(context).push(MaterialPageRoute(
//                                builder: (context) => Providers()));
                        },
                        child: reusableContainer(
                          imageofCard: AssetImage('assets/4.jpeg'),
                          textofContainer: Text(
                            "FOCUS",
                            style: TextStyle(color: Colors.white,
                                letterSpacing: 1.0,
                                fontSize: 22
                            ),
                          ),
                        ),
                      )),
                ],
              )),
        ],
      ),
    );
  }

}

class reusableContainer extends StatelessWidget {
  reusableContainer({this.textofContainer,this.imageofCard});

  final Text textofContainer;
  final AssetImage imageofCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.grey),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageofCard,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 10.0,
            top: 180.0,
            child: textofContainer,
          ),
        ],
      ),
    );
  }
}