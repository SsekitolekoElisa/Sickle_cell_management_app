import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/blood_type.dart';

class DiseaseTypePage extends StatefulWidget {
  const DiseaseTypePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiseaseTypePageState createState() => _DiseaseTypePageState();
}

class _DiseaseTypePageState extends State<DiseaseTypePage> {
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
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
                  ),
                ),
                padding: const EdgeInsets.only(top: 100),
                child: const Column(
                  children: [
                    Text(
                      "Sickle Cell Disease Type",
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
                        onPressed: () => selectOption('Sickle Cell Anemia (SS)'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedOption == 'Sickle Cell Anemia (SS)'
                              ? Colors.red
                              : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(500, 60)
                        ),
                        child: const Text('Sickle Cell Anemia (SS)'),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('Sickle Cell- Thalassemia'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'Sickle Cell- Thalassemia'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         minimumSize: const Size(500, 60)
                      ),
                      child: const Text('Sickle Cell- Thalassemia'),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('Sickle Hemoglobin -C Disease(SC)'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'Sickle Hemoglobin -C Disease(SC)'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         minimumSize: const Size(500, 60)
                      ),
                      child: const Text('Sickle Hemoglobin -C Disease(SC)'),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('Sickle Cell Trait'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'Sickle Cell Trait'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(500, 60)
                      ),
                      child: const Text('Sickle Cell Trait'),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('Sickle HbO disease'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'Sickle HbO disease'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                         minimumSize: const Size(500, 60)
                      ),
                      child: const Text('Sickle HbO disease'),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () => selectOption('Sickle HbE disease'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption == 'Sickle HbE disease'
                            ? Colors.red
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(500, 60)
                      ),
                      child: const Text('Sickle HbE disease'),
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
                                  MaterialPageRoute(builder: (context) => const BloodTypePage(),));
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
    home: DiseaseTypePage(),
  ));
}
