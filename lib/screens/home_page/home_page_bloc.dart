import 'package:rxdart/rxdart.dart';

import '../home_page_restaurant_modelstest.dart';

//[]  -> [5] -> [6]
class HomePageBloc {
  BehaviorSubject<List<RestaurantAll>> restaurants =
      BehaviorSubject<List<RestaurantAll>>.seeded([]);
  addNewRestaurantTest() {
    List<RestaurantAll> currentData = restaurants.value; // current value [5]
    currentData.add(
      RestaurantAll(
        id: 1,
        imageURLFile: 'assets/pizza.jpg',
        name: 'HighLand',
      ),
    ); // add new value [6]
    restaurants.sink.add(currentData);
  }

  loadRestaurantData() {
    // use to change the restaurant info.
    restaurants.sink.add(
      [
        RestaurantAll(
          id: 1,
          imageURLFile: 'assets/pizza.jpg',
          name: 'HighLand',
        ),
        RestaurantAll(
          id: 2,
          imageURLFile: 'assets/food.jpg',
          name: 'Coffe House',
        ),
        RestaurantAll(
          id: 3,
          imageURLFile: 'assets/logo.png',
          name: 'Ong Tho',
        ),
        RestaurantAll(
          id: 4,
          imageURLFile: 'assets/pizza.jpg',
          name: 'dung test',
        ),
        RestaurantAll(
          id: 5,
          imageURLFile: 'assets/pizza.jpg',
          name: 'dungtest 2',
        ),
      ],
    );
  }
}

//final globalBloc = HomePageBloc();// multiple screen
