import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:speaking_fingers/features/favourite/logic/videoResponse.dart';


class FavoriteController extends GetxController {
  final _favorites = <Videos>[].obs;
  final storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFavorites();
  }

  void loadFavorites() {
    List<dynamic>? storedFavorites = storage.read<List>('favorites');
    if (storedFavorites != null) {
      _favorites.value = storedFavorites.map((e) => Videos.fromJson(e)).toList();
    }
  }

  void saveFavorites() {
    storage.write('favorites', _favorites.map((e) => e.toJson()).toList());
  }

  List<Videos> get favorites => _favorites;

  void addFavorite(Videos video) {
    _favorites.add(video);
    saveFavorites();
  }

  void removeFavorite(Videos video) {
    _favorites.remove(video);
    saveFavorites();
  }

  bool isFavorite(Videos video) {
    return _favorites.contains(video);
  }
}
