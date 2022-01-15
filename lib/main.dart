import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TC Erfurt Rot Weiß',
        theme: ThemeData(
          primarySwatch: Colors.green,
          unselectedWidgetColor: Colors.grey,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final List<StatelessWidget> _widgets = const [
    CourtTab(),
    NewsTab(),
    ShopTab(),
    MeTab()
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget._widgets[_index].toString()),
        ),
        body: widget._widgets[_index],
        drawer: const Drawer(child: Center(child: Text("Drawer"))),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).unselectedWidgetColor,
            currentIndex: _index,
            onTap: (value) => setState(() => _index = value),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Plätze"),
              BottomNavigationBarItem(icon: Icon(Icons.message), label: "News"),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Ich")
            ]));
  }
}

class CourtTab extends StatelessWidget {
  const CourtTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Plätze"),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Platzreservierung";
  }
}

class NewsTab extends StatelessWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("News"),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "News";
  }
}

class ShopTab extends StatelessWidget {
  const ShopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Shop"),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Shop";
  }
}

class MeTab extends StatelessWidget {
  const MeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Ich"),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Meine Daten";
  }
}
