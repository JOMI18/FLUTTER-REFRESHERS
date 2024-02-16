import 'package:flutter/material.dart';

class DuolingoProfile extends StatelessWidget {
  const DuolingoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xC51B222C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileImage(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                children: [
                  const Profile(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Statistics(),
                  const SizedBox(
                    height: 30,
                  ),
                  Friends(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Achievements()
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
                    width: 1, color: Color.fromARGB(124, 255, 255, 255)))),
        child: const BottomAppBar(
          elevation: 3,
          height: 70,
          color: Color.fromARGB(255, 31, 31, 31),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_filled,
                size: 35,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.museum_outlined,
                size: 35,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.workspace_premium_outlined,
                size: 35,
                color: Color.fromARGB(255, 72, 193, 249),
              ),
              Icon(
                Icons.shield,
                size: 35,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.person,
                size: 35,
                color: Color.fromARGB(255, 225, 73, 252),
              ),
              Icon(
                Icons.notification_add_rounded,
                size: 35,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 440,
      color: const Color(0xD2FFC3D7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.settings,
                color: Color(0xFF505050),
                size: 30,
              ),
            ],
          ),
          CircleAvatar(
            // foregroundImage: NetworkImage(
            //     "https://avatars.githubusercontent.com/u/108834147?v=4"),
            radius: 80,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/108834147?v=4"),
          )
          // Container(
          //   height: 165,
          //   width: 300,
          //   decoration: BoxDecoration(
          //       image: const DecorationImage(
          //         image: NetworkImage(
          //             "https://avatars.githubusercontent.com/u/108834147?v=4"),
          //         fit: BoxFit.cover,
          //       ),
          //       borderRadius: BorderRadius.circular(20),
          //       border: Border.all(width: 3, color: const Color(0xFF3A3A3A))),
          // )
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Color.fromARGB(255, 82, 82, 82), // Border color
          width: 1.0,
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Jomiii",
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(20), // Top left corner
                        //   bottomRight:
                        //       Radius.circular(20), // Bottom right corner
                        // ),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_the_First_Spanish_Republic.svg/1280px-Flag_of_the_First_Spanish_Republic.svg.png"),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(20), // Top left corner
                        //   bottomRight:
                        //       Radius.circular(20), // Bottom right corner
                        // ),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/220px-Flag_of_Italy.svg.png"),
                        )),
                  )
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "Jomiii1",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "Joined May 2020",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Text(
                "178 Following",
                style: TextStyle(color: Color(0xFF7BD5FF), fontSize: 16),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "126 Followers",
                style: TextStyle(color: Color(0xFF7BD5FF), fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color.fromRGBO(10, 12, 16, 0.773),
                    foregroundColor: const Color(0xFF7BD5FF),
                    fixedSize: const Size(300, 50),
                    side: const BorderSide(
                        width: 3, color: Color.fromARGB(155, 81, 80, 80)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add_alt_1),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "ADD FRIENDS",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 17),
                      )
                    ]),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color(0xC50A0C10),
                    foregroundColor: const Color(0xFF7BD5FF),
                    fixedSize: const Size(70, 50),
                    side: const BorderSide(
                        width: 3, color: Color.fromARGB(155, 81, 80, 80)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: const Icon(
                  Icons.ios_share_outlined,
                  size: 27,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Row(
          children: [
            Text(
              "Statistics",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(185, 60),
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 204, 0)),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.stream,
                              size: 25,
                              color: Color(0xFFFF4C1B),
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "620",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "Day streak",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )
                          ],
                        )
                      ],
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(185, 60),
                        elevation: 6,
                        side: const BorderSide(
                            width: 3, color: Color.fromARGB(155, 81, 80, 80)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: const Color.fromARGB(197, 4, 6, 6)),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.energy_savings_leaf,
                              size: 25,
                              color: Color(0xFFFFCC00),
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "107646",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "Total XP",
                              style: TextStyle(
                                  color: Color.fromARGB(103, 255, 255, 255),
                                  fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  Positioned(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(185, 60),
                            elevation: 6,
                            side: const BorderSide(
                                width: 3,
                                color: Color.fromARGB(155, 81, 80, 80)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor:
                                const Color.fromARGB(197, 4, 6, 6)),
                        child: const Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shield,
                                  size: 25,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Emerald",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  "Current league",
                                  style: TextStyle(
                                      color: Color.fromARGB(103, 255, 255, 255),
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      color: Colors.green,
                      child: const Text("WEEK 1"),
                    ),
                  )
                ]),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(185, 60),
                        elevation: 6,
                        side: const BorderSide(
                            width: 3, color: Color.fromARGB(155, 81, 80, 80)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: const Color.fromARGB(197, 4, 6, 6)),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.workspace_premium_outlined,
                              size: 25,
                              color: Color(0xFFFFCC00),
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "24",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "Top 3 finishes",
                              style: TextStyle(
                                  color: Color.fromARGB(103, 255, 255, 255),
                                  fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ]),
    );
  }
}

