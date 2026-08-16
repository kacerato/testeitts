package java.security;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/AccessControlContext.class
 */
public final class AccessControlContext {
    public AccessControlContext(ProtectionDomain[] context) {
        throw new RuntimeException("Stub!");
    }

    public AccessControlContext(AccessControlContext acc, DomainCombiner combiner) {
        throw new RuntimeException("Stub!");
    }

    public DomainCombiner getDomainCombiner() {
        throw new RuntimeException("Stub!");
    }

    public void checkPermission(Permission perm) throws AccessControlException {
        throw new RuntimeException("Stub!");
    }
}
