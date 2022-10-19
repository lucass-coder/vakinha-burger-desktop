import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/core/rest_client/rest_client.dart';
import 'package:vakinha_burger_desktop/app/core/services/shopping_card_service.dart';


class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );
    // Não preciso colocar o Fenix nele pois ele é um service
    // então automaticamente ele nunca vai morrer na aplicação
    Get.lazyPut(() => ShoppingCardService());
  }
}
