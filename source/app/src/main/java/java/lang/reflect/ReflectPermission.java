package java.lang.reflect;

import java.security.BasicPermission;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/ReflectPermission.class
 */
@Deprecated(since = "25", forRemoval = true)
public final class ReflectPermission extends BasicPermission {
    private static final long serialVersionUID = 7412737110241507485L;

    public ReflectPermission(String name) {
        super(name);
    }

    public ReflectPermission(String name, String actions) {
        super(name, actions);
    }
}
