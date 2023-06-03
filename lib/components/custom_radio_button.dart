import 'package:flutter/material.dart';
import 'package:ggpl/config/palette.dart';

class CustomRadioButton extends StatefulWidget {

  final String title;
  final String isSelected;
  final ValueChanged<String> onChanged;
  CustomRadioButton({required this.title,required this.isSelected, required this.onChanged});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        widget.onChanged(widget.title);
        print(widget.isSelected);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: widget.isSelected == widget.title ? Palette.primaryColor : Colors.grey,
            width: 1,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: widget.isSelected == widget.title ? Palette.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 16,
            color: widget.isSelected == widget.title ? Colors.white : Colors.black,
          ),),
        ),
      ),
    );
  }
}
