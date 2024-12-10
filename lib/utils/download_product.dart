
class DownloadProduct {
// имитируем загрузку из интерента
 static  Future<List<T>> downloadProduct<T>(List<T> categoryProducts) async {
    await Future<void>.delayed(Duration(milliseconds: 500)); // Имитация задержки
    return categoryProducts; // Возвращаем входной список
  }

}