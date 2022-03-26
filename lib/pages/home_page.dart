import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_pageTitle(), _destinationDropDownWidget()],
          ),
          // color: Colors.blueAccent,
          // alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMars",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/R.jpg"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropdownMenuItem<String>> _dropDownItems = [
      const DropdownMenuItem(
          child: Text("Wicked space station"), value: "Wicked space station"),
      const DropdownMenuItem(
          child: Text("NullPointer space station"),
          value: "NullPointer space station"),
      const DropdownMenuItem(
          child: Text("Hello World space station"),
          value: "Hello World space station"),
    ].toList();
    return Container(
      child: DropdownButton(
        underline: Container(),
        onChanged: (_) {},
        items: _dropDownItems,
      ),
    );
  }
}
