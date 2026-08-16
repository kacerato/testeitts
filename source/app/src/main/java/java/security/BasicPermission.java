package java.security;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/BasicPermission.class
 */
public abstract class BasicPermission extends Permission implements Serializable {
    public BasicPermission(String name) {
        super((String) null);
        throw new RuntimeException("Stub!");
    }

    public BasicPermission(String name, String actions) {
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
}
