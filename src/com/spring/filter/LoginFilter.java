package com.spring.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {
	
	public LoginFilter(){	}

	public void destory(){	}

	@Override
	public void destroy() { }

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)res;
		HttpSession session=request.getSession();
			
		boolean loggedIn=session.getAttribute("userName")!=null;
		boolean	isResourceRequest=request.getRequestURI().startsWith(request.getContextPath()+"/resourses"+"/");
		String loginUrl=request.getContextPath()+"/login";
		boolean	isLoginRequest=request.getRequestURI().equals(loginUrl);
		if(loggedIn || isResourceRequest || isLoginRequest ){			
		/*prevent browser from caching restricted resource:×èÖ¹ä¯ÀÀÆ÷´Ó»º´æÖÐ¶ÁÈ¡Êý¾Ý*/
			if(!isResourceRequest){
			response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setDateHeader("Expires", 0);
			}
			
		}else{
			String returnUrl=request.getRequestURI();
			/*so just perform standard synchronous redirect*/
			response.sendRedirect(loginUrl+"?returnUrl="+returnUrl);
			return;			
		}

		chain.doFilter(request,response);		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
