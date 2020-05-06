import 'package:mobx/mobx.dart';

part 'advertising_controller.g.dart';

class AdvertisingController = _AdvertisingControllerBase
    with _$AdvertisingController;

abstract class _AdvertisingControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
