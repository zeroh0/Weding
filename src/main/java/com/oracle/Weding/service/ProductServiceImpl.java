package com.oracle.Weding.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.Weding.dao.ProductDao;
import com.oracle.Weding.dto.Cat;
import com.oracle.Weding.dto.Orders;
import com.oracle.Weding.dto.Product;

import lombok.extern.java.Log;

@Service
@Log
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao	pd;
	
	/**
	 * 펀딩 예정 목록 갯수
	 */
	@Override
	public int beforeFundListTotal() {
		int totCnt = pd.beforeFundListTotal();
		log.info("beforeFundListTotal totCnt -> " + totCnt);
		return totCnt;
	}
	
	/**
	 * 펀딩중 목록 갯수
	 */
	@Override
	public int fundingListTotal(Product product) {
		int totCnt = pd.fundingListTotal(product);
		log.info("fundingListTotal totCnt -> " + totCnt);
		return totCnt;
	}
	
	/**
	 * 펀딩 내역 갯수
	 */
	@Override
	public int payListTotal() {
		int totCnt = pd.payListTotal();
		log.info("payListTotal totCnt -> " + totCnt);
		return totCnt;
	}

	/**
	 * 상품 목록 조회 서비스
	 */
	@Override
	public List<Product> productList(Product product) {
		List<Product> productList = pd.productList(product);
		return productList;
	}

	/**
	 * 주문(펀딩)목록 조회 서비스
	 */
	@Override
	public List<Orders> payList(Orders orders) {
		List<Orders> payList = pd.payList(orders);
		return payList;
	}

	/**
	 * 펀딩 취소 서비스
	 */
	@Override
	public int payDelete(Orders orders) {
		int result = pd.payDelete(orders);
		return result;
	}

	
	/**
	 * 메인 랜덤상품 조회
	 */
	@Override
	public List<Product> getRandomProduct() {
		List<Product> randomProduct = pd.getRandomProduct();
		return randomProduct;
	}

	/**
	 * 메인 인기상품 조회
	 */
	@Override
	public List<Product> getPopularProduct() {
		List<Product> popularProduct = pd.getPopularProduct();
		return popularProduct;
	}

	/**
	 * 메인 오늘 당일 상품 조회
	 */
	@Override
	public List<Product> getOpenProduct() {
		List<Product> openProduct = pd.getOpenProduct();
		return openProduct;
	}

	/**
	 * 메인 리뷰가 있는 상품 조회
	 */
	@Override
	public List<Product> getReviewProduct() {
		List<Product> reviewProduct = pd.getReviewProduct();
		return reviewProduct;
	}

	
	//상품 카테고리 이름 가져오기
	@Override
	public List<Cat> arrayCategory() {
		System.out.println("ProductServiceImpl arrayCategory Start…");
		List<Cat> catList = pd.arrayCategory();
		return catList;
	}

	/**
	 * 주문
	 */
	@Override
	public int orders(Orders orders) {
		int result = pd.orders(orders);
		return result;
	}

	/**
	 * 주문: 현재달성금액 증가
	 */
	@Override
	public int sumCurPrice(Orders orders) {
		int result = pd.sumCurPrice(orders);
		return result;
	}

	/**
	 * 주문: 현재달성금액 감소
	 */
	@Override
	public int subCurPrice(Orders orders) {
		int result = pd.subCurPrice(orders);
		return result;
	}
	
	
	// 마이페이지 - 찜목록 보기
	@Override
	public List<Product> dibsList(Product product) {
		List<Product> dibsList = null;
		System.out.println("ProductServiceImpl listProduct Start...");
		dibsList = pd.dibsList(product);
		System.out.println("ProductServiceImpl listProduct productList.size() ->" + dibsList.size());
		return dibsList;
	}
	
	// product total
	@Override
	public int total() {
		System.out.println("ProductServiceImpl total Start...");
		int totCnt = pd.total();
		System.out.println("ProductServiceImpl total totCnt -> " + totCnt);
		return totCnt;
	}
	
	// 관리자페이지 - 전체 상품관리List 보기
	@Override
	public List<Product> allproductListAll(Product product) {
		List<Product> allproductListAll = null;
		System.out.println("ProductServiceImpl allproductListAll Start...");
		allproductListAll = pd.allproductListAll(product);
		System.out.println("ProductServiceImpl allproductListAll allProductList.size() ->" + allproductListAll.size());
		return allproductListAll;
	}
	
	// 관리자페이지 - 전체상품중 해당상품 UpdateForm (김태근)
	@Override
	public Product allProductUpdateForm(Product product) {
		Product allProductUpdateForm = null;
		System.out.println("ProductServiceImpl allProductUpdateForm Start...");
		allProductUpdateForm = pd.allProductUpdateForm(product);
		System.out.println("ProductServiceImpl allProductUpdateForm.size() -> " + allProductUpdateForm);
		return allProductUpdateForm;
	}
	
	// 관리자페이지 - 전체상품중 해당상품 Update (김태근)
	@Override
	public int allProductUpdate(Product product) {
		int allProductUpdate = 0;
		System.out.println("ProductServiceImpl allProductUpdate Start...");
		allProductUpdate = pd.allProductUpdate(product);
		System.out.println("ProductServiceImpl allProductUpdate count -> " + allProductUpdate);
		return allProductUpdate;
	}
	
	// 관리자페이지 - 전체상품중 해당상품 선택해서 Delete (김태근)
	@Override
	public int delete(String p_num) {
		int result = 0;
		System.out.println("ProductServiceImpl delete Start...");
		result = pd.delete(p_num);
		return result;
	}	
	
}
