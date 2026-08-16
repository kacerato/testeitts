package java.lang.reflect;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Member.class
 */
public interface Member {
    public static final int PUBLIC = 0;
    public static final int DECLARED = 1;

    Class<?> getDeclaringClass();

    String getName();

    int getModifiers();

    boolean isSynthetic();

    default Set<AccessFlag> accessFlags() {
        throw new UnsupportedOperationException();
    }
}
