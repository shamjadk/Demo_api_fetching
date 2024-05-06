import 'package:demo_project/controller/api_service.dart';
import 'package:demo_project/view/pages/model/demo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

final apiProvider = FutureProvider<List<DemoModel>?>((ref) async {
  return ApiService.fetchdata();
});

@riverpod
Future<List<DemoModel>?> getData(GetDataRef ref) async {
  return ApiService.fetchdata();
}
