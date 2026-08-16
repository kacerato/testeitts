package java.security;

import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/IdentityScope.class
 */
@Deprecated
public abstract class IdentityScope extends Identity {
    public abstract int size();

    public abstract Identity getIdentity(String str);

    public abstract Identity getIdentity(PublicKey publicKey);

    public abstract void addIdentity(Identity identity) throws KeyManagementException;

    public abstract void removeIdentity(Identity identity) throws KeyManagementException;

    public abstract Enumeration<Identity> identities();

    protected IdentityScope() {
        throw new RuntimeException("Stub!");
    }

    public IdentityScope(String name) {
        throw new RuntimeException("Stub!");
    }

    public IdentityScope(String name, IdentityScope scope) throws KeyManagementException {
        throw new RuntimeException("Stub!");
    }

    public static IdentityScope getSystemScope() {
        throw new RuntimeException("Stub!");
    }

    protected static void setSystemScope(IdentityScope scope) {
        throw new RuntimeException("Stub!");
    }

    public Identity getIdentity(Principal principal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
