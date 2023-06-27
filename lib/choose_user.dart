import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/my_details.dart';

class ChooseUserPage extends StatefulWidget {
  const ChooseUserPage({super.key});

  @override
  State<ChooseUserPage> createState() => _ChooseUserPageState();
}

class _ChooseUserPageState extends State<ChooseUserPage> {
  bool isPatientSelected = false;
  bool isCaregiverSelected = false;
  // bool isMaleSelected = false;
  // bool isFemaleSelected = false;
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 100),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Choose User',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Positioned(
              child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(20, 180, 20, 50),
                height: 610,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isPatientSelected
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isPatientSelected = true;
                                    isCaregiverSelected = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Patient',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isCaregiverSelected
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isPatientSelected = false;
                                    isCaregiverSelected = true;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Material(
                              color: selectedGender == 'male'
                                  ? Colors.red
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(100),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedGender = 'male';
                                  });
                                },
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Icon(
                                    Icons.man_2,
                                    size: 50,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Material(
                              color: selectedGender == 'female'
                                  ? Colors.red
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(100),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedGender = 'female';
                                  });
                                },
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Icon(
                                    Icons.woman_2,
                                    size: 50,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 160),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors
                                      .red, // Set the text/icon color to red
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Icon(Icons.arrow_back_ios))
                          ],
                        ),
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => const MyDetailsPage(),));
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors
                                      .red, // Set the text/icon color to red
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Icon(Icons.arrow_forward_ios))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ),
        ],
        ),
      ),
    ),
    );
  }
}
