import 'package:flutter/material.dart';
import 'package:onboarding/utilities/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8CEFF),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      _controller.animateToPage(_controller.page.toInt() + 4,
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      "SKIP",
                      style: skipStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: PageView(
                controller: _controller,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/1.png"),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          titleOne,
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          dummyString,
                          style: subTitleStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/2.png"),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          titleTwo,
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          dummyString,
                          style: subTitleStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/3.png"),
                        Text(
                          titleThree,
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          dummyString,
                          style: subTitleStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/4.png"),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          titleFour,
                          style: titleStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          dummyString,
                          style: subTitleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 1,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                  dotColor: Color(0xffe7f3fe),
                  dotHeight: 5,
                  expansionFactor: 2),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xff3E67A1),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 10),
                    child: IconButton(
                      onPressed: () {
                        _controller.animateToPage(_controller.page.toInt() + 1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
