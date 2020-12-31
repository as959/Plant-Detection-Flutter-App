import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:Plantify/nav_bar.dart';
import 'package:Plantify/information.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.teal[300],
            body: Center(child: IntroPage())));
  }
}

class IntroPage extends StatefulWidget {
  @override
  MyIntroState createState() => MyIntroState();
}

class MyIntroState extends State {
  bool _loadingInProgress;

  @override
  void initState() {
    _loadingInProgress = true;
    _loadingInProgress = true;
    _loadData();
  }

  Future _loadData() async {
    await new Future.delayed(new Duration(seconds: 2));
    _dataLoaded();
  }

  void _dataLoaded() {
    setState(() {
      _loadingInProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingInProgress) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                image: DecorationImage(
                    image: AssetImage('assets/final_logo.jpg'),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("Plantify",
              style: TextStyle(fontSize: 16.0, color: Colors.white)),
        ],
      ));
    } else {
      return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/plant2.jpg'), fit: BoxFit.fill)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              alignment: FractionalOffset.bottomCenter,
              padding: EdgeInsets.all(70),
              child: FlatButton(
                color: Colors.transparent,
                highlightColor: Colors.teal[100],
                child: Text(' Get Started  ',
                    style: TextStyle(color: Colors.white, fontSize: 25.0)),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
              ),
            ),
          ));
    }
  }
}

class MyImagePicker extends StatefulWidget {
  @override
  MyImagePickerState createState() => MyImagePickerState();
}

class MyImagePickerState extends State {
  File imageURI;
  String result;
  String path;
  int index = -1;
  double per = -1.0;

  Future getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageURI = image;
      path = image.path;
    });
  }

  Future getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageURI = image;
      path = image.path;
    });
  }

  Future classifyImage() async {
    await Tflite.loadModel(
        model: "assets/model.tflite", labels: "assets/labels.txt");
    var output = await Tflite.runModelOnImage(path: path);
    print("OUTPUT:$output");
    setState(() {
      if (output.isEmpty) {
        final snackBar = SnackBar(
          content: Text(
            'Oops!!\n Facing difficulty while detecting\nPlease try focusing on leaf',
            style: TextStyle(color: Colors.teal, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
          behavior: SnackBarBehavior.floating,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      } else {
        index = output[0]['index'];
        per = output[0]['confidence'] * 100;
        per = double.parse((per.toStringAsFixed(2)));
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoCard(index, per, path)),
        );
        print("Output index: ${output[0]['index']}");
      }

      //result = output.toString();
    });
  }

//////////////
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
      imageURI == null
          ? Container(
              height: 480,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/classify.jpg'),
                      fit: BoxFit.fill)),
            )
          : Image.file(imageURI, width: 300, height: 400, fit: BoxFit.cover),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              height: 70,
              width: 110,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: FlatButton(
                onPressed: () => getImageFromCamera(),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.camera_enhance, color: Colors.teal[300]),
                    Text("Camera",
                        style:
                            TextStyle(fontSize: 12.0, color: Colors.grey[600]))
                  ],
                ),
                textColor: Colors.black,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              )),
          Container(
              height: 70,
              width: 100,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: FlatButton(
                onPressed: () => getImageFromGallery(),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.photo_album, color: Colors.teal[300]),
                    Text("Upload",
                        style:
                            TextStyle(fontSize: 12.0, color: Colors.grey[600]))
                  ],
                ),
                textColor: Colors.black,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              )),
        ],
      ),
      Container(
          height: 55,
          width: 200,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: FlatButton(
            onPressed: () {
              final snackBar =
                  SnackBar(content: Text('Select an image for classification'));
              if (path == null) {
                Scaffold.of(context).showSnackBar(snackBar);
              } else {
                classifyImage();
              }
            },
            child: Text('Identify Plant',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            textColor: Colors.black,
            color: Colors.teal[300],
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          )),
      //result == null ? Text('Result') : Text(result)
    ]));
  }
}
