import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      SingleChildScrollView(
        //padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>
          [
            Image.asset( "Images/stud.png"),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                children: <Widget>
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>
                    [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>
                        [
                          Text (
                            "Общежитие №20",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text (
                            "Краснодар, ул. Калинина, 13",
                             style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>
                        [
                          Icon( Icons.favorite, color: Colors.red),
                          Text (
                            "27",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>
                    [
                      Container(
                        margin: const EdgeInsets.only(left:5, right: 5, top: 20, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>
                          [
                            Icon( Icons.call, color: Colors.green),
                            Text (
                              "Позвонить",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:5, right: 5, top: 20, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>
                          [
                            Icon( Icons.near_me, color: Colors.green),
                            Text (
                              "Маршрут",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:5, right: 5, top: 20, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>
                          [
                            Icon( Icons.share, color: Colors.green),
                            Text (
                              "Поделиться",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Студенческий городок или так называемый кампус "
                    "Кубанского ГАУ состоит из двадцати общежитий, "
                    "в которых проживает более 8000 студентов, "
                    "что составляет 96% от всех нуждающихся. "
                    "Студенты первого курса обеспечены местами в общежитии полностью. "
                    "В соответствии с Положением о студенческих общежитиях университета, "
                    "при поселении между администрацией и студентами заключается договор найма жилого помещения. "
                    "Воспитательная работа в общежитиях направлена на улучшение быта, "
                    "соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. "
                    "Условия проживания в общежитиях университетского кампуса "
                    "полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, "
                    "душевых комнат, прачечных, читальных залов, комнат самоподготовки, "
                    "помещений для заседаний студенческих советов и наглядной агитации. "
                    "С целью улучшения условий быта студентов активно работает "
                    "система студенческого самоуправления - студенческие советы "
                    "организуют всю работу по самообслуживанию.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
