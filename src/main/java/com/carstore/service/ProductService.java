package com.carstore.service;

import com.carstore.entity.Product;
import com.carstore.entity.ProductCategory;

import java.util.List;

public interface ProductService {

	Product findById(String id) throws  Exception;

	int save(Product product) throws  Exception;


	/**
	 * 查询今日特价
	 * @return
	 * @throws Exception
	 */
	List<Product> getProducts2()
			throws Exception;

	List<Product> getProducts()
			throws Exception;

	int update(Product product)throws  Exception;

	int delete(String id)throws  Exception;

	List<Product> getProductsByCategory(String categoryId)throws  Exception;

	ProductCategory findCategoryById(String id)throws  Exception;

	int deleteCategory(String id)throws  Exception;

	List<ProductCategory> getProductCategories(String parentId)throws  Exception;

	int saveCategory(ProductCategory productCategory)throws  Exception;

	int updateCategory(ProductCategory productCategory, String type)throws  Exception;

	List<ProductCategory> getRootCategories()throws  Exception;

	int updateCategoryName(ProductCategory productCategory)throws  Exception;

	long getProductRowCount(String categoryId)throws  Exception;

	Long getNewProductId()throws  Exception;

}
