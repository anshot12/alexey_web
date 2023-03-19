import 'package:auto_size_text/auto_size_text.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive_layout/laptop/laptop_body.dart';
import 'package:flutter_application_1/responsive_layout/mobile/mobile_body.dart';
import 'package:flutter_application_1/responsive_layout/responsive_layout.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: MyApp(),
          )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
          focusColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.grey,
              accentColor: Colors.green,
              errorColor: Colors.red,
              backgroundColor: Colors.white),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.transparent,
            labelStyle: TextStyle(color: Colors.white),
            prefixIconColor: Colors.white,
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                  padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                      EdgeInsets.zero),
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  foregroundColor:
                      const MaterialStatePropertyAll<Color>(Colors.white),
                  shape: const MaterialStatePropertyAll<OutlinedBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromWidth(MediaQuery.of(context).size.width)),
                  backgroundColor:
                      const MaterialStatePropertyAll<Color>(Colors.transparent),
                  elevation: const MaterialStatePropertyAll<double>(0),
                  side: const MaterialStatePropertyAll<BorderSide>(
                      BorderSide.none))),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  foregroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                  shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  fixedSize: MaterialStatePropertyAll<Size>(Size(MediaQuery.of(context).size.width * 5 / 30, MediaQuery.of(context).size.height * 0.1)),
                  maximumSize: MaterialStatePropertyAll<Size>(MediaQuery.of(context).size),
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                  elevation: const MaterialStatePropertyAll<double>(0),
                  side: const MaterialStatePropertyAll<BorderSide>(BorderSide.none))),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 1, backgroundColor: Colors.grey.shade200, type: BottomNavigationBarType.shifting, selectedLabelStyle: TextStyle(color: Colors.black), unselectedLabelStyle: TextStyle(color: Colors.grey), selectedIconTheme: IconThemeData(color: Colors.black), unselectedIconTheme: IconThemeData(color: Colors.grey))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileBody(),
      laptopBody: LaptopBody(),
    );
  }
}
