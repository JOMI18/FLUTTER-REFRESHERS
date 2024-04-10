import 'package:flutter/material.dart';

class FormLayout extends StatelessWidget {
  const FormLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Welcome to the Angel Studios ",
              style: TextStyle(fontSize: 18),
              softWrap: true,
              textAlign: TextAlign.left,
            ),
            Icon(Icons.person_pin)
          ],
        ),
      ),
      body: 
      Column(
        children: [
          const Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Thank you for choosing the CHOSEN! Tell us More About You... ",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
                child: Form(
                    child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                border: OutlineInputBorder(),
                                // labelText: "What's your first name?",
                                hintText: "John",

                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                              style:
                                  TextStyle(fontSize: 18, letterSpacing: 1.2),
                            ),
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Surname / Last Name",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                border: OutlineInputBorder(),
                                // labelText: "What's your last name?",
                                hintText: "Smith",

                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                              style:
                                  TextStyle(fontSize: 18, letterSpacing: 1.2),
                            ),
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email Address",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              // labelText: "What's your email?",
                              hintText: "johnsmith@gmail.com",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              border: OutlineInputBorder()),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                border: OutlineInputBorder(),
                                // labelText: "What's your first name?",
                                hintText: "Gender",

                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                              style:
                                  TextStyle(fontSize: 18, letterSpacing: 1.2),
                            ),
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nationality",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                border: OutlineInputBorder(),
                                // labelText: "What's your last name?",
                                hintText: "",
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                                // hintText: "Last Name",
                                // hintStyle: TextStyle(
                                //     fontSize: 16,
                                //     fontStyle: FontStyle.italic,
                                //     color: Color.fromARGB(142, 115, 115, 115)),
                              ),
                              style:
                                  TextStyle(fontSize: 18, letterSpacing: 1.2),
                            ),
                          ],
                        )),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Date of Birth",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        // DatePickerTheme(data: Text(), child: child)
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              // labelText: "What's your email?",
                              hintText: "mm/dd/yyyy",
                              suffixIcon: Icon(Icons.calendar_today),
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              border: OutlineInputBorder()),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Country Code",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "+(234)",
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                            )
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: " 803-6494-894",
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                            )
                          ],
                        )),
                    
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Password",
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                            )
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Confirm Password",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Confirm Password",
                                filled: true,
                                fillColor: Color.fromARGB(121, 221, 221, 221),
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(190, 17, 25, 29)),
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password Security Check",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "What's your go to music?",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(170, 18, 17, 17)),
                          ),
                          style:
                              const TextStyle(fontSize: 12, letterSpacing: 1.2),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                )),
              ),
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(300, 60),
                      elevation: 5,
                      foregroundColor: Colors.black,
                      backgroundColor:
                          const Color.fromARGB(255, 105, 189, 230)),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 18),
                  )),
              const SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
