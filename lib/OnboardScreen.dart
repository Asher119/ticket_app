import 'package:flutter/material.dart';
import 'package:tickets_app/OnboardModel.dart';




class Onboardscreen extends StatefulWidget {
  const Onboardscreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnboardscreenState createState() => _OnboardscreenState();
}

class _OnboardscreenState extends State<Onboardscreen> {
  int currentIndex = 0;
  late PageController _controller;
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    //  getImages();
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    // itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 50,),
                            SizedBox(
                              width: 450,
                              
                              child: Container(
                                height:300 ,
                                width: 50,
                                child: Image.asset(
                                  contents[i].image.toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                  child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            child: Builder(builder: (context) {
                              if (currentIndex == 0) {
                                return Row(
                                  children: [
                                    indexDot(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    dot(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    dot(),
                                  ],
                                );
                              } else if (currentIndex == 1) {
                                return Row(
                                  children: [
                                    dot(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    indexDot(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    dot(),
                                  ],
                                );
                              } else {
                                return Row(
                                  children: [
                                    dot(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    dot(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    indexDot(),
                                  ],
                                );
                              }
                            }),
                          ),
                ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  contents[i].text.toString(),
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    
                                    color: Colors.black,
                                  ),
                                ),
            
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(contents[i].quotes.toString(),
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(contents[i].message.toString(),
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(builder: (context) {
                          if (currentIndex == 0) {
                            return TextButton(
                              onPressed: () {
                                // Get.toNamed("/otp");
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            );
                          } else if (currentIndex == 1) {
                            return TextButton(
                              onPressed: () {
                                // Get.toNamed("/otp");
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            );
                          } else {
                            return TextButton(
                              onPressed: () {
                                // Get.toNamed("/otp");
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            );
                          }
                        }),
                        currentIndex == contents.length - 1
                            ? Container(
                                height: 45,
                                margin: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width / 3,
                                child: ElevatedButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.red.shade300,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0))),
                                  onPressed: () {
                                    if (currentIndex == contents.length - 1) {
                                      //Firebaser
                                      // Navigator.push(
                                      //     context,
                                      //     PageTransition(
                                      //       duration: const Duration(
                                      //           milliseconds: 300),
                                      //       type: PageTransitionType
                                      //           .rightToLeft,
                                      //       child: const Otp(),
                                      //     ));
                                    }
                                    _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.bounceIn,
                                    );
                                  },
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             ash()));
                                    },
                                    child: const Text(
                                      "Get Start",
                                      style: TextStyle(  
                                          color: Colors.white,
                                          fontFamily: 'Inter-Medium',
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: TextButton.styleFrom(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0))),
                                  onPressed: () {
                                    if (currentIndex == contents.length - 1) {
                                      // Navigator.push(
                                      //     context,
                                      //     PageTransition(
                                      //       duration: const Duration(
                                      //           milliseconds: 300),
                                      //       type: PageTransitionType
                                      //           .rightToLeft,
                                      //       child: const Otp(),
                                      //     ));
                                    }
                                    _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.bounceIn,
                                    );
                                  },
                                  child: Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.red.shade300,
                                    size: 50,
                                  ),
                                ),
                              )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container indexDot() {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red.shade300),
    );
  }

  Container dot() {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade700,
      ),
    );
  }

  SizedBox skipButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 5,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>Onboardscreen()));
            },
            child: Text(
              'Skip',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.grey.shade400,
                  fontSize: 14,
                  fontFamily: 'Poppins'),
            ),
          )
        ],
      ),
    );
  }
}