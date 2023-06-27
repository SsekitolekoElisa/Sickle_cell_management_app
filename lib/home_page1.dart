import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/hospitalization.dart';
// import 'package:sickle_cell_app1/add_appointment.dart';
import 'package:sickle_cell_app1/appointment.dart';
import 'package:sickle_cell_app1/blood_transfusion_diary.dart';
import 'package:sickle_cell_app1/medicine.dart';
import 'package:sickle_cell_app1/my_details.dart';
import 'package:sickle_cell_app1/my_medicine.dart';
import 'package:sickle_cell_app1/nutrition.dart';
import 'package:sickle_cell_app1/prescription_history.dart';
import 'package:sickle_cell_app1/welcome_page.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:sickle_cell_app1/main.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Image Slider',
//     debugShowCheckedModeBanner: false,
//     home: Rootpage(),
//   ));
// }

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<HomePage1> {
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(95),
      child: AppBar(
         toolbarHeight: 100,
  leading: IconButton(
    icon: const Icon(
      Icons.menu,
      size: 50, // Increase the size of the menu icon
    ),
    onPressed: () {
      _scaffoldKey.currentState?.openDrawer();
    },
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.notifications,
      size: 40,),
      onPressed: () {
        // Add your notification icon onPressed logic here
      },
    ),
  ],
  flexibleSpace: const Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      CircleAvatar(
        radius: 25, // Adjust the size of the profile picture
        backgroundImage: AssetImage('images/med1.jpeg'), // Replace with the actual path to the profile picture
      ),
      SizedBox(height: 5 ),
      Text(
        'Lee',
        style: TextStyle(fontSize: 20),
      ),
    ],
  ),
),
),

      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/med1.jpeg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Lee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyDetailsPage(),));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // TODO: Handle drawer item 1 tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy & Terms of Use'),
            onTap: () {
              // TODO: Handle drawer item 1 tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () {
              // TODO: Handle drawer item 2 tap
              Navigator.pop(context);
            },
          ),
        const SizedBox(height: 10),
          ListTile(
            leading: const  Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              // TODO: Handle logout logic
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
    ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(10, 15, 10, 50),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 15,

                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 253, 253, 253),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weather update',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.thermostat_auto_outlined),
                                    SizedBox(height: 3),
                                    Text(
                                      '25°C',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Temperature',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 182, 180, 180),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.water_drop_outlined),
                                    // SizedBox(height: 3),
                                    Text(
                                      '70%',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 182, 180, 180),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.air_outlined),
                                    SizedBox(height: 3),
                                    Text(
                                      '15 km/h',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Wind Speed',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 182, 180, 180),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Plan hydration and exposure appropriately',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.fromLTRB(10, 165, 10, 50),
                  height: 400,
                  width: MediaQuery.of(context).size.width - 15,
                  // height: 340,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                          Text(
                            'My Treatment Manager',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          children: [
                            ListTile(
                              leading: const Icon(
                                Icons.medical_services,
                                color: Color.fromARGB(255, 252, 232, 50),),
                              title: const Text('My Medicines'),
                              trailing: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(left:10),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Ink(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MedicineListPage()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 90, 89, 89),
                            ),
                            ListTile(
                              leading: const Icon(
                                Icons.local_hospital,
                                color: Colors.red,),
                              title: const Text('Blood Transfusion Diary'),
                              
                              trailing: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(left:10),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Ink(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const BloodTransfusionDiary()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 90, 89, 89),
                            ),
                            ListTile(
                              leading: const Icon(Icons.history,
                              color:Colors.purple),
                              title: const Text('Prescription History'),
                              trailing: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(left:10),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Ink(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PrescriptionHistory()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 90, 89, 89),
                            ),
                            ListTile(
                              leading: const Icon(Icons.hotel,
                              color:Colors.blue),
                              title: const Text('Hospitalization'),
                              trailing: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                 padding: const EdgeInsets.only(left:10),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Ink(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Hospitalization()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromARGB(255, 90, 89, 89),
                            ),
                            ListTile(
                              leading: const Icon(Icons.calendar_today,
                              color: Colors.green,),
                              title: const Text('Add Appointment reminder'),
                              trailing: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(left:10),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Ink(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppointmentList()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  margin: const EdgeInsets.fromLTRB(10, 580, 10, 50),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 15,
                  // color: Colors.cyan,
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nutrition Section and medicine Suggestions',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 615, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 175,
                      width: MediaQuery.of(context).size.width - 20,
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MedicinePage()));
                                },
                                child: Column(
                                  children: [
                                    Material(
                                      elevation: 6,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        height: 130,
                                        width: 140,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/c.PNG',
                                            width: 150,
                                            height: 110,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Medicine',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const NutritionPage()));
                                },
                                child: Column(
                                  children: [
                                    Material(
                                      elevation: 6,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        height: 130,
                                        width: 140,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/med2.jpeg',
                                            width: 150,
                                            height: 130,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Nutrition',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.group), label: 'Comuni'),
          NavigationDestination(icon: Icon(Icons.medication), label: 'Plan'),
          NavigationDestination(
              icon: Icon(Icons.support), label: 'Support Group'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        // onDestinationSelected: (int index){
        //   setState((){
        //     currentPage = index;
        //   });
        // },
        // selectedIndex: currentPage,
      ),
    );
  }
}
