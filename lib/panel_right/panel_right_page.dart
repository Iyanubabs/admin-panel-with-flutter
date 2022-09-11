import 'package:admin_panel/constants.dart';
import 'package:admin_panel/panel_right/wavey_graph.dart';
import 'package:flutter/material.dart';

class Product {
  String name;
  bool enable;
  Product({this.enable = true, required this.name});
}

class PanelRightPage extends StatefulWidget {
  const PanelRightPage({Key? key}) : super(key: key);

  @override
  _PanelRightPageState createState() => _PanelRightPageState();
}

class _PanelRightPageState extends State<PanelRightPage> {
  List<Product> _products = [
    Product(name: 'Face cream', enable: true),
    Product(name: 'Body cream', enable: true),
    Product(name: 'Face scrub', enable: true),
    Product(name: 'Body wash', enable: true),
    Product(name: 'Designer bags', enable: true),
    Product(name: 'Designer shoes', enable: true),
    Product(name: 'Black soap', enable: true),
    Product(name: 'Carrot oil', enable: true),
    Product(name: 'Rich perfume', enable: true),
    Product(name: 'Jeweries', enable: true),
  ];

  get isShowingMainData => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Container(
            width: double.infinity,
            child: ListTile(
              title: Text(
                ' Net Revenue',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                '10% of Sales Average',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Chip(
                label: Text(
                  r'N46,500',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      LineChartSample4(),
      Padding(
          padding: const EdgeInsets.only(
            left: Constants.kPadding / 2,
            right: Constants.kPadding / 2,
            top: Constants.kPadding,
            bottom: Constants.kPadding,
          ),
          child: Card(
            color: Constants.purpleLight,
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: List.generate(
                  _products.length,
                  (index) => SwitchListTile.adaptive(
                      title: Text(
                        _products[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      value: _products[index].enable,
                      onChanged: (newValue) {
                        setState(() {
                          _products[index].enable = newValue;
                        });
                      })),
            ),
          ))
    ])));
  }
}
