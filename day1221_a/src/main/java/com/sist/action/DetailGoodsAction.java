package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.sist.dao.GoodsDAO;
import com.sist.vo.GoodsVO;

public class DetailGoodsAction implements SistAction {
	public GoodsDAO dao;
	
	public DetailGoodsAction() {
		dao = new GoodsDAO();
	}
	
	@Override
	public String proRequest(HttpServletRequest request, HttpServletRequest response)
			throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		GoodsVO g = dao.getGoods(no);
		request.setAttribute("g", g);
		
		return "detailGoods.jsp";
	}

}
