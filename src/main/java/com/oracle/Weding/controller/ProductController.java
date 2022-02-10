package com.oracle.Weding.controller;

import java.text.SimpleDateFormat; 
import java.util.Date;
import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.Weding.dto.Board;
import com.oracle.Weding.dto.Cat;
import com.oracle.Weding.dto.Orders;
import com.oracle.Weding.dto.Product;
import com.oracle.Weding.service.BoardService;
import com.oracle.Weding.service.Paging;
import com.oracle.Weding.service.ProductService;

import lombok.extern.java.Log;

@Controller
@Log
public class ProductController {
	
	@Autowired private ProductService ps;
	@Autowired private BoardService bs;
	
	/**
	 * 메인페이지 이동
	 * 작성자 - 장동호
	 * 목적 - 메인페이지 이동 & 랜덤, 인기, 당일 오픈, 리뷰가 있는 상품 조회
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "main")
	public String main(Model model) {
		List<Product> randomProduct = ps.getRandomProduct();
		List<Product> popularProduct = ps.getPopularProduct();
		List<Product> openProduct = ps.getOpenProduct();
		List<Product> reviewProduct = ps.getReviewProduct();
		model.addAttribute("randomProduct" ,randomProduct);
		model.addAttribute("popularProduct" ,popularProduct);
		model.addAttribute("openProduct" ,openProduct);
		model.addAttribute("reviewProduct" ,reviewProduct);
		
		return "main";
	}
	

	/**
	 * 펀딩예정 상품 목록
	 * 작성자 - 장동호
	 * 목적 - 펀딩예정인 상품들을 조회
	 * 
	 * @param product
	 * @param currentPage
	 * @param main_cat
	 * @param mini_cat
	 * @param p_condition
	 * @param model
	 * @return
	 */
	@GetMapping(value = "/beforeFundList")
	public String beforeFundList(Product product,
								 @RequestParam(value = "currentPage", defaultValue = "1" ) String currentPage,
								 @RequestParam(value = "main_cat", defaultValue = "200") String main_cat, // default : main_cat = 200 
								 @RequestParam(value = "mini_cat", defaultValue = "999") String mini_cat, // default : main_cat = 999 
								 @RequestParam(value = "p_condition", defaultValue = "1") String p_condition, // default : p_condition = 1
								 Model model) {
		int total = ps.beforeFundListTotal();
		Paging pg = new Paging(total, currentPage);
		List<Product> productList = null;
		product.setMain_cat(main_cat);
		product.setMini_cat(mini_cat);
		product.setP_condition(p_condition);
		product.setStart(pg.getStart());
		product.setEnd(pg.getEnd());
		productList = ps.productList(product);
		model.addAttribute("productList", productList);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		
		return "/product/beforeFundList";
	}
	
	
	/**
	 * 펀딩중 상품 목록
	 * 작성자 - 장동호, 조소현
	 * 목적 - 펀딩중인 상품들을 카테고리별로 조회
	 * 
	 * @param product
	 * @param currentPage
	 * @param main_cat
	 * @param mini_cat
	 * @param p_condition
	 * @param model
	 * @return
	 */
	@GetMapping(value = "/fundingList")
	public String fundingList(Product product,
							  @RequestParam(value = "currentPage", defaultValue = "1" ) String currentPage,
			 				  @RequestParam(value = "main_cat", defaultValue = "200") String main_cat, 
			 				  @RequestParam(value = "mini_cat", defaultValue = "101") String mini_cat, 
			 				  @RequestParam(value = "p_condition", defaultValue = "2") String p_condition, 
			 				  Model model) {
		System.out.println("ProductController fundingList Start…");
		//펀딩 중 상품목록에서 카테고리 이름 정렬 가져오기
		List<Cat> catList = ps.arrayCategory();
		model.addAttribute("catList", catList);
		product.setMain_cat(main_cat);
		product.setMini_cat(mini_cat);
		product.setP_condition(p_condition);
		int total = ps.fundingListTotal(product);
		Paging pg = new Paging(total, currentPage);
		product.setStart(pg.getStart());
		product.setEnd(pg.getEnd());
		List<Product> productList = null;
		productList = ps.productList(product);
		log.info(productList == null? "productlist is null":"productlist is not null");
		model.addAttribute("productList", productList);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		
		return "/product/fundingList";
	}
	
	
	/**
	 * 펀딩종료 목록
	 * 작성자 - 장동호, 조소현
	 * 목적 - 펀딩종료된 상품들을 카테고리별로 조회
	 * 
	 * @param product
	 * @param currentPage
	 * @param main_cat
	 * @param mini_cat
	 * @param p_condition
	 * @param model
	 * @return
	 */
	@GetMapping(value = "/fundingEndList")
	public String fundingEndList(Product product,
							     @RequestParam(value = "currentPage", defaultValue = "1" ) String currentPage,
			 				     @RequestParam(value = "main_cat", defaultValue = "200") String main_cat, // default : main_cat = 200 
				 				 @RequestParam(value = "mini_cat", defaultValue = "101") String mini_cat, // default : main_cat = 999 
				 				 @RequestParam(value = "p_condition", defaultValue = "3") String p_condition, // default : p_condition = 2
				 				 Model model) {
		//펀딩 중 상품목록에서 카테고리 이름 정렬 가져오기
		List<Cat> catList = ps.arrayCategory();
		model.addAttribute("catList", catList);
		product.setMain_cat(main_cat);
		product.setMini_cat(mini_cat);
		product.setP_condition(p_condition);
		int total = ps.fundingListTotal(product);
		Paging pg = new Paging(total, currentPage);
		product.setStart(pg.getStart());
		product.setEnd(pg.getEnd());
		List<Product> productList = null;
		productList = ps.productList(product);
		log.info(productList == null? "productlist is null":"productlist is not null");
		model.addAttribute("productList", productList);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		
		return "/product/fundingEndList";
	}
	
	
	/**
	 * 펀딩내역 조회
	 * 작성자 - 장동호
	 * 목적 - 현재 세션에 접속 유저의 펀딩내역 조회
	 * 
	 * @param orders
	 * @param product
	 * @param currentPage
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "payList")
	public String payList(Orders orders,
						  Product product,
						  @RequestParam(value = "currentPage", defaultValue = "1" ) String currentPage, 
						  Model model) {
		Date date = new Date();
		SimpleDateFormat today = new SimpleDateFormat("yy/MM/dd");
		
		int total = ps.payListTotal();
		Paging pg = new Paging(total, currentPage);
		orders.setStart(pg.getStart());
		orders.setEnd(pg.getEnd());
		List<Orders> payList = ps.payList(orders);		
		model.addAttribute("payList", payList);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		
		return "/mypage/payList";
	}
	
	/**
	 * 펀딩내역 취소
	 * 작성자 - 장동호
	 * 목적 - 현재 세션에 접속한 유저의 펀딩을 취소
	 * 
	 * @param orders
	 * @return
	 */
	@PostMapping(value = "payDelete")
	public String payDelete(Orders orders) {
		log.info("payDelete orders.getId() : " + orders.getId());
		log.info("payDelete orders.getP_num() : " + orders.getP_num());
		log.info("payDelete orders.getO_num() : " + orders.getO_num());
		int result = ps.payDelete(orders);
		log.info("payDelete result: " + result);
		if(result > 0) {
			ps.subCurPrice(orders);
		}
		
		return "redirect:payList";
	}
	
