import 'package:flutter/material.dart';
import 'circle.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddMedicineState createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  final List<String> _medicine = [
    'Tablet',
    'Capsule',
    'Injection',
    'Syrup',
    'Powder',
    'Cream',
    'Inhaler',
    'Dropper',
    'Others',
  ];

  String _selectedMeasurement = 'mg';
  // ignore: unused_field
  final TimeOfDay _selectedTime = TimeOfDay.now();
  String _selectedAmPm = 'AM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add Medicines',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('What medicine would you like to add?'),

                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter medicine',
                        ),
                      )
                    ],
                  ),
                ),
              ),
                    const SizedBox(height: 10.0),
                         const SizedBox(height: 10.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Select Medicine Type'),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: _medicine.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var _selectedCircleIndex;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedCircleIndex = index;
                                });
                              },
                              child: MyCircle(
                                selected: _selectedCircleIndex == index, onPressed: () {  },
                                child: Text(_medicine[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('What strength is the medicine?'),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '1',
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          DropdownButton<String>(
                            value: _selectedMeasurement,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedMeasurement = newValue!;
                              });
                            },
                            items: <String>['mg', 'g', 'ml', 'unit']
                                .map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Do you need to take this medicine everyday?'),
                      SizedBox(height: 5.0),
                      OnOffIcon(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('When do you need to take the first dose?'),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'time',
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          DropdownButton<String>(
                            value: _selectedAmPm,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedAmPm = newValue!;
                              });
                            },
                            items: <String>['AM', 'PM']
                                .map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Almost done. Would you like to;'),
                      SizedBox(height: 5.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'set treatment duration?',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'set another field',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Submit button action
                        },
                        child: const Text('Submit'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Cancel button action
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: const Text('Cancel'),
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
