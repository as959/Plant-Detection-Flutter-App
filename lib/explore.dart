import 'dart:ui';
import 'package:Plantify/information.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int i = 0;
  var list = [
    " Abies spectabilis ",
    " Achillea millefolium ",
    " Actinidia chinensis ",
    " Aesculus indica ",
    " Bauhinia variegata ",
    " Berberis aristata ",
    " Bistorta amplexicaulis ",
    " Camellia sinensis ",
    " Cannabis sativa ",
    " Carissa spinarum ",
    " Carya illinoinensis ",
    " Celtis australis ",
    " Chrysopogon zizanioides ",
    " Cinnamomum camphora ",
    " Citrus jambhiri ",
    " Citrus limon ",
    " Cymbopogon citratus ",
    " Dalbergia sissoo ",
    " Dendrocalamus strictus ",
    " Diospyros lotus ",
    " Diplazium esculentum ",
    " Duranta erecta ",
    " Embelia ribes ",
    " Emblica officinalis ",
    " Eucalyptus sp ",
    " Fagopyrum esculentum ",
    " Falconeria insignis ",
    " Ficus benjamina ",
    " Ficus javanica ",
    " Ficus palmata ",
    " Ficus roxburghii ",
    " Fragaria vesca ",
    " Ginkgo biloba ",
    " Gmelina arborea ",
    " Grevillea robusta ",
    " Indigofera sp ",
    " Jasminum nudiflorum ",
    " Juglans regia ",
    " Justicia adhatoda ",
    " Lagerstroemia indica ",
    " Lantana camara ",
    " Litchi chinensis ",
    " Malvaviscus penduliflorus ",
    " Morus nigra ",
    " Murraya koenigii ",
    " Musa  paradisiaca ",
    " Myrica esculenta ",
    " Nerium indicum ",
    " Ocimum kilimandscharicum ",
    " Olea paniculata ",
    " Pinus wallichiana ",
    " Platycladus orientalis ",
    " Poncirus trifolia ",
    " Prinsepia utilis ",
    " Prunus avium ",
    " Prunus domestica ",
    " Prunus sp ",
    " Pteridium aquilinum ",
    " Punica granatum ",
    " Quercus glauca ",
    " Rosa brunonii ",
    " Rosa sp ",
    " Rubus niveus ",
    " Rubus paniculata ",
    " Salix babylonica ",
    " Sapindus mukorossi ",
    " Schefflera actinophylla ",
    " Spiraea ",
    " Syzygium cumini ",
    " Taxodium distichum ",
    " Taxus baccata ",
    " Tecoma stans ",
    " Thymus linearis ",
    " Toona ciliata ",
    " Urtica dioica ",
    " Vitis vinifera ",
    " Withania somnifera ",
    " cedrus deodara ",
  ];
  double _sigmaX = 0.0; // from 0-10
  double _sigmaY = 0.0; // from 0-10
  double _opacity = 0.5;
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          for (var item in list)
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 400,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/plant_imgs_explore/plantify${list.indexOf(item)}.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                Container(
                    height: 60,
                    width: 300,
                    padding: EdgeInsets.all(2.0),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: FlatButton(
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    InfoCard(list.indexOf(item), -1.0, null)),
                          );
                        },
                        child: Text(
                          item,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )))
              ],
            )
        ]);
  }
}
