import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/booking": (context) => BookingPage()
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Booking page"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange.shade600,
        ),
        body: BookingMainPage(),
      ),
    );
  }
}

class BookingMainPage extends StatefulWidget {
  HomePageInBooking createState() => HomePageInBooking();
}

class HomePageInBooking extends State<BookingMainPage> {
  @override
  Widget build(BuildContext context) {
    var checkAnimator = false;

    var _checkbox;

    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: null,
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Номер телефона',
                    helperText: 'Phone format: 8-(XXX)-XXX-XXXX',
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 3))),
                keyboardType: TextInputType.phone,
                inputFormatters: [],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: null,
                decoration: InputDecoration(
                    labelText: 'На сколько персон бронировать?',
                    hintText: 'Число',
                    prefixIcon: Icon(Icons.family_restroom),
                    suffixIcon: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 3))),
                keyboardType: TextInputType.phone,
                inputFormatters: [],
              ),
              SizedBox(height: 5,),
              CheckboxListTile(
                title: const Text("Аниматор для детей"),
                value: checkAnimator,
                onChanged: (newValue) {
                  setState(() {
                    checkAnimator = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                controller: null,
                decoration: InputDecoration(
                    labelText: 'На какое время бронировать?',
                    hintText: 'Время деньги',
                    helperText: 'Пример: 20:00 30.05',
                    prefixIcon: Icon(Icons.date_range),
                    suffixIcon: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue, width: 3))),
                keyboardType: TextInputType.datetime,
                inputFormatters: [],
              ),
              // я здесь остановился
            ],
          ),
        ),
      ),
    );
  }
}




