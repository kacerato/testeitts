package java.security.spec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/spec/EncodedKeySpec.class
 */
public abstract class EncodedKeySpec implements KeySpec {
    public abstract String getFormat();

    public EncodedKeySpec(byte[] encodedKey) {
        throw new RuntimeException("Stub!");
    }

    public byte[] getEncoded() {
        throw new RuntimeException("Stub!");
    }
}
