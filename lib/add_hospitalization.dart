import 'package:flutter/material.dart';
class AddHospitalization extends StatefulWidget {
  const AddHospitalization({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddHospitalizationState createState() => _AddHospitalizationState();
}

class _AddHospitalizationState extends State<AddHospitalization> {
  DateTime? selectedDate;
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
      appBar: AppBar(
        title: Text('Add Hospitalization',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 0, 10),
                   width: MediaQuery.of(context).size.width - 20,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Admission Date',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10),
                    GestureDetector(
                      onTap: selectDate,
                      child: AbsorbPointer(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Select Date",
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
                    const SizedBox(height: 20),
                    Text('Discharge Date',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: selectDate,
                      child: AbsorbPointer(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Select Date",
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
                    const SizedBox(height: 20),
                    Text('Complaints',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    const TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Type here",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 139, 136, 136),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text('Treatments',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    const TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Type here",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 139, 136, 136),
                        ),
                      ),
                    ),
                    SizedBox(height: 140,),
                    Center(
                      child: SizedBox(
                        width: 480,
                        height: 50,
                        
                        child: ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        child: Text('Save', 
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                        ),
                        ),                   
                      ),
                    ),            
                    ],
                  ),
                ),
                ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: NavigationBar(
      //   destinations: const [
      //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //     NavigationDestination(icon: Icon(Icons.group), label: 'Comuni'),
      //     NavigationDestination(icon: Icon(Icons.medication), label: 'Plan'),
      //     NavigationDestination(
      //         icon: Icon(Icons.support), label: 'Support Group'),
      //     NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
       
      // ),
    );
  }
}
