import 'package:first_app/model/ReportAnalytes.dart';
import 'package:flutter/material.dart';

import 'HexColor.dart';
import 'ReportCategory.dart';

class Report extends StatelessWidget {
  final String code;
  final String name;
  final String timestamp;
  final String seriesType;
  final String metric;
  final String color;
  final List<ReportCategory> categories;

  const Report(this.code, this.name, this.timestamp, this.seriesType, this.metric, this.color, this.categories, {Key? key}) : super(key: key);

  String finalValueConcatUnit(Report report){
    final valueConcat = report.categories.first.analytes.first;
    String answer = '';
    if(valueConcat.finalValue.isNotEmpty && valueConcat.unit.isNotEmpty){
      answer = valueConcat.finalValue + valueConcat.unit;
    }
    return answer;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12),
                color: HexColor(color)
            ),
            height: 70,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Icon(Icons.info, color: Colors.orange,),],
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          name,
                          style: const TextStyle(fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(categories.first.analytes.first.finalValue),
                SizedBox(
                  width: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [Icon(Icons.expand_more)],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

