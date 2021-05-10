import 'package:news/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> categories = [];
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel.imageUrl="https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80";
  categoryModel.categoryName="Business";
  categories.add(categoryModel);
  categoryModel = new CategoryModel();

  //2
  categoryModel.imageUrl="https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60";
  categoryModel.categoryName="Entertainment";
  categories.add(categoryModel);
  categoryModel = new CategoryModel();

  //3
  categoryModel.imageUrl="https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2VuZXJhbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60";
  categoryModel.categoryName="General";
  categories.add(categoryModel);
  categoryModel = new CategoryModel();

  //4
  categoryModel.imageUrl="https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80";
  categoryModel.categoryName="Health";
  categories.add(categoryModel);
  categoryModel = new CategoryModel();

  //5
  categoryModel.imageUrl="https://images.unsplash.com/photo-1518770660439-4636190af475?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60";
  categoryModel.categoryName="Technology";
  categories.add(categoryModel);

  return categories;
}