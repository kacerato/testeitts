package java.security.cert;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CRL.class
 */
public abstract class CRL {
    public abstract String toString();

    public abstract boolean isRevoked(Certificate certificate);

    public CRL(String type) {
        throw new RuntimeException("Stub!");
    }

    public final String getType() {
        throw new RuntimeException("Stub!");
    }
}
