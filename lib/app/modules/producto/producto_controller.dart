import 'package:mobx/mobx.dart';

part 'producto_controller.g.dart';

class ProductoController = _ProductoControllerBase with _$ProductoController;

abstract class _ProductoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
