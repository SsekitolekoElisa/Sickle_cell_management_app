import 'package:flutter/material.dart';
import 'package:sickle_cell_app1/add_medicine.dart';

class MedicineCard {
  final String title;
  MedicineCard(this.title);
}

class MedicineListPage extends StatelessWidget {
  final List<MedicineCard> medicineList = [
    MedicineCard("Medicine 1"),
    MedicineCard("Medicine 2"),
    MedicineCard("Medicine 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: medicineList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.access_time),
                title: Text(medicineList[index].title),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => AddMedicine(),));// Add button action
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
