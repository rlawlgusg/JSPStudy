package com.sist.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.dao.GoodsDAO;
import com.sist.vo.GoodsVO;

public class DeleteGoodsAction implements SistAction {
	public GoodsDAO dao;
	public DeleteGoodsAction() {
		dao = new GoodsDAO();
	}
	
	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String path = request.getRealPath("upload");
			
		int no = Integer.parseInt(request.getParameter("no"));
		String oldFname = dao.getGoods(no).getFname();

		
		
		int re = dao.deleteGoods(no);
		String viewPage = "";
		if(re == 1) {
				viewPage = "deleteGoodsOK.jsp";
				File file = new File(path+"/"+oldFname);
				file.delete();
		}else {
			viewPage = "error.jsp";
			request.setAttribute("msg", "상품삭제에 실패하였습니다");
		}
		return viewPage;
	}

	
}