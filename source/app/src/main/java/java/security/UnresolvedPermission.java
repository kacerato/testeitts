package java.security;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/UnresolvedPermission.class
 */
public final class UnresolvedPermission extends Permission implements Serializable {
    public UnresolvedPermission(String type, String name, String actions, java.security.cert.Certificate[] certs) {
        super((String) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean implies(Permission p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getActions() {
        throw new RuntimeException("Stub!");
    }

    public String getUnresolvedType() {
        throw new RuntimeException("Stub!");
    }

    public String getUnresolvedName() {
        throw new RuntimeException("Stub!");
    }

    public String getUnresolvedActions() {
        throw new RuntimeException("Stub!");
    }

    public java.security.cert.Certificate[] getUnresolvedCerts() {
        throw new RuntimeException("Stub!");
    }
}
