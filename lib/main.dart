import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SearchBox(),
                      Divider(),
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggestions(),
                      Divider(),
                      TopRated()
                    ],
                  ),
                ),
              ),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Container TopRated() => Container(
        child: Column(
          children: [
            TitleItem("Top Rated", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/post4.jpg", "Boğaziçi Köprüsü",
                      "7 km away from you", "14 ₺"),
                  LocationItem("assets/images/post5.jpg", "Mountain",
                      "15 km away from you", "54 ₺"),
                  LocationItem("assets/images/post2.jpg", "City",
                      "6.7 km away from you", "47 ₺"),
                  LocationItem("assets/images/post1.jpg", "Forest",
                      "4 km away from you", "26 ₺"),
                  LocationItem("assets/images/post5.jpg", "City",
                      "6.7 km away from you", "47 ₺"),
                ],
              ),
            ),
          ],
        ),
      );

  Container Suggestions() => Container(
        child: Column(
          children: [
            TitleItem("Suggestions", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/post5.jpg", "Boğaziçi Köprüsü",
                      "7 km away from you", "14 ₺"),
                  LocationItem("assets/images/post1.jpg", "Mountain",
                      "15 km away from you", "54 ₺"),
                  LocationItem("assets/images/post4.jpg", "City",
                      "6.7 km away from you", "47 ₺"),
                  LocationItem("assets/images/post1.jpg", "Forest",
                      "4 km away from you", "26 ₺"),
                  LocationItem("assets/images/post4.jpg", "City",
                      "6.7 km away from you", "47 ₺"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/post1.jpg", "Boğaziçi Köprüsü",
                      "7 km away from you", "14 ₺"),
                  LocationItem("assets/images/post2.jpg", "Mountain",
                      "15 km away from you", "54 ₺"),
                  LocationItem("assets/images/post5.jpg", "Forest",
                      "4 km away from you", "26 ₺"),
                  LocationItem("assets/images/post4.jpg", "City",
                      "6.7 km away from you", "47 ₺"),
                  LocationItem("assets/images/post5.jpg", "Forest",
                      "4 km away from you", "26 ₺"),
                  LocationItem("assets/images/post4.jpg", "City",
                      "6.7 km away from you", "47 ₺"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget LocationItem(
          String photo, String title, String description, String price) =>
      Container(
        padding: EdgeInsets.all(8),
        width: 165,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(15, 170, 170, 170)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: NetworkImage(
                  photo,
                ),
                width: 150,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 8,
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 125, 87),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    price,
                    style: TextStyle(
                        fontSize: 10,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget TopLocations() => Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleItem("Top Locations", "View All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("assets/images/avatar1.png", "Lilly Y."),
                StoryItem("assets/images/avatar2.png", "Sam I."),
                StoryItem("assets/images/avatar3.png", "Yasmine T."),
                StoryItem("assets/images/avatar4.jpg", "Stefan M."),
                StoryItem("assets/images/avatar1.png", "Lilly Y."),
                StoryItem("assets/images/avatar2.png", "Sam I."),
                StoryItem("assets/images/avatar3.png", "Yasmine T."),
                StoryItem("assets/images/avatar4.jpg", "Stefan M."),
                StoryItem("assets/images/avatar2.png", "Sam I."),
                StoryItem("assets/images/avatar3.png", "Yasmine T."),
                StoryItem("assets/images/avatar4.jpg", "Stefan M."),
                StoryItem("assets/images/avatar1.png", "Lilly Y."),
                StoryItem("assets/images/avatar2.png", "Sam I."),
                StoryItem("assets/images/avatar3.png", "Yasmine T."),
                StoryItem("assets/images/avatar4.jpg", "Stefan M."),
                StoryItem("assets/images/avatar1.png", "Lilly Y."),
                StoryItem("assets/images/avatar2.png", "Sam I."),
                StoryItem("assets/images/avatar3.png", "Yasmine T."),
                StoryItem("assets/images/avatar4.jpg", "Stefan M."),
                StoryItem("assets/images/avatar2.png", "Sam I."),
                StoryItem("assets/images/avatar3.png", "Yasmine T."),
                StoryItem("assets/images/avatar4.jpg", "Stefan M."),
              ],
            ),
          ),
        ],
      ));

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(109, 193, 191, 191)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                Text(
                  "Caferağa, Kadikoy",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 22,
              color: Color.fromARGB(255, 236, 125, 87),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 241, 156, 101),
                    Color.fromARGB(255, 233, 92, 70),
                  ],
                ),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: NetworkImage(photo),
                radius: 32,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153), fontSize: 10),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                TextStyle(color: Color.fromARGB(255, 56, 56, 56), fontSize: 16),
          ),
          Text(
            link,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget Header() => Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Beyzanur",
                style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153), fontSize: 15),
              ),
              Text(
                "Explore Istanbul City",
                style: TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56), fontSize: 17),
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.sunny,
                  size: 20,
                  color: Color.fromARGB(255, 236, 125, 87),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.notifications,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ));

  Widget BottomMenu() => Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 235, 233, 233), width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighlightedItem("Book", Icons.maps_ugc),
            BottomMenuItem("Chat", Icons.forum, false),
            BottomMenuItem("Profile", Icons.person, false),
          ],
        ),
      );

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromARGB(255, 174, 174, 174);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }

  Widget HighlightedItem(String title, IconData icon) {
    var renk = Color.fromARGB(255, 236, 125, 87);

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 30,
            color: renk,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }
}
