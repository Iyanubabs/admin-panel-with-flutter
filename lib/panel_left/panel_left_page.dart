import 'package:admin_panel/panel_left/circular_graph.dart';
import 'package:admin_panel/panel_left/curved_chart.dart';
import 'package:admin_panel/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Todo {
  String name;
  bool enable;
  Todo({this.enable = true, required this.name});
}

class PanelLeftPage extends StatefulWidget {
  const PanelLeftPage({Key? key}) : super(key: key);

  @override
  _PanelLeftPageState createState() => _PanelLeftPageState();
}

class _PanelLeftPageState extends State<PanelLeftPage> {
  List<Todo> _toDo = [
    Todo(name: 'Purchase materials', enable: true),
    Todo(name: 'Run ads', enable: true),
    Todo(name: 'Hire someone', enable: true),
    Todo(name: 'Marketing Strategy', enable: true),
    Todo(name: 'Customer Care', enable: true),
    Todo(name: 'Delivery of products', enable: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              color: Constants.purpleLight,
              width: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Constants.purpleDark,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
              ),
            ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: Constants.kPadding / 2,
                    right: Constants.kPadding / 2,
                    top: Constants.kPadding / 2,
                  ),
                  child: Card(
                    color: Constants.purpleLight,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      width: double.infinity,
                      child: ListTile(
                        title: Text(
                          'Products Sold',
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          '20% of Products Sold',
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
                  ),
                ),
                LineChartSample2(),
                PieChartSample2(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: Constants.kPadding / 2,
                      right: Constants.kPadding / 2,
                      top: Constants.kPadding / 2,
                      bottom: Constants.kPadding),
                  child: Card(
                    color: Constants.purpleLight,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: List.generate(
                          _toDo.length,
                          (index) => CheckboxListTile(
                              title: Text(
                                _toDo[index].name,
                                style: TextStyle(color: Colors.white),
                              ),
                              value: _toDo[index].enable,
                              onChanged: (newValue) {
                                setState(() {
                                  _toDo[index].enable = newValue ?? true;
                                });
                              })),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
