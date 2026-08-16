package Jj;

import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.Signature;
import javax.crypto.Mac;

public class f {
    public static OutputStream a(MessageDigest messageDigest) {
        return new c(messageDigest);
    }

    public static OutputStream b(Signature signature) {
        return new g(signature);
    }

    public static OutputStream c(Mac mac) {
        return new e(mac);
    }
}
