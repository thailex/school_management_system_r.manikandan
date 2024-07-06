import 'dart:math';
import 'package:flutter/scheduler.dart' show timeDilation;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class SchoolGallery extends StatefulWidget {
  const SchoolGallery({super.key});

  @override
  State<SchoolGallery> createState() => _SchoolGalleryState();
}

class _SchoolGalleryState extends State<SchoolGallery> {
  // to show school gallery images
  List<GridImage> images = [
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
    GridImage(image: 'assets/bg.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leadingWidth: 69,
          title: Text(
            'School Gallery',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: black,
            )),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                app5.withOpacity(0.6),
                app.withOpacity(0.2),
                // app3,
                // app5.withOpacity(0.8),
                // app.withOpacity(0.6),
                // app.withOpacity(0.4),
                // app6.withOpacity(0.7),
                // app7.withOpacity(0.9),
              ]),
            ),
          ),
        ),
        // to show school gallery
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                app5.withOpacity(0.6),
                app.withOpacity(0.2),
                // app3,
                // app5.withOpacity(0.8),
                // app.withOpacity(0.6),
                // app.withOpacity(0.4),
                // app6.withOpacity(0.7),
                // app7.withOpacity(0.9),
              ])),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: size.height / 1.17,
              width: size.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2, // Number of columns
                itemCount: images.length, // Total number of items
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Material(
                              color: Colors.black87,
                              child: InkWell(
                                child: Hero(
                                    transitionOnUserGestures: true,
                                    tag: images[index].image,
                                    child: Image.asset(
                                      images[index].image,
                                    )),
                                onTap: () => Navigator.of(context).pop(),
                              ),
                            ),
                          ));
                    },
                    child: Hero(
                      tag: images[index].image,
                      child: Container(
                        decoration: BoxDecoration(
                            color: grey,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  images[index].image,
                                ),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(
                      1,
                      index.isOdd
                          ? 1
                          : index.isEven
                              ? 1.6
                              : 1.1); // Item height varies
                },
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// gridView() {
//   return StaggeredGrid.count(
//     crossAxisCount: 4,
//     mainAxisSpacing: 4,
//     crossAxisSpacing: 4,
//     children: const [
//       StaggeredGridTile.count(
//         crossAxisCellCount: 4,
//         mainAxisCellCount: 2,
//         child: Tile(
//           index: 0,
//           imageUrl: '',
//         ),
//       ),
//       StaggeredGridTile.count(
//         crossAxisCellCount: 4,
//         mainAxisCellCount: 2,
//         child: Tile(
//           index: 1,
//           imageUrl: '',
//         ),
//       ),
//       StaggeredGridTile.count(
//         crossAxisCellCount: 4,
//         mainAxisCellCount: 2,
//         child: Tile(
//           index: 2,
//           imageUrl: '',
//         ),
//       ),
//       StaggeredGridTile.count(
//         crossAxisCellCount: 4,
//         mainAxisCellCount: 2,
//         child: Tile(
//           index: 3,
//           imageUrl: '',
//         ),
//       ),
//       StaggeredGridTile.count(
//         crossAxisCellCount: 4,
//         mainAxisCellCount: 2,
//         child: Tile(
//           index: 4,
//           imageUrl: '',
//         ),
//       ),
//     ],
//   );
// }

class GridImage {
  String image;
  GridImage({required this.image});
}
