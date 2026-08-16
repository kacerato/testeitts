package java.security.interfaces;

import java.math.BigInteger;
import java.security.spec.RSAOtherPrimeInfo;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/interfaces/RSAMultiPrimePrivateCrtKey.class
 */
public interface RSAMultiPrimePrivateCrtKey extends RSAPrivateKey {
    public static final long serialVersionUID = 618058533534628008L;

    BigInteger getPublicExponent();

    BigInteger getPrimeP();

    BigInteger getPrimeQ();

    BigInteger getPrimeExponentP();

    BigInteger getPrimeExponentQ();

    BigInteger getCrtCoefficient();

    RSAOtherPrimeInfo[] getOtherPrimeInfo();
}
