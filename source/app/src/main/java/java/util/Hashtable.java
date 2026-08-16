package java.util;

import java.io.Serializable;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Hashtable.class
 */
public class Hashtable<K, V> extends Dictionary<K, V> implements Map<K, V>, Cloneable, Serializable {
    public Hashtable(int initialCapacity, float loadFactor) {
        throw new RuntimeException("Stub!");
    }

    public Hashtable(int initialCapacity) {
        throw new RuntimeException("Stub!");
    }

    public Hashtable() {
        throw new RuntimeException("Stub!");
    }

    public Hashtable(Map<? extends K, ? extends V> t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Enumeration<K> keys() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Enumeration<V> elements() {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean contains(Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean containsValue(Object value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean containsKey(Object key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized V get(Object key) {
        throw new RuntimeException("Stub!");
    }

    protected void rehash() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized V put(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized V remove(Object key) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void putAll(Map<? extends K, ? extends V> t10) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void clear() {
        throw new RuntimeException("Stub!");
    }

    public synchronized Object clone() {
        throw new RuntimeException("Stub!");
    }

    public synchronized String toString() {
        throw new RuntimeException("Stub!");
    }

    public Set<K> o() {
        throw new RuntimeException("Stub!");
    }

    public Set<Map.Entry<K, V>> entrySet() {
        throw new RuntimeException("Stub!");
    }

    public Collection<V> values() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public synchronized V getOrDefault(Object key, V defaultValue) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void forEach(BiConsumer<? super K, ? super V> action) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
        throw new RuntimeException("Stub!");
    }

    public synchronized V putIfAbsent(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean remove(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean replace(K key, V oldValue, V newValue) {
        throw new RuntimeException("Stub!");
    }

    public synchronized V replace(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    public synchronized V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction) {
        throw new RuntimeException("Stub!");
    }

    public synchronized V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    public synchronized V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    public synchronized V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }
}
