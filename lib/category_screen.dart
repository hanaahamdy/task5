import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'models/component/component.dart';
import 'models/listview_model.dart';
import 'models/settins.dart';

class CategoryScreen extends StatelessWidget {
  var appbar = AppBar(
    title: Text(translator.translate("appTitle")),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ))
    ],
  );
  List<GroceriesModel> groceries = [
    GroceriesModel(image: "images/bob.png", name: "Bob Marley"),
    GroceriesModel(image: "images/cheese1.webp", name: "2Go supermarket"),
    GroceriesModel(image: "images/cheeseone.jpg", name: "wust el bald"),
  ];

  List<GroceriesModel> dessert = [
    GroceriesModel(image: "images/dunets.jpg", name: "Dunets"),
    GroceriesModel(image: "images/cake.jpg", name: "cake"),
    GroceriesModel(image: "images/ice.jpg", name: "Nola")
  ];
  List<GroceriesModel> differentCatogery = [
    GroceriesModel(image: "images/piza.jpg", name: "Pizza hut"),
    GroceriesModel(image: "images/ear.jpg", name: "Apple id"),
    GroceriesModel(image: "images/books.jpg", name: "Dar el Qamar")
  ];
  List<ListTitleModel> listTitle = [
    ListTitleModel(icon: Icons.home, title: "home"),
    ListTitleModel(icon: Icons.reorder, title: "your orders"),
    ListTitleModel(icon: Icons.local_offer, title: "offers"),
    ListTitleModel(icon: Icons.notifications, title: "Notification"),
    ListTitleModel(icon: Icons.table_rows_sharp, title: "Talabat Pay"),
    ListTitleModel(icon: Icons.help, title: "Get help"),
    ListTitleModel(icon: Icons.info_outline_rounded, title: "about"),
  ];

  Widget ListItem(ListTitleModel model) {
    return ListTile(leading: Icon(model.icon), title: Text('${model.title}'));
  }

  @override
  Widget build(BuildContext context) {
    var bodyHeight =
        MediaQuery.of(context).size.height - appbar.preferredSize.height;
    var bodyWidth =
        MediaQuery.of(context).size.width - appbar.preferredSize.width;
    var textFont = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: appbar,
      drawer: Drawer(
          child: Material(
              child: ListView(
        children: [
          ListTile(
            subtitle: Row(
              children: [Icon(Icons.image), Text("Egypt")],
            ),
            title: Text(
              "Hanaa Hamdy",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(
              child: Text("H"),
              backgroundColor: Colors.brown,
            ),
            trailing: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
            ),
          ),
          Container(
            height: bodyHeight * .6,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListItem(listTitle[index]),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(child: Divider());
                },
                itemCount: listTitle.length),
          ),
        ],
      ))),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Would you like to order,hanaa",
                style: TextStyle(
                    fontSize: textFont * 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: bodyHeight * .06,
              ),
              Container(
                height: bodyHeight * .26,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image(
                              image: AssetImage(
                                "images/food.webp",
                              ),
                              height: bodyHeight * .4,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "food",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image(
                              image: AssetImage(
                                "images/groceris.webp",
                              ),
                              height: bodyHeight * .4,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "food",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * .05),
              Text(
                "Groceries and more",
                style: TextStyle(
                    fontSize: textFont * 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: bodyHeight * .03),
              Container(
                  height: bodyHeight * .5,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) =>
                        listBuilder(groceries[index], bodyHeight),
                    itemCount: groceries.length,
                  )),
              //buildListViewItem(bodyHeight, groceries),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "All day deserts",
                      style: TextStyle(
                          fontSize: textFont * 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                  height: bodyHeight * .5,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) =>
                        listBuilder(dessert[index], bodyHeight),
                    itemCount: groceries.length,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Free delivery",
                      style: TextStyle(
                          fontSize: textFont * 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                  height: bodyHeight * .5,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) =>
                        listBuilder(differentCatogery[index], bodyHeight),
                    itemCount: groceries.length,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Nearest to you",
                      style: TextStyle(
                          fontSize: textFont * 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: bodyHeight * .5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                          image: AssetImage(
                            "images/burger.jpg",
                          ),
                          height: bodyHeight * .3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Doner konner",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: textFont * 18),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Image(
                          image: AssetImage(
                            "images/motor.jpg",
                          ),
                          height: 30,
                          width: 50,
                        ),
                        Text(
                          "within 50 minutes",
                        )
                      ],
                    ),
                    Text("Grocery"),
                    Row(
                      children: [
                        Image(
                          image: AssetImage(
                            "images/smile.jpg",
                          ),
                          height: 50,
                          width: 25,
                        ),
                        Text(
                          "very good",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("delivery:free",
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Newly joined",
                      style: TextStyle(
                          fontSize: textFont * 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              Container(
                  height: bodyHeight * .5,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) =>
                        listBuilder(differentCatogery[index], bodyHeight),
                    itemCount: groceries.length,
                  )),
              Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: bodyHeight * .08,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("view all restaurant")))
            ],
          ),
        ),
      ),
    );
  }
}

