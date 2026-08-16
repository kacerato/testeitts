package java.security.interfaces;

import java.math.BigInteger;
import java.security.PublicKey;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/interfaces/RSAPublicKey.class
 */
public interface RSAPublicKey extends PublicKey, RSAKey {
    public static final long serialVersionUID = -8727434096241101194L;

    BigInteger getPublicExponent();
}
