import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: AssetImage("assets/images/background.jpg"),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.tealAccent[700],
                    size: 35.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 37.0),
                child: TextField(
                  onChanged: (value) {
                    cityName = value;
                  },
                  style: TextStyle(color: Colors.black87),
                  autocorrect: true,
                  cursorColor: Colors.limeAccent,
                  decoration: InputDecoration(
                    filled: true,
                    border: InputBorder.none,
                    hintText: "Enter your location",
                    hintStyle: TextStyle(color: Colors.black54),
                    suffixIcon: Icon(
                      Icons.location_city_rounded,
                      color: Colors.tealAccent[400],
                    ),
                    fillColor: Colors.white12,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                style: TextButton.styleFrom(textStyle: kButtonTextStyle),
                child: Text(
                  "Get Weather",
                  style: TextStyle(color: Colors.tealAccent[700]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
