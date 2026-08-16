package android.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/Property.class
 */
public abstract class Property<T, V> {
    public abstract V get(T t10);

    public Property(Class<V> type, String name) {
        throw new RuntimeException("Stub!");
    }

    public static <T, V> Property<T, V> of(Class<T> hostType, Class<V> valueType, String name) {
        throw new RuntimeException("Stub!");
    }

    public boolean isReadOnly() {
        throw new RuntimeException("Stub!");
    }

    public void set(T object, V value) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public Class<V> getType() {
        throw new RuntimeException("Stub!");
    }
}
