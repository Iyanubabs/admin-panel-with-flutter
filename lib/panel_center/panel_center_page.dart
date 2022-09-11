import 'package:admin_panel/constants.dart';
import 'package:admin_panel/panel_center/linear_graph.dart';
import 'package:flutter/material.dart';

class Person {
  String name;
  Color color;
  Person({required this.name, required this.color});
}

class PanelCenterPage extends StatefulWidget {
  const PanelCenterPage({Key? key}) : super(key: key);

  @override
  _PanelCenterPageState createState() => _PanelCenterPageState();
}

class _PanelCenterPageState extends State<PanelCenterPage> {
  List<Person> _persons = [
    Person(name: 'Babatunde Iyanuoluwa', color: Constants.orangeLight),
    Person(name: 'Akingbade Juwon', color: Constants.redLight),
    Person(name: 'Oluwasakin Oluwadunsin', color: Constants.blueLight),
    Person(name: 'Ayinde Yetunde', color: Constants.greenLight),
    Person(name: 'Ajayi Chupomotin', color: Constants.orangeLight),
    Person(name: 'Marcus Rashford', color: Constants.blueLight),
    Person(name: 'Siji Babs', color: Constants.redLight),
    Person(name: 'Femi Babs', color: Constants.orangeLight),
    Person(name: 'Jadon Sancho', color: Constants.greenLight),
    Person(name: 'Lionel Messi', color: Constants.redLight),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              left: Constants.kPadding / 2,
              right: Constants.kPadding / 2,
              top: Constants.kPadding / 2,
              bottom: Constants.kPadding,
            ),
            child: Card(
              color: Constants.purpleLight,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    'Products Available',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '80% of Products Sold',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Chip(
                    label: Text(
                      '5,000',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )),
        BarChartSample2(),
        Padding(
            padding: const EdgeInsets.only(
              left: Constants.kPadding / 2,
              right: Constants.kPadding / 2,
              top: Constants.kPadding / 2,
              bottom: Constants.kPadding,
            ),
            child: Card(
              color: Constants.purpleLight,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  children: List.generate(
                _persons.length,
                (index) => ListTile(
                  leading: CircleAvatar(
                    radius: 15,
                    child: Text(
                      _persons[index].name.substring(0, 1),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: _persons[index].color,
                  ),
                  title: Text(
                    _persons[index].name,
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      )),
                ),
              )),
            )),
      ],
    )));
  }
}
