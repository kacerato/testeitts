package java.security;

import java.io.Serializable;
import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/PermissionCollection.class
 */
public abstract class PermissionCollection implements Serializable {
    public abstract void add(Permission permission);

    public abstract boolean implies(Permission permission);

    public abstract Enumeration<Permission> elements();

    public PermissionCollection() {
        throw new RuntimeException("Stub!");
    }

    public void setReadOnly() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReadOnly() {
        throw new RuntimeException("Stub!");
    }
}
