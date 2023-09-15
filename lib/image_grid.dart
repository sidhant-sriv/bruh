// //Grid of 4 images widget
// import 'package:flutter/material.dart';

// //red.jpg, blue.jpg, green.jpg, yellow.jpg
// List<String> imageNames = [
//   "assets/images/red.jpg",
//   "assets/images/blue.jpg",
//   "assets/images/green.jpg",
//   "assets/images/yellow.jpg",
// ];

// class ImgGrid extends StatelessWidget {
//   const ImgGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //4 images in a grid with no spaces in between covering the whole screen. All of same size 200
//     return GridView.count(
//       crossAxisCount: 2,
//       children: List.generate(imageNames.length, (index) {
//         return Container(
//           margin: const EdgeInsets.all(0),
//           child: Center(
//             child: Image.asset(
//               imageNames[index],
//               width: 200,
//               height: 200,
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ImgGrid extends StatelessWidget {
  const ImgGrid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        children: [
          _resizedImage(
              'assets/images/red.jpg'), // Asset path for the red image
          _resizedImage(
              'assets/images/blue.jpg'), // Asset path for the blue image
          _resizedImage(
              'assets/images/yellow.jpg'), // Asset path for the yellow image
          _resizedImage(
              'assets/images/green.jpg'), // Asset path for the green image
        ],
      ),
    );
  }

  Widget _resizedImage(String assetPath) {
    return Image.asset(
      assetPath,
      fit: BoxFit.cover, // Resize the image to cover the entire cell
      width: double.infinity, // Set the width to occupy the entire cell
      height: double.infinity, // Set the height to occupy the entire cell
    );
  }
}
