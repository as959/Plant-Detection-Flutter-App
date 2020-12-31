import 'package:flutter/material.dart';
import 'package:Plantify/ListExplore.dart';
import 'package:Plantify/nav_bar.dart';

class InfoCard extends StatefulWidget {
  int index;
  double percent;
  String uri_img;
  @override
  InfoCard(int ind, double per, String uri) {
    index = ind;
    percent = per;
    uri_img = uri;
  }
  @override
  _InfoCardState createState() => _InfoCardState(index, percent, uri_img);
}

class _InfoCardState extends State<InfoCard> {
  GetExplore ldata = GetExplore();
  int _index;
  double _percentage;
  String _uriImage;
  _InfoCardState(int ind, double percent, String uri_img) {
    _index = ind;
    _percentage = percent;
    _uriImage = uri_img;
    print("image path: $_uriImage");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
            height: 330,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: _uriImage == null
                    ? AssetImage(
                        'assets/plant_imgs_explore/plantify$_index.jpg')
                    : AssetImage('assets/result_teal.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: FlatButton(
              child: Icon(
                Icons.arrow_back,
                color: Colors.teal[300],
                size: 40,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBar()),
                );
              },
            )),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                ldata.Explore_List(_index, 0),
                style: TextStyle(fontSize: 20.0),
              ),
              _percentage >= 0.0
                  ? Container(
                      height: 100,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(17.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.assessment,
                                color: Colors.teal[200],
                                size: 38,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Confidence',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey[600])),
                            ],
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text('$_percentage %',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ))
                  : SizedBox(),
              Container(
                  height: 100,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(17.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        child: Text(ldata.Explore_List(_index, 1),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.collections_bookmark,
                            color: Colors.teal[200],
                            size: 38,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Local Name',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey[600])),
                        ],
                      ),
                    ],
                  )),
              Container(
                  height: 100,
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/watercan.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Care",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey[600])),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Text(ldata.Explore_List(_index, 3),
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black))),
                    ],
                  )),
              Container(
                  height: 100,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(ldata.Explore_List(_index, 2),
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black))),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.collections_bookmark,
                            color: Colors.teal[200],
                            size: 38,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Description",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey[600])),
                        ],
                      ),
                    ],
                  )),
            ],
          )),
        ))
      ],
    ));
  }
}
