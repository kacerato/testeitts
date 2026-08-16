package java.security.spec;

import java.math.BigInteger;
import java.security.interfaces.DSAParams;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/spec/DSAParameterSpec.class
 */
public class DSAParameterSpec implements AlgorithmParameterSpec, DSAParams {
    public DSAParameterSpec(BigInteger p10, BigInteger q10, BigInteger g10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public BigInteger getP() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public BigInteger getQ() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public BigInteger getG() {
        throw new RuntimeException("Stub!");
    }
}
