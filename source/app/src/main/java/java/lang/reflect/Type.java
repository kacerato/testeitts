package java.lang.reflect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Type.class
 */
public interface Type {
    default String getTypeName() {
        return toString();
    }
}
