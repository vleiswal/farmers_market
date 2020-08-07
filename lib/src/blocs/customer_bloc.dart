import 'package:farmers_market/src/models/market.dart';
import 'package:farmers_market/src/services/firestore_service.dart';

class CustomerBloc {
  final db = FirestoreService();

  //Getters
  Stream<List<Market>> get fetchUpcomingMarkets => db.fetchUpcomingMarkets();

  dispose() {}
}
