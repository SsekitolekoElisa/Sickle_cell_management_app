import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/upload_image.dart';
class BloodTypePage extends StatefulWidget {
  const BloodTypePage({super.key});

  @override
  State<BloodTypePage> createState() => _BloodTypePageState();
}

class _BloodTypePageState extends State<BloodTypePage> {
  String? selectedOption;

  void selectOption(String? option) {
    setState(() {
      selectedOption = option;
    });
  }
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
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.only(top: 100 ),
                child: const Column(
                  children: [
                    Text(
                      "Blood Type",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        onPressed: () => selectOption('A'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedOption == 'A'
                              ? Colors.red
                              : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(500, 60)
                        ),
                        child: const Text('A'),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('AB'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'AB'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         minimumSize: const Size(500, 60)
                      ),
                      child: const Text('AB'),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('O'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'O'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         minimumSize: const Size(500, 60)
                      ),
                      child: const Text('O'),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('B'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'B'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(500, 60)
                      ),
                      child: const Text('B'),
                    ),
                    
                    
                    const SizedBox(height: 70),
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
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) => const ImageUploadPage(),));
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

void main() {
  runApp(const MaterialApp(
    home: BloodTypePage(),
  ));
}
 