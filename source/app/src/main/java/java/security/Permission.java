package java.security;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Permission.class
 */
public abstract class Permission implements Guard, Serializable {
    public abstract boolean implies(Permission permission);

    public abstract String getActions();

    public Permission(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void checkGuard(Object object) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public final String getName() {
        throw new RuntimeException("Stub!");
    }

    public PermissionCollection newPermissionCollection() {
        throw new RuntimeException("Stub!");
    }
}
