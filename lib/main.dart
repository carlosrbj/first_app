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
          body: _returnReportList(),
        )
    );
  }
}

ListView _returnReportList(){
  List<Report> list = [];
  list.add(Report('52038:029:900:75:0:Z7BQCN', 'Procalcitonina', '1676669123279', 'NO_SERIES_TYPE', 'qualitative', '#B1F8D9', [ReportCategory('name', 1, [ReportAnalytes('29', 'Procalcitonina', '<1 ng/mL', 'GREEN_ICON', 'ng/mL')])]));
  list.add(Report('59ba9:004:30:75:0:C9TWK2', 'Hepatite C', '1676669123279', 'NO_SERIES_TYPE', 'qualitative', '#CFDAD6', [ReportCategory('name', 1, [ReportAnalytes('29', 'Procalcitonina', '<1 ng/mL', 'GREEN_ICON', 'ng/mL')])]));
  List<Widget> myWidgetList = list.map((item) => Report(item.code, item.name, item.timestamp, item.seriesType, item.metric, item.color, item.categories)).toList();

  return ListView(children: myWidgetList);
}


