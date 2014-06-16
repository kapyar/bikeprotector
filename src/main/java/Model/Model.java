package Model;


import org.apache.commons.codec.digest.DigestUtils;

/**
 * Created by yaroslav on 6/16/2014.
 */
public class Model {

    public boolean doRegister(String register_name, String register_email, String register_password, String re_register_password){
        return true;
    }


    public boolean doLogIn(String mail, String pass) {
//        connect to db
//        and check the correct input data
        return true;
    }

    private String hashPass(String pass) {
        return DigestUtils.md5Hex(pass);
    }
}
