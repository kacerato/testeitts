package android.animation;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/TypeConverter.class
 */
public abstract class TypeConverter<T, V> {
    public abstract V convert(T t10);

    public TypeConverter(Class<T> fromClass, Class<V> toClass) {
        throw new RuntimeException("Stub!");
    }
}
