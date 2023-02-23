import 'package:flutter/material.dart';
import 'model/Report.dart';
import 'model/ReportAnalytes.dart';
import 'model/ReportCategory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'H.S.O.B. Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text('H.S.O.B. Demo'),
          ),
          body: ListView(
            children: [
              Report('52038:029:900:75:0:Z7BQCN', 'Procalcitonina', '1676669123279', 'NO_SERIES_TYPE', 'qualitative', '#B1F8D9', [ReportCategory('name', 1, [ReportAnalytes('29', 'Procalcitonina', '<1 ng/mL', 'GREEN_ICON', 'ng/mL')])]),
              Report('52038:029:900:75:0:Z7BQCN', 'Procalcitonina', '1676669123279', 'NO_SERIES_TYPE', 'qualitative', '#CFDAD6', [ReportCategory('name', 1, [ReportAnalytes('29', 'Procalcitonina', '<1 ng/mL', 'GREEN_ICON', 'ng/mL')])]),

            ],
          ),
        )
    );
  }
}



