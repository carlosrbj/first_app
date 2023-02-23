

import 'package:equatable/equatable.dart';

class ReportAnalytes extends Equatable{
  final String index;
  final String name;
  final String finalValue;
  final String status;
  final String unit;

  ReportAnalytes(this.index, this.name, this.finalValue, this.status, this.unit);

  @override
  // TODO: implement props
  List<Object?> get props => [index, name, finalValue, status, unit];
}