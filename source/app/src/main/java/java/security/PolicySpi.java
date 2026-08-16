package java.security;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/PolicySpi.class
 */
public abstract class PolicySpi {
    protected abstract boolean engineImplies(ProtectionDomain protectionDomain, Permission permission);

    public PolicySpi() {
        throw new RuntimeException("Stub!");
    }

    protected void engineRefresh() {
        throw new RuntimeException("Stub!");
    }

    protected PermissionCollection engineGetPermissions(CodeSource codesource) {
        throw new RuntimeException("Stub!");
    }

    protected PermissionCollection engineGetPermissions(ProtectionDomain domain) {
        throw new RuntimeException("Stub!");
    }
}
