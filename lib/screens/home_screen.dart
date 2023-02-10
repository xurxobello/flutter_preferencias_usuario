import 'package:flutter/material.dart';
import 'package:flutter_preferencias_usuario/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        drawer: SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Darkmode: '),
            Divider(),
            Text('Género: '),
            Divider(),
            Text('Nombre de usuario: '),
            Divider()
          ],
        ));
  }
}
