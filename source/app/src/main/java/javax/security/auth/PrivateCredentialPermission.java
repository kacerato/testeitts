package javax.security.auth;

import java.security.Permission;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/PrivateCredentialPermission.class
 */
public final class PrivateCredentialPermission extends Permission {
    public PrivateCredentialPermission(String name, String actions) {
        super((String) null);
        throw new RuntimeException("Stub!");
    }

    public String getCredentialClass() {
        throw new RuntimeException("Stub!");
    }

    public String[][] getPrincipals() {
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
}
