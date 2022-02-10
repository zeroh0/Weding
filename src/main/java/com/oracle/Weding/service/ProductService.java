package com.oracle.Weding.service;

import java.util.List; 

import com.oracle.Weding.dto.Cat;
import com.oracle.Weding.dto.Orders;
import com.oracle.Weding.dto.Product;

public interface ProductService {
	List<Product> productList(Product product);
	List<Orders> payList(Orders orders);
	int payDelete(Orders orders);
	List<Product> getRandomProduct();
	List<Product> getPopularProduct();
	List<Product> getOpenProduct();
	List<Product> getReviewProduct();
	int beforeFundListTotal();
	int fundingListTotal(Product product);
	int payListTotal();
	List<Cat> arrayCategory();
	int orders(Orders orders);
	int sumCurPrice(Orders orders);
	int subCurPrice(Orders orders);
	List<Product> 		dibsList(Product product);
	int 				total();
	List<Product> 		allproductListAll(Product product);
	Product 			allProductUpdateForm(Product product);
	int 				delete(String p_num);
	int 				allProductUpdate(Product product);

}
