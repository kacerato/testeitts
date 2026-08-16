package java.util.concurrent;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentSkipListMap.class
 */
public class ConcurrentSkipListMap<K, V> extends AbstractMap<K, V> implements ConcurrentNavigableMap<K, V>, Cloneable, Serializable {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public SortedMap tailMap(Object obj) {
        return tailMap((ConcurrentSkipListMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public SortedMap headMap(Object obj) {
        return headMap((ConcurrentSkipListMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public NavigableMap tailMap(Object obj, boolean z10) {
        return tailMap((ConcurrentSkipListMap<K, V>) obj, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public NavigableMap headMap(Object obj, boolean z10) {
        return headMap((ConcurrentSkipListMap<K, V>) obj, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
        return subMap((boolean) obj, z10, (boolean) obj2, z11);
    }

    public ConcurrentSkipListMap() {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListMap(Comparator<? super K> comparator) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListMap(Map<? extends K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListMap(SortedMap<K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentSkipListMap<K, V> clone() {
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
    public V getOrDefault(Object key, V defaultValue) {
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
    public boolean containsValue(Object value) {
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
    public void clear() {
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
    public NavigableSet<K> o() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<K> navigableKeySet() {
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
    public ConcurrentNavigableMap<K, V> descendingMap() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<K> descendingKeySet() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object o10) {
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
    public Comparator<? super K> comparator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public K firstKey() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public K lastKey() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentNavigableMap<K, V> subMap(K fromKey, boolean fromInclusive, K toKey, boolean toInclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentNavigableMap<K, V> headMap(K toKey, boolean inclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentNavigableMap<K, V> tailMap(K fromKey, boolean inclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentNavigableMap<K, V> subMap(K fromKey, K toKey) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentNavigableMap<K, V> headMap(K toKey) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ConcurrentNavigableMap<K, V> tailMap(K fromKey) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> lowerEntry(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public K lowerKey(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> floorEntry(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public K floorKey(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> ceilingEntry(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public K ceilingKey(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> higherEntry(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public K higherKey(K key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> firstEntry() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> lastEntry() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> pollFirstEntry() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Map.Entry<K, V> pollLastEntry() {
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
}
