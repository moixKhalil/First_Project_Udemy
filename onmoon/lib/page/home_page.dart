import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:onmoon/widgets/custom_dropDown.dart';

class HomePage extends StatelessWidget {
  late double _deviceWidth, _deviceHeight;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _astroText(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _DestinationDropDown() {
    return customDropDown(
      value: [
        "Moon Station - 1 ",
        "Moon Station - 2 ",
      ],
      width: _deviceWidth,
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _DestinationDropDown(),
          _travellerDropDown(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _travellerDropDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customDropDown(
          value: [
            "1 ",
            "2",
            "3",
          ],
          width: _deviceWidth * 0.35,
        ),
        customDropDown(
          value: [
            "Economy ",
            "Business",
            "First Class",
          ],
          width: _deviceWidth * 0.35,
        ),
      ],
    );
  }

  Widget _astroText() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImage() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/astro_moon.png"),
            fit: BoxFit.scaleDown),
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.020),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book Ride!",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
