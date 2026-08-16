package java.security.spec;

import java.math.BigInteger;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/spec/ECParameterSpec.class
 */
public class ECParameterSpec implements AlgorithmParameterSpec {
    public ECParameterSpec(EllipticCurve curve, ECPoint g10, BigInteger n10, int h10) {
        throw new RuntimeException("Stub!");
    }

    public EllipticCurve getCurve() {
        throw new RuntimeException("Stub!");
    }

    public ECPoint getGenerator() {
        throw new RuntimeException("Stub!");
    }

    public BigInteger getOrder() {
        throw new RuntimeException("Stub!");
    }

    public int getCofactor() {
        throw new RuntimeException("Stub!");
    }
}
