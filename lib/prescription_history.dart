import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class PrescriptionHistory extends StatefulWidget {
  const PrescriptionHistory({Key? key}) : super(key: key);

  @override
  _PrescriptionHistoryState createState() => _PrescriptionHistoryState();
}

class _PrescriptionHistoryState extends State<PrescriptionHistory> {
  List<File> _uploadedFiles = [];

  Future<void> _pickImageFromGallery() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'pdf'],
    );

    if (result != null) {
      List<File> pickedFiles =
          result.files.map((file) => File(file.path!)).toList();
      setState(() {
        _uploadedFiles.addAll(pickedFiles);
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final picker = ImagePicker();
    PickedFile? pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _uploadedFiles.add(File(pickedFile.path));
      });
    }
  }

  Future<void> _uploadFiles() async {
    if (_uploadedFiles.isNotEmpty) {
      // Perform the file upload logic here
      // Example: You can use a service or API to upload the files
      // For simplicity, we'll just print the file paths
      for (File file in _uploadedFiles) {
        print('Uploading file: ${file.path}');
      }
    } else {
      // No files selected, display an error or prompt to select files
      print('No files selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescription History'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            // ignore: sort_child_properties_last
            children: [
              
              
              Positioned(
                height: 300,
                width: 400,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  width: MediaQuery.of(context).size.width - 15,
                  height: 200,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: _pickImageFromGallery,
                        icon: Icon(Icons.file_upload),
                        label: Text('Upload File'),
                     ),
                     SizedBox(height: 10,),
                     Text('Upload New Prescription',
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                     ),),
                     Text('\n Select document(jpeg,png,pdf)\n Or \n Use camera to take a photo of\n your prescription',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                     ),),
                    ],
                  ),
                ),
              ),
              Positioned(
                height: 500,
                width: 400,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 170, 10, 0),
                  width: MediaQuery.of(context).size.width - 15,
                  height: 0,
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  // color: Color.fromARGB(255, 223, 222, 222),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: _pickImageFromCamera,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                          ),
                          icon: Icon(Icons.camera_alt),
                          label: Text('Use camera'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
               padding: EdgeInsets.only(right: 140),
                  margin: const EdgeInsets.fromLTRB(10, 350, 20, 0),
                  height: 130,
                  width: 500,
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Older Prescription',
                            style: TextStyle(
                                fontSize: 25,
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
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 400, 10, 0),
                  height: 350,
                  width: 500,
                  color: Color.fromARGB(255, 232, 233, 233),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        _uploadedFiles.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            leading: const Icon(Icons.file_copy),
                            title: Text(
                                _uploadedFiles[index].path.split('/').last),
                          ),
                        ),
                      ),
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
