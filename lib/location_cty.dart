import 'package:flutter/material.dart';

class locationCity extends StatefulWidget {
  @override
  _locationCityState createState() => _locationCityState();
}

class _locationCityState extends State<locationCity> {
  TextEditingController cityName =TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/location.webp'),
              fit: BoxFit.cover,
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Padding(
                padding: const EdgeInsets.all(8.0),
             child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Colors.black,size: 40,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
             child: TextFormField(
                controller: cityName,
                decoration: InputDecoration(
                  hintText: "Enter city Name",
                  fillColor: Colors.white,
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  filled: true,
                ),
              ),
            ),
           GestureDetector(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Center(
                 child: Text("Get Weather",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
               ),
             ),
             onTap: (){
               print(cityName.text);
               Navigator.pop(context, cityName.text);
             },
           ),
           
          ],
        ),
      ),
    );
  }
}
