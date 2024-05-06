import 'package:demo_project/controller/api_service.dart';
import 'package:demo_project/view/pages/model/demo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@riverpod
class Api extends _$Api {
  @override
  List<DemoModel>? build()  {
    return [];
  }

  Future<void> getData() async {
    state = AsyncValue.data(await ApiService.fetchdata());
  }
}
