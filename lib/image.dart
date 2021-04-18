import 'package:flutter/material.dart';

/// Create List image for gallery by route picture from picsum.com
class ImagesForGrid {
  final String id;
  final String imageUrl;

  const ImagesForGrid({
    this.id,
    this.imageUrl,
  });
}

const ListImageForGrid = [
  ImagesForGrid(id: '001', imageUrl: 'https://picsum.photos/id/1003/500/600'),
  ImagesForGrid(id: '002', imageUrl: 'https://picsum.photos/id/1020/500/600'),
  ImagesForGrid(id: '003', imageUrl: 'https://picsum.photos/id/1024/500/600'),
  ImagesForGrid(id: '004', imageUrl: 'https://picsum.photos/id/1025/500/600'),
  ImagesForGrid(id: '005', imageUrl: 'https://picsum.photos/id/1069/500/600'),
  ImagesForGrid(id: '006', imageUrl: 'https://picsum.photos/id/1074/500/600'),
  ImagesForGrid(id: '007', imageUrl: 'https://picsum.photos/id/1084/500/600'),
  ImagesForGrid(id: '008', imageUrl: 'https://picsum.photos/id/258/500/600'),
  ImagesForGrid(id: '009', imageUrl: 'https://picsum.photos/id/169/500/600'),
  ImagesForGrid(id: '010', imageUrl: 'https://picsum.photos/id/200/500/600'),
  ImagesForGrid(id: '011', imageUrl: 'https://picsum.photos/id/219/500/600'),
  ImagesForGrid(id: '012', imageUrl: 'https://picsum.photos/id/244/500/600'),
  ImagesForGrid(id: '013', imageUrl: 'https://picsum.photos/id/275/500/600'),
  ImagesForGrid(id: '014', imageUrl: 'https://picsum.photos/id/40/500/600'),
  ImagesForGrid(id: '015', imageUrl: 'https://picsum.photos/id/433/500/600'),
  ImagesForGrid(id: '016', imageUrl: 'https://picsum.photos/id/538/500/600'),
  ImagesForGrid(id: '017', imageUrl: 'https://picsum.photos/id/582/500/600'),
  ImagesForGrid(id: '018', imageUrl: 'https://picsum.photos/id/584/500/600'),
  ImagesForGrid(id: '019', imageUrl: 'https://picsum.photos/id/593/500/600'),
  ImagesForGrid(id: '020', imageUrl: 'https://picsum.photos/id/96/500/600'),
  ImagesForGrid(id: '021', imageUrl: 'https://picsum.photos/id/937/500/600'),
  ImagesForGrid(id: '022', imageUrl: 'https://picsum.photos/id/889/500/600'),
  ImagesForGrid(id: '023', imageUrl: 'https://picsum.photos/id/891/500/600'),
  ImagesForGrid(id: '024', imageUrl: 'https://picsum.photos/id/874/500/600'),
  ImagesForGrid(id: '025', imageUrl: 'https://picsum.photos/id/783/500/600'),
  ImagesForGrid(id: '026', imageUrl: 'https://picsum.photos/id/790/500/600'),
  ImagesForGrid(id: '027', imageUrl: 'https://picsum.photos/id/729/500/600'),
  ImagesForGrid(id: '028', imageUrl: 'https://picsum.photos/id/718/500/600'),
  ImagesForGrid(id: '029', imageUrl: 'https://picsum.photos/id/659/500/600'),
  ImagesForGrid(id: '030', imageUrl: 'https://picsum.photos/id/577/500/600'),
];

class ImageCard extends StatelessWidget {
  final ImagesForGrid imagesForGrid;
  const ImageCard({this.imagesForGrid});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(imagesForGrid.imageUrl, fit: BoxFit.cover),
    );
  }
}
