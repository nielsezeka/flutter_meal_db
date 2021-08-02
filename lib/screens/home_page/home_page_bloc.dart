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
      ],
    );
  }

  BehaviorSubject<List<RestaurantAll>> populars =
      BehaviorSubject<List<RestaurantAll>>.seeded([]);
  addPoplulardata() {
    List<RestaurantAll> currentPopular = populars.value;
    currentPopular.add(
      RestaurantAll(
        id: 1,
        imageURLFile: 'assets/pizza.jpg',
        name: 'HighLand',
      ),
    );
    populars.sink.add(currentPopular);
  }

  loadPopularData() {
    populars.sink.add([
      RestaurantAll(
        id: 4,
        imageURLFile: 'assets/pizza.jpg',
        name: 'HighLand',
      ),
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
    ]);
  }
}

//final globalBloc = HomePageBloc();// multiple screen
