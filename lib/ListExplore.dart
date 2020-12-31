class GetExplore {
  String Explore_List(int a, int b) {
    int row = 78;
    int col = 4;

    var twoDList = List.generate(row, (i) => List(col), growable: false);
    twoDList = [
      [
        'Abies spectabilis (D.Don.)Spach',
        'Silver fir',
        'It is a lofty green conifer tree. It grows in temperate regions.',
        'Need low temperature to grow'
      ],
      [
        'Achillea millefolium L.',
        'Losar',
        'It is a flowering plant. Traditionally it is used to cure toothaches by the locals.',
        'Grows well in temperate region above 1800m'
      ],
      [
        'Actinidia chinensisÂ\xa0Planch.',
        'Kiwifruit',
        'It is a fruiting vine. Fruits are eaten fresh and are very refreshing.',
        'Need full or partial sun and rich humus soil to grow well'
      ],
      [
        'Aesculus indica (Wall.ex Cambess.) Hook.',
        'Â\xa0Indian horse-chestnut',
        'It is an attractive tree grows in temperate regions. Dried seeds are ground to make flour and use to make chpatis.',
        'Grows wildly in the temperate regions'
      ],
      [
        'Bauhinia variegata(L.) Benth.',
        'Orchid tree, Kariyale',
        'It is a large flowering plant. Leaves are used as fodder. Flower buds are used as a vegetable by the local people.',
        'Need moist soil or semi shade area to grow well'
      ],
      [
        'Berberis aristata DC.',
        'Indian barberry',
        'It is an erect shrub having spines. It is used traditionally in herbal medicine.',
        'Grows well in temperate regions'
      ],
      [
        'Bistorta amplexicaulis(D.Don) Greene',
        'Red bistort',
        'It is a flowering herbaceous perennial plant. ',
        'Grows well in damp soil'
      ],
      [
        'Camellia sinensis (L.)Kuntze',
        'Tea',
        'It is an evergreen tree or shrub. It is widely consumed beverage. ',
        'Need partial shade and free draining soil'
      ],
      [
        'Cannabis sativa L.',
        'Bhang',
        'It is an annual herbaceous flowering plant. The fiber of the plant refined as hemp has numerous textile uses. ',
        'Need full sun to grow well'
      ],
      [
        'Carissa spinarum L.',
        'Conker berry, Garnoo',
        'It is an erect thorny shrub. Fruits are commonly eaten by the people. The bushes are very effective as a fence and are mainly used in the villages for this purpose. ',
        'Plant is very hard and drought-resistant and can grow even on very poor and rocky soils. '
      ],
      [
        'Carya illinoinensis (Wangenh.)K.Koch',
        'Pecan nut',
        'It is a large deciduous tree. Seeds are edible. Wood is used to make furniture.',
        'Grows well in full sun and partial shade locations'
      ],
      [
        'Celtis australis L.',
        'Khidak',
        'It is a medium to a large-sized deciduous tree. The wood is heavy, elastic and water-resistant.',
        'Need well drained and fertile soil to grow'
      ],
      [
        'Chrysopogon zizanioides(L.) Roberty',
        'Vetiver',
        'It is a perennial grass. The root system of vetiver is very strong and is help in slope stabilization.',
        'Need moist fields to grow well'
      ],
      [
        'Chrysopogon zizanioides(L.) J. Presl.',
        'Camphor tree',
        'It is an evergreen tree. It is mainly cultivated for camphor or timber.',
        'Need water regularly when planted , once established it is drought tolerant.'
      ],
      [
        'Citrus jambhiri Lush',
        'Rough lemon',
        'It is a medium to large sized tree. Fruit juice is very acidic. Rough lemon is used as rootstock for citrus fruits. ',
        'Need well drained soil to grow'
      ],
      [
        'Citrus limon (L.) Osbeck.',
        'Lemon',
        'It is a small evergreen tree. Lemon is used worldwide.',
        'Need water regularly '
      ],
      [
        'Cymbopogon citratu (DC.) Stapf',
        'Lemon grass',
        'Lemon grass is grown in tropical or sub-tropical regions. Dried leaves can be brewed in to a tea.',
        'Need full sun and well drained soil to grow'
      ],
      [
        'Dalbergia sissoo Roxb.',
        'Sheesham',
        'It is a medium to the large deciduous tree. Wood is known to be superior furniture and is appreciated as general utility timber.',
        'Need full sun or partial shade'
      ],
      [
        'Dendrocalamus strictus (Roxb.)Nees',
        'Bans, Male bamboo',
        'It is found in deciduous forests in dry or moderately dry region. It is extensively in use as a raw material for paper manufacture in India. ',
        'Prefers low relative humidity to grow'
      ],
      [
        'Diospyros lotus L.',
        'Amlok, Date plum',
        'It isÂ\xa0a deciduous tree. Date plums are edible and contain lots of sugars, and vitamins. ',
        'Need moist and well drained soil to grow'
      ],
      [
        'Diplazium esculentum ( Retz.)Sw',
        'Lingadu',
        'It is the most commonly used fern as a house plant.  The young fronds are used as a "vegetableâ€™â€™ or as salad.',
        'It is a naturalised species and grow well in moist soil'
      ],
      [
        'Duranta erecta L.',
        'Golden dew drop, Duranta',
        'It is a small shrub or tree mostly grown as an ornamental plant. It is commonly grown as a hedge plant.',
        'Need moist and well drained soil to grow'
      ],
      [
        'Embelia ribesBurm.f.',
        'vai vidang',
        'It is a shrubby plant. It has various medicinal properties.',
        'Need moist soil to grow well'
      ],
      [
        'Emblica officinalis Gaertn.',
        'Indian Gooseberry, Amla',
        'It is a small to medium sized deciduous tree. Amla is one of the three ingredients of the famous Ayurvedic preparation, Triphala, which is used to treat various disorders.',
        'Need weel drained soil and regular watering'
      ],
      [
        'Eucalyptus sp.',
        'Blue gum, Spheda',
        'It is a very tall tree. It is one of the most extensively planted trees. Its timber is fairly heavy and can be used in construction..',
        'Need well drained soil to grow'
      ],
      [
        'Fagopyrum esculentum Moench',
        'Buckwheat, Fafda',
        'It is a hairy annual plant. Leaves are consumed as vegetable.',
        'Need moist soil and full sun to grow well'
      ],
      [
        'Falconeria insignisRoyal',
        "Tiger's Milk Spruce",
        'It is a small tree. Its sap is considered to be poisonous .',
        'Need full sun to grow well'
      ],
      [
        'Ficus benjamina L.',
        'Weeping fig',
        'It is an evergreen tree. It can be grown as a hedge for landscaping. Tree is appropriate for bonsai.',
        'Need partial sun to grow'
      ],
      [
        'Ficus javanicaHort.Berol. ex Miq.',
        'Fig',
        'It is an evergreen tree. It can be grown as a hedge for landscaping. Tree is appropriate for bonsai.',
        'Need partial sun to grow'
      ],
      [
        'Ficus palmata Forssk.',
        'Fig',
        'It is a deciduous, moderate-sized tree. The young developing fruits are consumed as a vegetable. Ripen fruits are fondly eaten by all. ',
        'Need humid and moist environment'
      ],
      [
        'Ficus roxburghii Wall.',
        'Tremal',
        'It is one of the most abundant fruit growing wild in the hills. The fruits are very good for eating and the jelly-like substance enclosed in them makes them very tasty.  ',
        'Need moderate soil to grow'
      ],
      [
        'Fragaria vesca L.',
        'Wild strawberry',
        'It is a perennial herb, having prostrate stems. Fruits are not very sweet but can be eaten.',
        'Mostly grows wild in temperate regions'
      ],
      [
        'Ginkgo biloba',
        'Ginkgo ',
        'It is the only living species in the division Ginkgophyta. It is used as a herbal medicine to treat various ailments.',
        'Need well drained soil and full or partial sun to grow well'
      ],
      [
        'Gmelina arborea Roxb.',
        'Ghambhari',
        'It is a fast growing deciduous tree. Wood is used as fuel and leaves are used as fodder.',
        'Grows well in humid climate'
      ],
      [
        'Grevillea robusta A. Cunn.',
        'Silver oak',
        'It is an fast growing evergreen tree. It is generally grown as a showy tree because of its fern-like foliage.',
        'It is a hardy tree and do not need much care'
      ],
      [
        'Indigofera sp.',
        'Kathi',
        'It is a flowering shrub. Flowers are used as a vegetable by the local people.',
        'It grows wildly in sub -tropic regions.'
      ],
      [
        'Jasminum nudiflorumLindl.',
        'Winter jasmine',
        'It is a slender deciduous shrub. It is widely cultivated as an ornamental plant.',
        'Need full sun and well drained soil to grow'
      ],
      [
        'Juglans regia L.',
        'Walnut',
        'It is a large deciduous tree. Leaves are used as tooth brush by the local people. Walnuts are liked by all and are very nutritious',
        'Need full sun and well drained soil to grow'
      ],
      [
        'Justicia adhatoda L.',
        'Vasaka',
        'It is a shrubby plant. Traditionally flowers are used to cure cough. ',
        'Grows wildly in sub-tropic regions'
      ],
      [
        'Lagerstroemia indica (L.) pers',
        'Crape myrtle',
        'It is aÂ\xa0deciduous shrub. It is grown as an ornamental plant because of its beautiful coloured flowers. ',
        'Need full sun and well drained soil to grow'
      ],
      [
        ' Lantana camara L. ',
        'Wild sage',
        'It is a small perennial shrub. ',
        'Need full sun and moisture to grow well'
      ],
      [
        'Litchi chinensis Sonn.',
        'Lychee',
        'It is an evergreen tree. Lychees are edible and are liked by all.',
        'Grows well in sub-tropical and well drained soil'
      ],
      [
        'Malvaviscus penduliflorus',
        'Sleeping hibiscus',
        'It is a flowering shrub. It is grown as an ornamental plant.',
        'Need well drained soil to grow'
      ],
      [
        'Morus nigra L.',
        'Black mulberry, Sehtoot',
        'It is a deciduous tree. Fruits can be eaten fresh.',
        'Need porous or well drained soil to grow well'
      ],
      [
        'Murraya koenigiiÂ\xa0(L.) Sprengel.',
        'Curry tree',
        'It is a small tree found in tropic or sub-tropic regions. Leaves are used oftenly in curries.',
        'Need plenty of light '
      ],
      [
        'Musa paradisiaca L.',
        'Banana, kela',
        'It is an herbaceous palnt. The ripen fruits are liked by all. ',
        'Need moist and well drained soil to grow'
      ],
      [
        'Myrica esculenta Buch.-Ham. ex D.Don',
        'Kaphal, Bayberry',
        'It is an evergreen, medium sized tree. Fruits are edible and sour-sweet in taste. ',
        'Naturalized species found in mixed forests.'
      ],
      [
        'Nerium indicum L.',
        'Indian oleander',
        'It is an evergreen shrub cultivated mostly as an ornamental plant.',
        'Need full sun to bloom and drought tolerant'
      ],
      [
        'Ocimum kilimandscharicumGurke',
        'Camphor basil',
        'It is an evergreen herb or shrub. Leaves are highly aromatic.',
        'Regular watering'
      ],
      [
        'Olea paniculata R.Br.',
        'Theera',
        'It is a bushy tree. Wood can be used for making small tools.',
        'Need well drained soil to grow'
      ],
      [
        'Pinus wallichiana A. B. Jacks. ',
        'Blue pine, Himalayan pine',
        'It is an evergreen coniferous tree. The wood is quite hard, durable and contains resin. ',
        'Grows well in temperate regions. '
      ],
      [
        'Thuja sp.',
        'Morpankhi',
        'It is an evergreen coniferous. It is widely used as an ornamental tree.',
        'Need moist, well drained soil and full sun.'
      ],
      [
        'Poncirus trifolia L.',
        'Trifoliate orange',
        'It is a densely branched tree with stiff thorns. Plant can be used as a hedge and is impenetrable due to its thorns.',
        'Need well drained soil to grow well'
      ],
      [
        'Prinsepia utilis Royle',
        'Bhikal',
        'It is a shrubby plant. Seed cake is used to treat skin diseases.',
        'Need well drained soil to grow well'
      ],
      [
        'Prunus avium L.',
        'Wild cherry',
        'It is a deciduous tree. Fruits can be eaten fresh.',
        'Need full sun and fertile soil to grow well'
      ],
      [
        'Prunus domestica L.',
        'Plum',
        'It is a deciduous small tree. Fruits can be eaten but sour in taste. ',
        'Need well drained soil and full sun'
      ],
      [
        'Prunus sp. ',
        'Chulli kullu',
        'It is a deciduous shrub or small tree. ',
        'Need well drained soil and full sun'
      ],
      [
        'Pteridium aquilinum (L.) Kuhn',
        'Lingad',
        'It is an ornamental fern. Tender fronds are used as vegetable. ',
        'It is a naturalised species and grow well in moist soil'
      ],
      [
        'Punica granatum L.',
        'Gandhari anar',
        'It is a small deciduous shrub or small tree. Fruits are edible.',
        'Need well drained soil and full sun'
      ],
      [
        'Quercus glauca Thunb.',
        'Banni, Blue Japanese oak',
        'It is an evergreen, tall tree. \nWood is mainly used as fuel. The leaves are used as cattle fodder ',
        'Need well drained soil and full sun'
      ],
      [
        'Rosa brunonii Lindl.',
        'Himalayan musk rose',
        'It is a large climbing shrub. It is the most characteristic rose of the Himalayas due to its fragrant flowers.',
        'It is a naturalised species grows well in full sun'
      ],
      [
        'Rosa sp.',
        'Rose',
        'It is a woody perennial mostly cultivated as an ornamental plant.',
        'Need well drained soil with moisture retention capacity'
      ],
      [
        'Rubus niveus Thunb.',
        'Aakhe',
        'It is a climbing shrub. Fruits are edible and are very refreshing.',
        'Need full sun and well drained soil to grow'
      ],
      [
        'Rubus paniculata',
        'Purple Aakhe',
        'It is a climbing shrub. Fruits are edible and are very refreshing.',
        'Need full sun and well drained soil to grow'
      ],
      [
        'Salix babylonica L.',
        'Weeping willow',
        'It is a moderate-sized, short-lived ornamental tree. The extensive root system helps in binding soil.',
        'Need full sun '
      ],
      [
        'Sapindus mukorossi Gaertn.',
        'Reetha, Soap nut',
        'It is a large, deciduous tree. The soap nut has natural cleansing properties.',
        'Need direct sun light'
      ],
      [
        'Schefflera actinophylla(Endl.) Harms',
        'Umbrella tree',
        'It is an evergreen tree. It is mostly grown as an ornamental plant.',
        'Grow well in bright, indirect light'
      ],
      [
        'Spirea sp. ',
        'Spirea',
        'It is a deciduous shrubby plant. It is very attravctive shrub due to its beautiful white flowers.',
        'Need full sun'
      ],
      [
        'Syzygium cumini ( L.) Skeels',
        'Jamun',
        'It is an evergreen tree. Fruits are edible. Fruits and seeds are good for diabetic persons.',
        'Need dry weather at the time of flowering'
      ],
      [
        'Taxodium distichum (L.) Rich',
        'Bald cypress',
        'It is a deciduous tree.  Plant is mostly cultivated as an ornamental tree. Wood is suitable for construction.',
        'Need full sun'
      ],
      [
        'Taxus baccata L.',
        'Common yew',
        'It is a small to medium sized evergreen tree. This plant  has medicinal value.',
        'Regular watering'
      ],
      [
        'Tecoma stans (L.) Juss. Ex Kunth ',
        'Yellow trumpet bush',
        'It is a shrub or a small tree. Wood is used in the construction of buildings. ',
        'Regular watering and well drained soil'
      ],
      [
        'Thymus linearis Benth.',
        'Jungli ajwain',
        'It is a strongly scented creeping herb. It is helpful in treating the headache and toothache. ',
        'Grows well in temperate regions'
      ],
      [
        'Toona ciliata M. Roem.',
        'Red cedar',
        'It is a tall deciduous tree. It is widely planted as a shade tree for its fast-growing aspect. Wood is very hard.',
        'Grows in tropical and sub tropical regions'
      ],
      [
        'Urtica dioica L.',
        'Common nettle, stinging nettle',
        'It is a herbaceous perennial plant. Tender leaves are used as vegetable.',
        'Need moist soil to grow well'
      ],
      [
        'Vitis Vinifera',
        'Wine grape',
        "It is a woody, deciduous vine that climbs by branched tendrils to 40-60' long over time if left unpruned.",
        'Needs a sunny spot to grow and tolerate most soils but are particularly suited to those with a high pH'
      ],
      [
        'Withania somnifera (L.) Dunal',
        'Ashwagandha',
        'It is a perennial shrub. It is used in traditional Indian medicine.',
        'Grows well in good drainage soil'
      ],
      [
        'Cedrus deodara (Roxb.)G.Don',
        'Cedar, Devdar',
        'It is large evergreen coniferous tree. Deodar wood is in huge demand as building material because of its toughness and rot-resistant properties. ',
        'It grows in temperate regions. It needs good space and sunny area to grow well.'
      ]
    ];

//For fill;

    return twoDList[a][b];
  }
}
