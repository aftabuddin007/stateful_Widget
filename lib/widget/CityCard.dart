import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String image, city;
  const CityCard({super.key, required this.image, required this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(4, 4), blurRadius: 10),
        ],
      ),
      alignment: Alignment.center,
      height: 300,
      child: Column(
        children: [
          Image.network(image, height: 200, width: 200),
          SizedBox(height: 20),
          Text(city),
        ],
      ),
    );
  }
}
