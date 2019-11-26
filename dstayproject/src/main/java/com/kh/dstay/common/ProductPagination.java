package com.kh.dstay.common;

import com.kh.dstay.lee.products.model.vo.PdPageInfo;

public class ProductPagination {

	// 상품 게시판 페이징 처리
	public static PdPageInfo getPageInfo(int currentPage, int listCount) {
		
		int pageLimit = 5;
		int boardLimit = 6;
		
		int maxPage = (int)(Math.ceil((double)listCount / boardLimit));
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PdPageInfo pi = new PdPageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		return pi;
		
		
	}
	
	
	
	
	
	
}