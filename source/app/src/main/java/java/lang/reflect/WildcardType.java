package java.lang.reflect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/WildcardType.class
 */
public interface WildcardType extends Type {
    Type[] getUpperBounds();

    Type[] getLowerBounds();
}
