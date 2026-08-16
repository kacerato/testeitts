package java.util;

import java.io.Serializable;
import java.lang.Enum;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/EnumMap.class
 */
public class EnumMap<K extends Enum<K>, V> extends AbstractMap<K, V> implements Serializable, Cloneable {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object put(Object obj, Object obj2) {
        return put((EnumMap<K, V>) obj, (Enum) obj2);
    }

    public EnumMap(Class<K> keyType) {
        throw new RuntimeException("Stub!");
    }

    public EnumMap(EnumMap<K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    public EnumMap(Map<K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int size() {
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
    public Set<Map.Entry<K, V>> entrySet() {
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

    @Override
    public EnumMap<K, V> clone() {
        throw new RuntimeException("Stub!");
    }
}
