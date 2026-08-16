package java.util;

import java.io.Serializable;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/HashMap.class
 */
public class HashMap<K, V> extends AbstractMap<K, V> implements Map<K, V>, Cloneable, Serializable {
    public HashMap(int initialCapacity, float loadFactor) {
        throw new RuntimeException("Stub!");
    }

    public HashMap(int initialCapacity) {
        throw new RuntimeException("Stub!");
    }

    public HashMap() {
        throw new RuntimeException("Stub!");
    }

    public HashMap(Map<? extends K, ? extends V> m10) {
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
    public V get(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean containsKey(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V put(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V remove(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean containsValue(Object value) {
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
    public V getOrDefault(Object key, V defaultValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V putIfAbsent(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean remove(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean replace(K key, V oldValue, V newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V replace(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void forEach(BiConsumer<? super K, ? super V> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }
}
