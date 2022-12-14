import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids/Pages/LetsStartLearning.dart';
import 'package:lottie/lottie.dart';
import 'Pages/LookAndChooes.dart';
import 'Pages/VideoLearning.dart';
import 'Pages/listen_and_guess.dart';
import 'component/Courasal_Slider_Component.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String url =
      "https://play.google.com/store/apps/details?id=" + "com.hdsh.kids";
  int index;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Exit App',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              content: Text(
                'Do you want to exit an App?',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('No'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return OverflowBar(children: [
      WillPopScope(
        onWillPop: showExitPopup,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFEF7F0),
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: size.height * 0.3,
                child: Stack(
                  children: [
                    Container(
                        height: size.height * 0.3 - 27,
                        decoration: const BoxDecoration(
                            color: Color(0xFFFEF7F0),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                                bottomRight: Radius.circular(36))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CourasalSliderComponent(),
                        )),
                  ],
                ),
              ),
              // SizedBox(
              //   height: size.height * 0.3,
              //   child: Lottie.asset('assets/images/kid.json'),
              // ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.count(
                      physics: ScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LetsStartLearning(index)));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE4F2E6),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/number.png",
                                  height: 90,
                                ),
                                Text(
                                  'Lets Start Learning',
                                  style: TextStyle(
                                      fontFamily: "arlrdbd",
                                      color: Color(0xFF6DB072)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoLearning()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF9F4),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/video.png",
                                  height: 90,
                                ),
                                Text(
                                  'Video Learning',
                                  style: TextStyle(
                                      fontFamily: "arlrdbd",
                                      color: Color(0xFFEC9E4E)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LookAndChooes(index)));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFEF9E4),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/apple.png",
                                  height: 90,
                                ),
                                Text(
                                  'Look And Choose',
                                  style: TextStyle(
                                      fontFamily: "arlrdbd",
                                      color: Color(0xFFF2CC2B)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListenGuess()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEBE8FD),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/lione.png",
                                  height: 90,
                                ),
                                Text(
                                  'Listen and Guess',
                                  style: TextStyle(
                                      fontFamily: "arlrdbd",
                                      color: Color(0xFF8770E4)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),

          )
        ),

    ]);
  }
}
