import 'dart:developer';

import 'package:vakinha_burger_desktop/app/core/rest_client/rest_client.dart';
import 'package:vakinha_burger_desktop/app/models/order_pix.dart';
import 'package:vakinha_burger_desktop/app/models/order.dart';
import 'package:vakinha_burger_desktop/app/modules/repositories/order/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final RestClient _restClient;

  OrderRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<OrderPix> createOrder(Order order) async {
    final result = await _restClient.post('/order/', {
      'userId': order.userId,
      'cpf': order.cpf,
      'address': order.address,
      'items': order.items
          .map((shoppingCard) => {
                'quantity': shoppingCard.quantity,
                'productId': shoppingCard.product.id,
              })
          .toList()
    });

    if (result.hasError && result.statusCode != null) {
      log(
        'Erro ao realizar pedido ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current,
      );
      throw RestClientException('Erro ao realizar pedido');
    }

    //Future.delayed(Duration(seconds: 3));

    return OrderPix.fromMap(result.body);
  }
}