class Friends extends StatelessWidget {
  Friends({super.key});

  final List friends = [
    {
      "img": "lib/Assets/Images/feran.jpg",
      "name": "Feran",
      "connection": "That is your Parabatai"
    },
    {
      "img": "lib/Assets/Images/pam.jpg",
      "name": "Pam",
      "connection": "You may know each other"
    },
    {
      "img": "lib/Assets/Images/pero.jpg",
      "name": "Pero",
      "connection": "You may know each other"
    },
    {
      "img": "lib/Assets/Images/travel.jpg",
      "name": "Amanii",
      "connection": "May be from your contacts"
    },
    {
      "img": "lib/Assets/Images/love.jpg",
      "name": "Love",
      "connection": "You may know each other"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Friend Suggestions",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "VIEW ALL",
              style: TextStyle(
                  color: Color(0xFF7BD5FF),
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
        SizedBox(
          height: 200,
          width: 600,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: friends.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(102, 158, 158, 158)),
                    borderRadius: BorderRadius.circular(10),
                    // color: const Color.fromARGB(255, 16, 22, 22),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      friends[index]["img"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(Icons.close,
                                  color: Color.fromARGB(155, 81, 80, 80)),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          Text(
                            friends[index]['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            child: Text(
                              friends[index]['connection'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(208, 143, 143, 143)),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 5,
                                backgroundColor: const Color(0xFF7BD5FF),
                                foregroundColor:
                                    const Color.fromRGBO(10, 12, 16, 0.773),
                                fixedSize: const Size(120, 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: const Text(
                              "FOLLOW",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );

              // return ListTile(
              //   title: Row(
              //     children: [
              //       Container(
              //         height: 180,
              //         width: 150,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.cyanAccent),
              //         child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.end,
              //               children: [
              //                 Icon(Icons.close),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Container(
              //                   height: 40,
              //                   width: 40,
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(50),
              //                       image: DecorationImage(
              //                         image: AssetImage(
              //                           friends[index]["img"],
              //                         ),
              //                         fit: BoxFit.cover,
              //                       )),
              //                 ),
              //                 SizedBox(
              //                   height: 5,
              //                 ),
              //                 Text(friends[index]['name'],
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.w800,
              //                         fontSize: 20)),
              //                 Text(friends[index]['connection']),
              //                 ElevatedButton(
              //                     onPressed: () {}, child: Text("FOLLOW"))
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // );
            },
          ),
        )
      ],
    );
  }
}

class Achievements extends StatelessWidget {
  const Achievements({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "Achievements",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 460,
          width: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(color: const Color.fromARGB(116, 255, 255, 255))),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.white))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromARGB(255, 51, 5, 125),
                      foregroundColor: const Color.fromRGBO(10, 12, 16, 0.773),
                      fixedSize: const Size(80, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_half_outlined,
                          size: 40,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "LEVEL 8",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nocturnal",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            backgroundColor: const Color(0xFF7BD5FF),
                            foregroundColor:
                                const Color.fromRGBO(10, 12, 16, 0.773),
                            fixedSize: const Size(220, 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text(
                          "CLAIM REWARD",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.white))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromARGB(255, 10, 116, 187),
                      foregroundColor: const Color.fromRGBO(10, 12, 16, 0.773),
                      fixedSize: const Size(80, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shield,
                          size: 40,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "LEVEL 6",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Legendary",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Complete 75 legendary levels",
                        style: TextStyle(
                            // fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160,
                            child: LinearProgressIndicator(
                              // the value property of LinearProgressIndicator should be a double between 0.0 and 1.0 representing the percentage of completion.
                              value: 0.87,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              backgroundColor:
                                  Color.fromARGB(255, 118, 118, 118),
                              color: Colors.amber,
                              minHeight: 20,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "68/75",
                            style: TextStyle(
                                // fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color((0x9DFFFFFF))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.white))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromARGB(255, 119, 10, 187),
                      foregroundColor: const Color.fromRGBO(10, 12, 16, 0.773),
                      fixedSize: const Size(80, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.timer,
                          size: 40,
                          color: Color.fromARGB(255, 209, 152, 255),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "LEVEL 5",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Challenger",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Earn 5000 XP in timed challenges ",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 160,
                            child: LinearProgressIndicator(
                              // the value property of LinearProgressIndicator should be a double between 0.0 and 1.0 representing the percentage of completion.
                              value: 0.98,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              backgroundColor:
                                  Color.fromARGB(255, 118, 118, 118),
                              color: Colors.amber,
                              minHeight: 20,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "4.9k/5k",
                            style: TextStyle(
                                // fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0x9DFFFFFF)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "View 11 more",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
