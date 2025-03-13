import 'package:get/get.dart';
import '../models/product_model.dart';
import '../services/api_service.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var isLoading = true.obs;

  final ApiService _apiService = ApiService();

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var fetchedProducts = await _apiService.fetchProducts();
      products.assignAll(fetchedProducts);
    } catch (e) {
      Get.snackbar("Error", "Failed to fetch products: $e");
    } finally {
      isLoading(false);
    }
  }
}
