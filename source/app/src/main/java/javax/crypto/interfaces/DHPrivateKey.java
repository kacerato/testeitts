package javax.crypto.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/interfaces/DHPrivateKey.class
 */
public interface DHPrivateKey extends DHKey, PrivateKey {
    public static final long serialVersionUID = 2211791113380396553L;

    BigInteger getX();
}
