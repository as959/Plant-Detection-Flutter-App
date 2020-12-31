import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:Plantify/nav_bar.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Center(
      child: Image.asset(
        assetName,
        width: 700.0,
        height: 900.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 14.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(children: <Widget>[
            Container(
              height: 470,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/info1.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Click on the camera icon to capture leaf or upload icon to select image from gallery ",
              textAlign: TextAlign.center,
            )
          ]),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(children: <Widget>[
            Container(
              height: 450,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/info2.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Make sure leaf is properly framed to avoid inaccurate results",
              textAlign: TextAlign.center,
            )
          ]),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(children: <Widget>[
            Container(
              height: 450,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/info3.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Take centered, well-lit and focused photos of leaf",
              textAlign: TextAlign.center,
            )
          ]),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.teal),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.teal,
      ),
      done: const Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.teal)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavBar(),
    );
  }
}
