package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class BasicRequestFilter extends HttpFilter implements Filter {

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		System.out.println(((HttpServletRequest)request).getRequestURI() + "[" + ((HttpServletRequest)request).getMethod()+"]");
		
		request.setCharacterEncoding("UTF-8");
		
		chain.doFilter(request, response);
	}

	
}
