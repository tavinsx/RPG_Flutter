import 'package:flutter/material.dart';
import 'package:project_flutter/presenter/arena/arena_view.dart';
import 'package:project_flutter/presenter/history/history_view.dart';
import 'package:project_flutter/presenter/person/person_view.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _itemSelected = 0;

  final List<Widget> _telas = [
    ArenaView(),
    PersonView(),
    History(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _telas[_itemSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelected,
        onTap: (index) {
          setState(() {
            _itemSelected = index;
          });
        },
        items: [BottomNavigationBarItem(icon: Icon(Icons.shield), label: 'Arena',),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Personagens',),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Histórico',),
               ],
      )
    );
  }
}