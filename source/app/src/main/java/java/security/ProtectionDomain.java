package java.security;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/ProtectionDomain.class
 */
public class ProtectionDomain {
    public ProtectionDomain(CodeSource codesource, PermissionCollection permissions) {
        throw new RuntimeException("Stub!");
    }

    public ProtectionDomain(CodeSource codesource, PermissionCollection permissions, ClassLoader classloader, Principal[] principals) {
        throw new RuntimeException("Stub!");
    }

    public final CodeSource getCodeSource() {
        throw new RuntimeException("Stub!");
    }

    public final ClassLoader getClassLoader() {
        throw new RuntimeException("Stub!");
    }

    public final Principal[] getPrincipals() {
        throw new RuntimeException("Stub!");
    }

    public final PermissionCollection getPermissions() {
        throw new RuntimeException("Stub!");
    }

    public boolean implies(Permission permission) {
        throw new RuntimeException("Stub!");
    }
}
