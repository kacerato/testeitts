package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Dictionary.class
 */
public abstract class Dictionary<K, V> {
    public abstract int size();

    public abstract boolean isEmpty();

    public abstract Enumeration<K> keys();

    public abstract Enumeration<V> elements();

    public abstract V get(Object obj);

    public abstract V put(K k10, V v10);

    public abstract V remove(Object obj);

    public Dictionary() {
        throw new RuntimeException("Stub!");
    }
}
