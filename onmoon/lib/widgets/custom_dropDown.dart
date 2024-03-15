import 'package:flutter/material.dart';

class customDropDown extends StatelessWidget {
  List<String> value;
  double width;
  customDropDown({required this.value, required this.width}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width*0.10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10)
      ),
      child: DropdownButton(
          underline: Container(),
          value: value.first,
          dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
          style: TextStyle(color: Colors.white),
          items: value.map(
            (e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            },
          ).toList(),
          onChanged: (_) {}),
    );
  }
}
