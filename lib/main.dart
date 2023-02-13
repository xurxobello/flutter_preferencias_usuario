import 'package:flutter/material.dart';
import 'package:flutter_preferencias_usuario/providers/theme_provider.dart';
import 'package:flutter_preferencias_usuario/screens/screens.dart';
import 'package:flutter_preferencias_usuario/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

// hacemos un main asíncrono para poder llamar la inicialización de nuestras preferencias
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
