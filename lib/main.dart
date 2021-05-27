import 'package:flutter/material.dart';
import 'package:restaurant/components/navbar.dart';
import 'package:restaurant/pages/booking.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/booking": (context) => BookingPage()
      },
      home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: Text("Family"),
            centerTitle: true,
            backgroundColor: Colors.orange.shade600,
          ),
          body: HomeMainPage()
      ),
    );
  }
}

class HomeMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/home.png"))),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Family Restaurant",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        blurRadius: 2,
                        color: Colors.amber,
                        offset: Offset(3.0, 1.0))
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Семейный ресторан – это место, где можно отдохнуть и взрослым, и детям. Именно в таких заведениях можно будет насладиться вкуснейшими блюдами на любой вкус и при этом получить удовольствие от развлекательной программы, порадовать детей совместным обедом или праздничным ужином",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,

                ),
              ),
            ),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Жаль, что аппетитные запахи с кухни не доходят до пользователей через приложении...",
                style: TextStyle(color: Colors.white70),),
            ),
            SizedBox(height: 220,),
            Container(
              margin: EdgeInsets.all(10),
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white70)),
                onPressed: () {
                  Navigator.pushNamed(context, '/booking');
                },
                padding: EdgeInsets.all(15.0),
                color: Colors.amber,
                textColor: Colors.black87,
                child: Text("Я хочу забронировать",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
          ],
        ),
    )
    );
  }
  }