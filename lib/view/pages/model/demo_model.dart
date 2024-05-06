// To parse this JSON data, do
//
//     final demoModel = demoModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'demo_model.g.dart';
part 'demo_model.freezed.dart';

List<DemoModel> demoModelFromJson(String str) => List<DemoModel>.from(json.decode(str).map((x) => DemoModel.fromJson(x)));

String demoModelToJson(List<DemoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class DemoModel with _$DemoModel {
    const factory DemoModel({
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "avatar")
        required String avatar,
        @JsonKey(name: "id")
        required String id,
    }) = _DemoModel;

    factory DemoModel.fromJson(Map<String, dynamic> json) => _$DemoModelFromJson(json);
}
