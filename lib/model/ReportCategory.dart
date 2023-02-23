import 'package:equatable/equatable.dart';

import 'ReportAnalytes.dart';

class ReportCategory extends Equatable{
  final String name;
  final int order;
  final List<ReportAnalytes> analytes;

  const ReportCategory(this.name, this.order, this.analytes);

  @override
  // TODO: implement props
  List<Object?> get props => [name, order, analytes];
}