package android.animation;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/BidirectionalTypeConverter.class
 */
public abstract class BidirectionalTypeConverter<T, V> extends TypeConverter<T, V> {
    public abstract T convertBack(V v10);

    public BidirectionalTypeConverter(Class<T> fromClass, Class<V> toClass) {
        super((Class) null, (Class) null);
        throw new RuntimeException("Stub!");
    }

    public BidirectionalTypeConverter<V, T> invert() {
        throw new RuntimeException("Stub!");
    }
}
