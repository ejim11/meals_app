import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:meals_app/data/dummy_data.dart";

// creates a provider object
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
