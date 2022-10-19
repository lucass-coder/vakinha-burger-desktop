import 'package:vakinha_burger_desktop/app/models/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> findAll();
}
