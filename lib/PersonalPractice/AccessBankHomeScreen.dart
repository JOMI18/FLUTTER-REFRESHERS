
import 'package:flutter/material.dart';


class AccessBankingApp extends StatelessWidget {
  // const AccessBankingApp({Key? key}) : super(key: key);

  AccessBankingApp({super.key});

  final List<IconData> bankIcons = [
    Icons.diamond_outlined,
    Icons.credit_card,
    Icons.monetization_on,
    Icons.diversity_3_sharp,
    Icons.wallet,
    Icons.sports,
    Icons.receipt,
    Icons.account_box_outlined,
    Icons.dashboard_customize,
    Icons.account_balance_wallet_sharp,
    Icons.money,
    Icons.receipt_long_outlined,
    Icons.history,

    // Add more icons as needed
  ];

  final List<String> itemTexts0 = [
    "Rewards & ",
    'BreezePay',
    'Access',
    'Other Bank ',
    "Airtime & ",
    "Sport Wallet",
    "Bills Payment ",
    "International ",
    "Loans",
    "Wealth and ",
    "eVoucher ",
    "Transaction ",

    // Add more texts as needed
  ];
  final List<String> itemTexts1 = [
    "Referrals",
    ' ',
    'Transfers',
    ' Transfers',
    " Data Top-up",
    " Funding",
    " ",
    "Airtime ",
    " ",
    "Investment Management",
    "(Gift Cards)",
    " History",

    // Add more texts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        titleSpacing: 4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Afternoon,"),
                SizedBox(
                  height: 5,
                ),
                Text("Oluwajomiloju")
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: const BoxDecoration(
                      // color: Colors.lightBlueAccent,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                              "https://www.accessbankplc.com/Content/images/access-lg-logo.png"))),
                ),
                // const SizedBox(
                //   width: 10,
                // ),
                // const Text(
                //   "access",
                //   style: TextStyle(fontSize: 24),
                // ),
                const SizedBox(
                  width: 6,
                ),
                const Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "My favorites",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mode_edit_outlined,
                      color: Color.fromARGB(236, 110, 157, 239),
                      size: 18,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Edit",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(236, 110, 157, 239)),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              ],
            ),
            // Expanded(
            SizedBox(
              height: 340,
              // child: Container(
              // height: 40,
              // color: Colors.green,
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Number of columns in the grid
                  crossAxisSpacing: 4.0, // Spacing between columns
                  mainAxisSpacing: 4.0, // Spacing between rows
                  childAspectRatio: 0.9,
                ),
                itemCount: 12, // Number of items in the grid
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(4),
                    color: const Color.fromARGB(255, 34, 35, 35),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          bankIcons[index],
                          color: const Color.fromARGB(199, 48, 97, 181),
                          size: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              itemTexts0[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              itemTexts1[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ))
                      ],
                    )),
                  );
                },
              ),
            ),
            // ),
            const Column(
              children: [
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Show All",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "1-Tap Payment",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 60,
              width: 390,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(192, 34, 35, 35),
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: const Color.fromARGB(255, 63, 63, 63))),
              child: const Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Color.fromARGB(199, 48, 97, 181),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "You do not have any 1-Tap Payment set-up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Featured",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(236, 110, 157, 239)),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 390,
              height: 200,
              // color: Colors.deepOrangeAccent,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.accessbankplc.com/getmedia/cc33e675-a627-4f84-bb31-83ec5457c76f/financing.png?width=403&height=412&ext=.png")),
                  // color: const Color.fromARGB(96, 255, 0, 0),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
              // width: 390,
              height: 60,
              // decoration: const BoxDecoration(boxShadow: [
              // //   BoxShadow(
              // //     color: Color.fromARGB(255, 26, 26, 26),
              // //     blurRadius: 4.0, // Adjust the blur radius as needed
              // //     // spreadRadius: 2.0, // Adjust the spread radius as needed
              // //     offset: Offset(
              // //       0.0, // horizontal offset
              // //       2.0, // vertical offset
              // //     ),
              // //   ),
              // ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_balance,
                            color: Color.fromARGB(199, 48, 97, 181),
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Color.fromARGB(199, 48, 97, 181)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          Text(
                            "Menu",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_2_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "Scan",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.headset_mic_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "Support",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
