package java.lang;

import java.security.BasicPermission;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/RuntimePermission.class
 */
@Deprecated(since = "25", forRemoval = true)
public final class RuntimePermission extends BasicPermission {
    private static final long serialVersionUID = 7399184964622342223L;

    public RuntimePermission(String name) {
        super(name);
    }

    public RuntimePermission(String name, String actions) {
        super(name, actions);
    }
}
