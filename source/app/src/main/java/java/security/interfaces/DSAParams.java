package java.security.interfaces;

import java.math.BigInteger;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/interfaces/DSAParams.class
 */
public interface DSAParams {
    BigInteger getP();

    BigInteger getQ();

    BigInteger getG();
}