	/**
	 * 펀딩상품 상세보기
	 * 작성자 - 장동호
	 * 목적 - 선택한 펀딩상품의 정보 조회
	 * 
	 * @param model
	 * @param board
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value = "fundingDetail")
	public String fundingDetail(Model model, Board board, String currentPage) {
		log.info("fundingDetail");
		int total = bs.reviewBoardListTotal();
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<Board> reviewBoardList = bs.reviewBoardList(board);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		model.addAttribute("reviewBoardList", reviewBoardList);
		return "/product/fundingDetail";
	}
	
	@RequestMapping(value = "beforeFundDetail") 
	public String beforeFundDetail() {
		return "/product/beforeFundDetail";
	}
	
	
	/**
     * 주문 정보 입력 폼 이동
     * 작성자 - 장동호
     * 목적 - 주문 상품의 정보를 주문 정보 입력 페이지에 가져오기
     */
    @RequestMapping(value = "orderForm")
    public String orderForm() {
    	return "/product/orderForm";
    }
    
	
	/**
	 * 결제 처리
	 * 작성자 - 장동호
	 * 목적 - 현재 세션에 접속한 유저 정보와 주문한 상품을 Orders 테이블에 insert
	 * 
	 * @param orders
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "orders")
	@ResponseBody
	public int orders(Orders orders, Model model) {
		int result = ps.orders(orders);
		if(result > 0) {
			ps.sumCurPrice(orders);
		}
		return result;
	}
	
    
    /**
     * 결제 결과 처리
     * 작성자 - 장동호
     * 목적 - 결제 성공/실패 여부 확인 & 주문한 상품의 정보 확인
     *  
     * @param orders
     * @param model
     * @return
     */
    @RequestMapping(value = "orderSuccess")
    public String orderSuccess(Orders orders, Model model) {
    	model.addAttribute("orders", orders);
    	return "/product/orderSuccess";
    }
    
    
    /**
     * 마이페이지: 찜목록 조회
     * 작성자 - 김태근
     * 
     * @param product
     * @param model
     * @return
     */
 	@RequestMapping(value = "dibsList")
 	public String dibsList(Product product, Model model) {
 		// product + 찜목록 가져옴
 		System.out.println("ProductController dibsList Start...");
 		List<Product> dibsList = ps.dibsList(product);
 		System.out.println("ProductController dibsList listProduct.size() ->" + dibsList.size());
 		model.addAttribute("dibsList", dibsList);
 		return "mypage/dibsList";
 	}
    
