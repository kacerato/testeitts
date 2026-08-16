package java.net;

import java.io.Serializable;
import java.security.Permission;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/SocketPermission.class
 */
public final class SocketPermission extends Permission implements Serializable {
    public SocketPermission(String host, String action) {
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
