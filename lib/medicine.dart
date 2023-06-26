import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:sickle_cell_app1/main.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Image Slider',
//     debugShowCheckedModeBanner: false,
//     home: Rootpage(),
//   ));
// }

class MedicinePage extends StatefulWidget {
  const MedicinePage({Key? key}) : super(key: key);

  @override
  _MedicinePageState createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  int _currentIndex = 0;
  final List<String> _firstImagePaths = [
    'images/download.jpeg',
    'images/med1.jpeg',
    'images/med2.jpeg',
    'images/download (1).jpeg',
  ];
  final List<String> _secondImagePaths = [
    'images/download.jpeg',
    'images/med1.jpeg',
    'images/med2.jpeg',
    'images/download (1).jpeg',
  ];

  int _selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                  height: 110,
                  width: MediaQuery.of(context).size.width - 15,
                  padding: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 226, 225, 225),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Medicine',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      margin: const EdgeInsets.fromLTRB(0, 145, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 345,
                      width: MediaQuery.of(context).size.width - 20,
                      child: Column(
                        children: [
                          Expanded(
                            child: CarouselSlider.builder(
                              itemCount: _firstImagePaths.length,
                              options: CarouselOptions(
                                height: 330,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.6,
                                initialPage: _currentIndex,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: false,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                    _selectedImageIndex = index;
                                  });
                                },
                                scrollDirection: Axis.horizontal,
                              ),
                              itemBuilder: (context, index, realIndex) {
                                return MouseRegion(
                                  cursor: _selectedImageIndex == index
                                      ? SystemMouseCursors.click
                                      : SystemMouseCursors.basic,
                                  onEnter: (_) {
                                    setState(() {
                                      _selectedImageIndex = index;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      _selectedImageIndex = _currentIndex;
                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ImageDetailsPage(
                                            imagePath: _firstImagePaths[index],
                                            imageIndex: index,
                                            sliderIndex: 1,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 3,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          _firstImagePaths[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
                  margin: const EdgeInsets.fromLTRB(10, 510, 10, 50),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 15,
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Recommendations',
                            style: TextStyle(
                                fontSize: 30,
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
                      margin: const EdgeInsets.fromLTRB(0, 550, 0, 0),
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
                      height: 130,
                      width: MediaQuery.of(context).size.width - 20,
                      child: Column(
                        children: [
                          Expanded(
                            child: CarouselSlider.builder(
                              itemCount: _secondImagePaths.length,
                              options: CarouselOptions(
                                height: 140,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.6,
                                initialPage: _currentIndex,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                    _selectedImageIndex = index;
                                  });
                                },
                                scrollDirection: Axis.horizontal,
                              ),
                              itemBuilder: (context, index, realIndex) {
                                return MouseRegion(
                                  cursor: _selectedImageIndex == index
                                      ? SystemMouseCursors.click
                                      : SystemMouseCursors.basic,
                                  onEnter: (_) {
                                    setState(() {
                                      _selectedImageIndex = index;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      _selectedImageIndex = _currentIndex;
                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ImageDetailsPage(
                                            imagePath: _secondImagePaths[index],
                                            imageIndex: index,
                                            sliderIndex: 2,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: _selectedImageIndex == index
                                            ? [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.3),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ]
                                            : null,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          _secondImagePaths[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageDetailsPage extends StatelessWidget {
  final String imagePath;
  final int imageIndex;
  final int sliderIndex;

  ImageDetailsPage({
    required this.imagePath,
    required this.imageIndex,
    required this.sliderIndex,
  });

  String getTitle() {
    String title;
    if (sliderIndex == 1) {
      switch (imageIndex) {
        case 0:
          title = 'Hydroxyurea';
          break;
        case 1:
          title = 'Panadol';
          break;
        case 2:
          title = 'Citrizene';
          break;
        case 3:
          title = 'Image $imageIndex';
          break;
        default:
          title = 'Unknown';
      }
    } else if (sliderIndex == 2) {
      switch (imageIndex) {
        case 0:
          title = 'Image 5';
          break;
        case 1:
          title = 'Image 6';
          break;
        case 2:
          title = 'Image 7';
          break;
        case 3:
          title = 'Image 8';
          break;
        default:
          title = 'Unknown';
      }
    } else {
      title = 'Unknown';
    }
    return title;
  }

  String getDescription() {
    String description;
    if (sliderIndex == 1) {
      switch (imageIndex) {
        case 0:
          description =
              'Hydroxyurea is a medication used to treat sickle cell anemia.';
          break;
        case 1:
          description =
              'Panadol is a commonly used pain reliever and fever reducer.';
          break;
        case 2:
          description =
              'Citrizene is an antihistamine used to relieve allergy symptoms.';
          break;
        case 3:
          description =
              'This is image $imageIndex with no specific information.';
          break;
        default:
          description = 'No information available.';
      }
    } else if (sliderIndex == 2) {
      switch (imageIndex) {
        case 0:
          description = 'This is image 5 with no specific information.';
          break;
        case 1:
          description = 'This is image 6 with no specific information.';
          break;
        case 2:
          description = 'This is image 7 with no specific information.';
          break;
        case 3:
          description = 'This is image 8 with no specific information.';
          break;
        default:
          description = 'No information available.';
      }
    } else {
      description = 'No information available.';
    }
    return description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle()),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                getDescription(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