    /**
     * 관리자페이지 - 전체 상품관리List 조회
     * 작성자 - 김태근
     * 
     * @param product
     * @param currentPage
     * @param model
     * @return
     */
 	@GetMapping(value = "allProductList")
 	public String allProductList(Product product, String currentPage, Model model) {
 		System.out.println("ProductController allProductList Start...");
 		int total = ps.total();
 		System.out.println("ProductController total => " + total);
 		System.out.println("currentPage => " + currentPage);
 		Paging pg = new Paging(total, currentPage);
 		product.setStart(pg.getStart());
 		product.setEnd(pg.getEnd());
 		List<Product> allproductListAll = ps.allproductListAll(product);
 		System.out.println("ProductController allProductList productAll.size() ->" + allproductListAll.size());
 		model.addAttribute("allproductListAll", allproductListAll);
 		model.addAttribute("pg", pg);
 		model.addAttribute("total", total);
 		
 		return "admin/allProductList";
 	}
 	
 	
 	/**
 	 * 관리자페이지: 전체상품 UpdateForm
 	 * 작성자 - 김태근
 	 * 
 	 * @param product
 	 * @param model
 	 * @return
 	 */
 	@GetMapping(value = "allProductUpdateForm")
 	public String allProductUpdateForm(Product product, Model model) {
 		System.out.println("ProductController allProductUpdateForm Start...");
 		Product allProductUpdateForm = ps.allProductUpdateForm(product);
 		System.out.println("ProductController allProductUpdateForm -> " + allProductUpdateForm);
 		model.addAttribute("allProductUpdateForm", allProductUpdateForm);
 		return "admin/allProductUpdateForm";
 	}

 	
 	/**
 	 * 관리자페이지: 전체상품중 해당상품Update
 	 * 작성자 - 김태근
 	 * 
 	 * @param product
 	 * @param model
 	 * @return
 	 */
	@GetMapping(value ="allProductUpdate")
	public String allProductUpdate(Product product, Model model) {
		System.out.println("ProductController allProductUpdate Start...");
		int allProductUpdate = ps.allProductUpdate(product);
		System.out.println("ProductController allProductUpdate count -> " + allProductUpdate);
		model.addAttribute("allProductUpdate", allProductUpdate);
		
		return "redirect:allProductList";
	}
	
	/**
	 * 관리자페이지: 전체상품중 해당상품List에서 Ajax로 Delete
	 * 작성자 - 김태근
	 * @param product
	 * @return
	 */
	@RequestMapping("/allProductDelete")
	@ResponseBody
	public String allProductDelete(Product product) {
		System.out.println("ProductController allProductDelete Start...");
		System.out.println("ProductController allProductDelete product.getP_num() ->" + product.getP_num());
		int allProductStatus = ps.delete(product.getP_num());
		String allProductStatusStr = Integer.toString(allProductStatus);
		return allProductStatusStr;
	}
	
	/**
	 * 관리자페이지: 전체상품중 해당상품 Detail에서 Delete
	 * 작성자 - 김태근
	 * 
	 * @param p_num
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "allProductDetailDelete")
	public String allProductDetailDelete(String p_num, Model model) {
		System.out.println("ProductController allProductDetailDelete Start...");
		int allProductStatus = ps.delete(p_num);
		return "redirect:allProductList";
	}
    
}
