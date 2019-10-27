package chapter5.filter.demo;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse; 
import javax.servlet.http.HttpServletRequest;
 
public class EncodingFilter implements Filter {
    private String ENCODING;
    
    public void init(FilterConfig config) throws ServletException {
        ENCODING = config.getInitParameter("ENCODING");
    }
    
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
	                   throws IOException, ServletException {
		
	           HttpServletRequest req = (HttpServletRequest) request; 
	            req = new EncodingWrapper(req, ENCODING); 
	        	chain.doFilter(req, response);
	}

	public void destroy() {}

}
