import 'dart:convert';

class BoletoModel {
  final String? name;
  final String? dueDate;
  final double? value;
  final String? barcode;
  final int? status;
  BoletoModel({this.name, this.dueDate, this.value, this.barcode, this.status});

  BoletoModel copyWith({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
    int? status,
  }) {
    return BoletoModel(
        name: name ?? this.name,
        dueDate: dueDate ?? this.dueDate,
        value: value ?? this.value,
        barcode: barcode ?? this.barcode,
        status: status ?? this.status);
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (name != null) {
      result.addAll({'name': name});
    }
    if (dueDate != null) {
      result.addAll({'dueDate': dueDate});
    }
    if (value != null) {
      result.addAll({'value': value});
    }
    if (barcode != null) {
      result.addAll({'barcode': barcode});
    }
    if (status != null) {
      result.addAll({'status': status});
    }

    return result;
  }

  factory BoletoModel.fromMap(Map<String, dynamic> map) {
    return BoletoModel(
        name: map['name'],
        dueDate: map['dueDate'],
        value: map['value']?.toDouble(),
        barcode: map['barcode'],
        status: map['status']);
  }

  String toJson() => json.encode(toMap());

  factory BoletoModel.fromJson(String source) =>
      BoletoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BoletoModel(name: $name, dueDate: $dueDate, value: $value, barcode: $barcode, status $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BoletoModel &&
        other.name == name &&
        other.dueDate == dueDate &&
        other.value == value &&
        other.barcode == barcode &&
        other.status == status;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        dueDate.hashCode ^
        value.hashCode ^
        barcode.hashCode ^
        status.hashCode;
  }
}
