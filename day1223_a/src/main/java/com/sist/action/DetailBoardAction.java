package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.BoardDAO;
import com.sist.vo.BoardVO;

public class DetailBoardAction implements SistAction {
	public BoardDAO dao;
	
	public DetailBoardAction() {
		dao = new BoardDAO();
	}
	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		dao.updateHit(no);
		BoardVO b = dao.getBoard(no);
		request.setAttribute("b", b);
		return "detailBoard.jsp";
	}

}
