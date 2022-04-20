import 'package:hive/hive.dart';
import 'package:pertemuan7_tugas/models/keranjang.dart';

class HiveBoxes {
  static Box<Item> getItems() =>
      Hive.box<Item>('items');
}
