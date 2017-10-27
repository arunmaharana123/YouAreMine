package org.arun.spring.session_mgmt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("PRE HANDLER");
		return true;
	}
	// override postHandle() and afterCompletion()

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		if (UserSession.session != null) {
			UserSession.session.setAttribute("SESSION", "TRUE");
			UserSession.session.setAttribute("USERNAME", "ARUN MAHARANA");
			UserSession.session.setAttribute("USERROLE", "ADMIN");
		}

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("afterCompletion");

	}
}
