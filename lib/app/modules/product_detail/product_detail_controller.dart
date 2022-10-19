import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/core/mixins/messages_mixin.dart';
import 'package:vakinha_burger_desktop/app/core/services/shopping_card_service.dart';
import 'package:vakinha_burger_desktop/app/models/product_model.dart';

class ProductDetailController extends GetxController with MessagesMixin {
  final _product = Rx<ProductModel>(Get.arguments);
  final _totalPrice = 0.0.obs;
  final _quantity = 0.obs;
  final ShoppingCardService _shoppingCardService;
  final _alreadAdded = false.obs;

  ProductDetailController({required ShoppingCardService shoppingCardService})
      : _shoppingCardService = shoppingCardService;

  ProductModel get product => _product.value;
  double get totalPrice => _totalPrice.value;
  int get quantity => _quantity.value;
  bool get alreadAdded => _alreadAdded.value;

  @override
  void onInit() {
    super.onInit();
    _totalPrice(0.0);
    //_totalPrice(product.price);

    // ever é chamado SEMPRE que o _quantity for alterado
    ever<int>(_quantity, (quantity) {
      _totalPrice(product.price * quantity);
    });

    final productShoppingCard = _shoppingCardService.getById(product.id);

    if (productShoppingCard != null) {
      _quantity(productShoppingCard.quantity);
      _alreadAdded(true);
    }
  }

  void addProduct() {
    _quantity.value += 1;
  }

  void removeProduct() {
    if (_quantity >= 1) {
      _quantity.value -= 1;
    }
  }

  void addProductInShoppingCard() {
    _shoppingCardService.addAndRemoveProductInShoppingCard(product,
        quantity: quantity);
    Get.back();
  }
}
