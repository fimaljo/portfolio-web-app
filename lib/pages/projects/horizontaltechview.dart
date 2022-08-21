import 'package:flutter/material.dart';

class HorizontalTechView extends StatelessWidget {
  final List<String> techList;
  const HorizontalTechView({required this.techList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: techList.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10.0),
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Text(
              techList[index],
              style: const TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
