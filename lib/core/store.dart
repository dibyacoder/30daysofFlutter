import 'package:myfirst_project/models/cart.dart';
import 'package:myfirst_project/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late catalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = catalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
