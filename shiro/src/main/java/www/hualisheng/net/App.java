package www.hualisheng.net;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");
//        SecurityManager securityManager = SecurityUtils.getSecurityManager();
        Factory<SecurityManager> factory= new IniSecurityManagerFactory("classpath:shiro.ini");
        SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();

        Session session = subject.getSession();
        session.setAttribute("someKey", "aValue");

        if (!subject.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken("lonestarr", "vespa");
            token.setRememberMe(true);

            try {
                subject.login(token);
            } catch (UnknownAccountException uae) {
                //username wasn't in the system, show them an error message?
                System.err.println(uae.getMessage());
            } catch (IncorrectCredentialsException ice) {
                //password didn't match, try again?
            } catch (LockedAccountException lae) {
                //account for that username is locked - can't login.  Show them a message?
                System.err.println(lae.getMessage());
            } catch (AuthenticationException ae) {
                //unexpected condition - error?
                System.err.println(ae.getMessage());
            }
        }
    }
}
