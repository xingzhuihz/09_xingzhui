package work.login.utils;


import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class PasswordUtils {
    public static String md5(String password,String salt){
        Md5PasswordEncoder encoder = new Md5PasswordEncoder();
        String str = encoder.encodePassword(password.toLowerCase(), salt.toLowerCase());
        return str;
    }

    public static void main(String[] args){
        String pwd = PasswordUtils.md5("1234","admin");

        String pwd1 = PasswordUtils.md5("1111", "nsh");
        String pwd2 = PasswordUtils.md5("4321", "ryh");
        System.err.println(pwd2);


    }
}
