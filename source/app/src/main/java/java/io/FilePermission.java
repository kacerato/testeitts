package java.io;

import java.security.Permission;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/FilePermission.class
 */
public final class FilePermission extends Permission implements Serializable {
    public FilePermission(String path, String actions) {
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
