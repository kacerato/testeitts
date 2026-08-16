package javax.crypto.spec;

import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/spec/OAEPParameterSpec.class
 */
public class OAEPParameterSpec implements AlgorithmParameterSpec {
    public static final OAEPParameterSpec DEFAULT = null;

    public OAEPParameterSpec(String mdName, String mgfName, AlgorithmParameterSpec mgfSpec, PSource pSrc) {
        throw new RuntimeException("Stub!");
    }

    public String getDigestAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public String getMGFAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public AlgorithmParameterSpec getMGFParameters() {
        throw new RuntimeException("Stub!");
    }

    public PSource getPSource() {
        throw new RuntimeException("Stub!");
    }
}
