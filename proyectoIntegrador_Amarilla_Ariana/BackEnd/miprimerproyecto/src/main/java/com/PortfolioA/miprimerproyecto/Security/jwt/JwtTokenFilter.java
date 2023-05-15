
package com.PortfolioA.miprimerproyecto.Security.jwt;

import com.PortfolioA.miprimerproyecto.Security.Service.UserDetailsImpl;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.filter.OncePerRequestFilter;


public class JwtTokenFilter extends OncePerRequestFilter implements Filter {
    private final static Logger logger = LoggerFactory.getLogger(JwtProvider.class);
    
    @Autowired
    JwtProvider jwtProvider;
    @Autowired
    UserDetailsImpl  userDetailsServiceImpl;

    private String getToken(jakarta.servlet.http.HttpServletRequest request) {
        String header = request.getHeader("Autorization");
        if(header != null && header.startsWith("Bearer"))
            return header.replace("Bearer", "");
        return null;
    }

    @Override
    protected void doFilterInternal(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response, jakarta.servlet.FilterChain filterChain) throws jakarta.servlet.ServletException, IOException {
        try{
            String token = getToken(request);
            if( token != null && jwtProvider.validateToken(token)){
                String nombreUsuario = jwtProvider.getNombreUsuarioFromToken(token) ;
                UserDetails userDetails = userDetailsServiceImpl.loadUserByUsername(nombreUsuario);
                UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(userDetails,null, userDetails.getAuthorities());
                SecurityContextHolder.getContext().setAuthentication(auth);
            }
        }
        catch(Exception e){
            logger.error("Fallo el metodo");
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig fc) throws ServletException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
