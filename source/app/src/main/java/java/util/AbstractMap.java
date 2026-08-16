package java.util;

import java.io.Serializable;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/AbstractMap.class
 */
public abstract class AbstractMap<K, V> implements Map<K, V> {
    @Override
    public abstract Set<Map.Entry<K, V>> entrySet();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/AbstractMap$SimpleEntry.class
 */
    public static class SimpleEntry<K, V> implements Map.Entry<K, V>, Serializable {
        public SimpleEntry(K key, V value) {
            throw new RuntimeException("Stub!");
        }

        public SimpleEntry(Map.Entry<? extends K, ? extends V> entry) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public K getKey() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public V getValue() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public V setValue(V value) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/AbstractMap$SimpleImmutableEntry.class
 */
    public static class SimpleImmutableEntry<K, V> implements Map.Entry<K, V>, Serializable {
        public SimpleImmutableEntry(K key, V value) {
            throw new RuntimeException("Stub!");
        }

        public SimpleImmutableEntry(Map.Entry<? extends K, ? extends V> entry) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public K getKey() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public V getValue() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public V setValue(V value) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    public AbstractMap() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean containsValue(Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean containsKey(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V get(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V put(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V remove(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Set<K> o() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Collection<V> values() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
