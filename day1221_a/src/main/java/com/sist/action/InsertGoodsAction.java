package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

public class InsertGoodsAction implements SistAction {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletRequest response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return "insertGoods.jsp";
	}

}
