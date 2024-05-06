import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'user.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<User> users;
  int index = 0;

  @override
  void initState() {
    super.initState();
    users = getUser();
  }

  static List<User> getUser() {
    const data = [
      {
        "username": "Ragavan",
        "text": "What Happened?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Mathew",
        "text": "Is everything goes well?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "David",
        "text": "Hey there...!",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "John",
        "text": "shall we go?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Fernandes",
        "text": "Call me now!",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Arthur",
        "text": "I have a request",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Lucy",
        "text": "What Happened?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Linda",
        "text": "Is everything goes well?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Hokins",
        "text": "What Happened?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Peter",
        "text": "Hey shall we meet?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Ron",
        "text": "task is assigned to you",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Willson",
        "text": "What about the project?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Herman",
        "text": "Tell me the progess",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Jonathan",
        "text": "is the plan goes well?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
    ];
    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      ChatsTab(users: users),
      UpdatesTab(),
      CommunitiesTab(),
      CallsTab(),
    ];

    final floatingActions = [
      FloatingActionButton(
        onPressed: () {},
        child: Icon(MdiIcons.messagePlus),
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      FloatingActionButton(
        onPressed: () {},
        child: Icon(MdiIcons.camera),
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      null, //no FAB for communities tab
      FloatingActionButton(
        onPressed: () {},
        child: Icon(MdiIcons.phonePlus),
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
    ];

    final appBarTitles = [
      'Whatsapp',
      'Updates',
      'Communities',
      'Calls',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[index], style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_rounded),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      body: tabs[index],
      floatingActionButton: floatingActions[index],
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 2, 2, 2).withOpacity(.90),
        unselectedItemColor: Color.fromARGB(196, 95, 93, 93),
        items: [
          const BottomNavigationBarItem(
            label: 'Chats',
            icon: Icon(MdiIcons.messageText),
          ),
          const BottomNavigationBarItem(
            label: 'Upadates',
            icon: Icon(MdiIcons.update),
          ),
          const BottomNavigationBarItem(
            label: 'Communities',
            icon: Icon(MdiIcons.accountGroupOutline),
          ),
          const BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(MdiIcons.phoneOutline),
          ),
        ],
        onTap: (current_index) {
          setState(() {
            index = current_index;
          });
        },
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  final List<User> users;
  const ChatsTab({Key? key, required this.users}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return SingleChildScrollView(
          child: TextButton(
            onPressed: () {
              print("clicked");
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(user.urlAvatar),
              ),
              title: Text(user.username),
              subtitle: Text(user.text),
              trailing: Column(children: [
                Text(
                  "01:20 pm",
                  style: TextStyle(fontSize: 12, color: Color(0xFF0FCE5E)),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xFF0FCE5E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}

class UpdatesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Transform.scale(
              scale: 0.75,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.edit),
                backgroundColor: Color.fromARGB(255, 245, 244, 244),
                foregroundColor: const Color.fromARGB(255, 50, 50, 50),
              ),
            ),
            SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera),
              backgroundColor: Colors.teal,
            ),
          ],
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "   Status",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/person.jpg"),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              "    Recent Updates",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/person.jpg"),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                "Herman",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "12:00 pm",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/person.jpg"),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                "Lucy",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "02:30 am",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "    Viewed updates",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: Colors.grey,
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/person.jpg"),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                "Willson",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Yesterday",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "   Channels",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.add,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text("     Stay updated on topics that matter to you.",
                style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/wa.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/wa.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/wa.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/wa.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/wa.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class CommunitiesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: const Color.fromARGB(255, 214, 214, 214)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.accountGroup),
                color: Colors.white,
              ),
            ),
            title: Text('New community'),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Color.fromARGB(255, 212, 212, 212).withOpacity(.40),
            thickness: 10,
            height: 10,
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: const Color.fromARGB(255, 214, 214, 214)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.accountGroup),
                color: Colors.white,
              ),
            ),
            title: Text('KSRCT IT 2024 BATCH'),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 148, 238, 151)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.bullhorn),
                color: Color.fromARGB(255, 9, 46, 11),
              ),
            ),
            title: Text('Announcements'),
            subtitle: Text('professor: Join the meeting...!'),
            trailing: Text('29/04/2014'),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 214, 214, 214)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.accountMultiple),
                color: Colors.white,
              ),
            ),
            title: Text('IT - B sec'),
            subtitle: Text('kennedy sir : Submit the records'),
            trailing: Text('29/04/2014'),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.greaterThan),
                color: const Color.fromARGB(255, 214, 214, 214),
              ),
            ),
            title: Text('View all'),
          ),
          Divider(
            color: Color.fromARGB(255, 212, 212, 212).withOpacity(.40),
            thickness: 10,
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Ink(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.teal),
            child: IconButton(
              onPressed: () {},
              icon: Icon(MdiIcons.link),
              color: Colors.white,
            ),
          ),
          title: Text('Create call link'),
          subtitle: Text('Share a link for your WhatsApp call'),
        ),
        Text('    Recent'),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/person.jpg"),
          ),
          title: Text('Fernandes(2)'),
          subtitle: RichText(
              text: TextSpan(children: [
            WidgetSpan(
                child: Icon(
              MdiIcons.arrowTopRight,
              color: Colors.green,
              size: 15,
            )),
            TextSpan(
                text: "  May 2, 10:28 PM",
                style: TextStyle(color: Colors.black))
          ])),
          trailing: Icon(
            MdiIcons.phone,
            color: Colors.green,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/person.jpg"),
          ),
          title: Text('Jonathan(1)'),
          subtitle: RichText(
              text: TextSpan(children: [
            WidgetSpan(
                child: Icon(
              MdiIcons.arrowBottomLeft,
              color: Colors.red,
              size: 15,
            )),
            TextSpan(
                text: "  May 1, 02:50 PM",
                style: TextStyle(color: Colors.black))
          ])),
          trailing: Icon(
            MdiIcons.phone,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
