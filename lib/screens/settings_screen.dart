import 'package:flutter/material.dart';
import 'package:flutter_preferencias_usuario/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode = false;
  int gender = 1;
  String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        drawer: SideMenu(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              Divider(),
              SwitchListTile.adaptive(
                  value: isDarkmode,
                  title: Text('Darkmode'),
                  onChanged: (value) {
                    isDarkmode = value;
                    setState(() {});
                  }),
              Divider(),
              RadioListTile(
                  value: 1,
                  groupValue: gender,
                  title: Text('Masculino'),
                  onChanged: (value) {
                    gender = value ?? 1;
                    setState(() {});
                  }),
              RadioListTile(
                  value: 2,
                  groupValue: gender,
                  title: Text('Femenino'),
                  onChanged: (value) {
                    gender = value ?? 2;
                    setState(() {});
                  }),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Xurxo',
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      labelText: 'Nombre', helperText: 'Nombre del usuario'),
                ),
              )
            ],
          ),
        ));
  }
}
