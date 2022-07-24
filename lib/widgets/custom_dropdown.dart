import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButtonClass(
      {Key? key, required this.values, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1),
        style: const TextStyle(
          color: Colors.white,
        ),
        onChanged: (_) {},
      ),
    );
  }
}
