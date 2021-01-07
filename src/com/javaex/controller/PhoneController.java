package com.javaex.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.PhoneDao;
import com.javaex.vo.PhoneVo;



@WebServlet("/pbc")

public class PhoneController extends HttpServlet {
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//전달 받은 각종 value들 변수로 선언
		
		String action = request.getParameter("action");
		//int id = Integer.parseInt(request.getParameter("id"));
		//String name = request.getParameter("name");
		//String hp = request.getParameter("hp");
		//String company = request.getParameter("company");
		
			PhoneDao pd = new PhoneDao();
			
		//<리스트 출력>
		//변수를 메서드 안에 넣기 꼭 기억합시다!!!!!!!!!!!!
		if("list".equals(action)) {
			
			List<PhoneVo> list = pd.getPhList();
		//forward시킬 리소스 setting
		request.setAttribute("pList", list);
		RequestDispatcher rd = request.getRequestDispatcher("./WEB-INF/list.jsp");
		
		//forwarding-->
		rd.forward(request, response);
		
		}
		
		//<수정 폼으로 수발신>
		else if("writeForm".equals(action)) {
			
			RequestDispatcher rd = request.getRequestDispatcher("./WEB-INF/writeForm.jsp");	
			rd.forward(request, response);
			
		}
		
		//<등록>
		
		else if("insert".equals(action)) {
			
			String name = request.getParameter("name");
			String hp = request.getParameter("hp");
			String company = request.getParameter("company");
			
			PhoneVo pv = new PhoneVo(name, hp, company);
			
			pd.insert(pv);
			
			response.sendRedirect("/phonebook2/pbc?action=list");
		}
		
		//<삭제>
		else if("delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));		
			pd.delete(id);
			
			response.sendRedirect("./pbc?action=list");
		}

		//<수정>
		else if("updateForm".equals(action)) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			RequestDispatcher rd = request.getRequestDispatcher("./WEB-INF/updateForm.jsp");
			
			PhoneVo pv = pd.getPerson(id);
			
			request.setAttribute("targetPerson",pv);
			
			rd.forward(request, response);
		}
		
		else if("update".equals(action)) {
			String name = request.getParameter("name");
			String hp = request.getParameter("hp");
			String company = request.getParameter("company");
			int id = Integer.parseInt(request.getParameter("id"));
			
			PhoneVo pv = new PhoneVo(id,name, hp, company);
			
			pd.update(pv);
			
			response.sendRedirect("./pbc?action=list");
			
		}
		
			
			
		}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		

		
		
		
		
		
		
		
		
		
		
		
	}

}
