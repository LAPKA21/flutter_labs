import 'package:flutter/material.dart';

class DeveloperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('О разработчике')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ФИО: Богушевич Данил Александрович'),
            Text('Группа: ВМК-22'),
            Text('Email: mr.raccon321@gmail.com'),
          ],
        ),
      ),
    );
  }
}
