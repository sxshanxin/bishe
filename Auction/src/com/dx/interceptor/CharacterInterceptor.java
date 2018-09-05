package com.dx.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class CharacterInterceptor implements HandlerInterceptor{

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	/*	//鑾峰彇璇锋眰鐨剈rl  
        String url=request.getRequestURI();  
        //鍒ゆ柇url鏄惁鏄叕寮�湴鍧�瀹為檯浣跨敤鏃跺皢鍏紑鍦板潃閰嶇疆鍒伴厤缃枃浠朵腑)  
          
        //鍒ゆ柇session  
        HttpSession session=request.getSession();  
        //浠巗ession涓彇鍑虹敤鎴蜂唤淇℃伅  
        String uname=(String)session.getAttribute("uname");  
          //System.out.println(uname);
        if(uname!=null){  
            //韬唤瀛樺湪锛屾斁琛� 
            return true;  
        }else{
        	if(url.indexOf("dologin.do")>=0){  
                //濡傛灉瑕佽繘琛岀櫥褰曟彁浜わ紝鏀捐  
                return true;  
            }
        	if(url.indexOf(".jsp")>=0){
        		request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
          
        //鎵ц杩欓噷琛ㄧず鐢ㄦ埛韬唤闇�楠岃瘉锛岃烦杞埌鐧诲綍鐣岄潰  
        request.getRequestDispatcher("/login.jsp").forward(request, response);  
          
        //return false琛ㄧず鎷︽埅锛屼笉鍚戜笅鎵ц  
        //return true琛ㄧず鏀捐          
        return false;  */
		return true;
	}
  
}
