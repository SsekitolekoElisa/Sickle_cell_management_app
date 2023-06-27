import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/disease_type.dart';

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage({super.key});

  @override
  State<MyDetailsPage> createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage> {
  DateTime? selectedDate;
  String? selectedOption1;
  String? selectedOption2;
  String? selectedOption3;

  Future<void> selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
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
                padding: const EdgeInsets.only(top: 40),
                child: const Column(
                  children: [
                    Text(
                      "Personal Details",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(20, 100, 20, 50),
                height: 575,
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
                    const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 139, 136, 136),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: selectDate,
                      child: AbsorbPointer(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Date of Birth",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 139, 136, 136),
                            ),
                          ),
                          controller: TextEditingController(
                            text: selectedDate != null
                                ? '${selectedDate?.day}/${selectedDate?.month}/${selectedDate?.year}'
                                : '',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: selectedOption1,
                      onChanged: (newValue) {
                        setState(() {
                          selectedOption1 = newValue;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: 'Uganda',
                          child: Text('Uganda'),
                        ),
                        DropdownMenuItem(
                          value: 'Burundi',
                          child: Text('Burundi'),
                        ),
                        DropdownMenuItem(
                          value: 'Rwanda',
                          child: Text('Rwanda'),
                        ),
                        DropdownMenuItem(
                          value: 'Tanzania',
                          child: Text('Tanzania'),
                        ),
                        DropdownMenuItem(
                          value: 'Congo',
                          child: Text('Congo'),
                        ),
                        DropdownMenuItem(
                          value: 'Egypt',
                          child: Text('Egypt'),
                        ),
                        DropdownMenuItem(
                          value: 'Morocco',
                          child: Text('Morocco'),
                        ),
                      ],
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Select Country",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 139, 136, 136),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: selectedOption2,
                      onChanged: (newValue) {
                        setState(() {
                          selectedOption2 = newValue;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: 'Kampala',
                          child: Text('Kampala'),
                        ),
                        DropdownMenuItem(
                          value: 'Nairobi',
                          child: Text('Nairobi'),
                        ),
                        DropdownMenuItem(
                          value: 'Mombasa',
                          child: Text('Mombasa'),
                        ),
                        DropdownMenuItem(
                          value: 'Masaka',
                          child: Text('Masaka'),
                        ),
                        DropdownMenuItem(
                          value: 'Jinjja',
                          child: Text('Jinjja'),
                        ),
                      ],
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Select State",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 139, 136, 136),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: selectedOption2,
                      onChanged: (newValue) {
                        setState(() {
                          selectedOption2 = newValue;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: 'Kampala',
                          child: Text('Kampala'),
                        ),
                        DropdownMenuItem(
                          value: 'Nairobi',
                          child: Text('Nairobi'),
                        ),
                        DropdownMenuItem(
                          value: 'Mombasa',
                          child: Text('Mombasa'),
                        ),
                        DropdownMenuItem(
                          value: 'Masaka',
                          child: Text('Masaka'),
                        ),
                        DropdownMenuItem(
                          value: 'Jinjja',
                          child: Text('Jinjja'),
                        ),
                      ],
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Select City",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 139, 136, 136),
                        ),
                      ),
                    ),
                    const SizedBox(height: 180),
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
                                  MaterialPageRoute(builder: (context) => const DiseaseTypePage(),));
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
          ],
        ),
      ),
    ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MyDetailsPage(),
  ));
}
