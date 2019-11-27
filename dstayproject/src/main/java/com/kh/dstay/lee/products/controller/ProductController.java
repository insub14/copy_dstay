package com.kh.dstay.lee.products.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.common.ProductPagination;
import com.kh.dstay.lee.products.model.service.ProductService;
import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;

@Controller
public class ProductController {

	@Autowired
	private ProductService pService;

	// 상품 리스트로 이동
	@RequestMapping("product.do")
	public String productPage(HttpSession session) {

		// 카테고리 가져오기
		ArrayList<ProductCategory> pc = pService.cateSelect(); // 카테고리 객체
			
		session.setAttribute("pc", pc);
		
		
		
		return "6_lee/products";
	}

	// 카테고리 별 상품 가져오기
	@RequestMapping("productCotegory.do")
	public ModelAndView productCategory(HttpServletRequest request, ModelAndView mv, 
									    @RequestParam(value="currentPage",defaultValue="1")int currentPage){
		int caNo = 0;
		
		caNo = Integer.parseInt(request.getParameter("pcno").trim()); // 카테고리 번호
		
		
		int cateListCount = pService.getCateListCount(caNo); // 해당 카테고리의 상품 총 갯수
		
		PdPageInfo pp = ProductPagination.getProductPageInfo(currentPage, cateListCount); // 상품 목록 페이징 처리
		
		ArrayList<Product> pd = pService.selectCategory(pp,caNo); // 해당 번호 카테고리의 상품 가져오기(페이징처리 포함) 
		
		
		mv.addObject("pd",pd).addObject("pp",pp).addObject("caNo",caNo).setViewName("6_lee/productsCategory");
			
		
		return mv;
	}
	
	// 상품 디테일
	@RequestMapping("productDetail.do")
	public ModelAndView productDetail(HttpServletRequest request, ModelAndView mv, HttpSession session,
			 						@RequestParam(value="currentPage",defaultValue="1")int currentPage) {
		
		int pdNo = 0;	// 상품번호
		
		pdNo = Integer.parseInt(request.getParameter("pdno"));
		
		Product pd = pService.selectProduct(pdNo); // 상품 객체 가져오기
		
		int ProductInquery  = pService.getProductInqueryList(pdNo); // 해당상품의 문의사항 총 갯수 가져오기
		
		PdPageInfo pipg = ProductPagination.getProductInqueryPageInfo(currentPage, ProductInquery); // 문의 목록
		
		ArrayList<ProductInquery> pi = pService.selectProductInquery(pipg,pdNo);
		
		
		mv.addObject("pd",pd).addObject("pq",pi).addObject("pipg",pipg).setViewName("6_lee/productDetail");
		
		return mv;
	}
	
	
	

}