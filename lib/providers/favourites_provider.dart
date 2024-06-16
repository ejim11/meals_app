import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:meals_app/model/meal.dart";

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  // setting the initial state data
  FavouriteMealsNotifier() : super([]);

  // functions to manage the state
  bool toggleMealFavouriteStatus(Meal meal) {
    // check if the meal is a favourite
    final isFavourite = state.contains(meal);

    if (isFavourite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favouriteMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>(
        (ref) => FavouriteMealsNotifier());
