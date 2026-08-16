package java.lang.reflect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/ParameterizedType.class
 */
public interface ParameterizedType extends Type {
    Type[] getActualTypeArguments();

    Type getRawType();

    Type getOwnerType();
}
