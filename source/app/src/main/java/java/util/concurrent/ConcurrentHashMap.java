package java.util.concurrent;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.Function;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;
import java.util.function.ToDoubleBiFunction;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntBiFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongBiFunction;
import java.util.function.ToLongFunction;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentHashMap.class
 */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentHashMap$CollectionView.class
 */
    static abstract class CollectionView<K, V, E> implements Collection<E>, Serializable {
        @Override
        public abstract Iterator<E> iterator();

        @Override
        public abstract boolean contains(Object obj);

        @Override
        public abstract boolean remove(Object obj);

        CollectionView() {
            throw new RuntimeException("Stub!");
        }

        public ConcurrentHashMap<K, V> getMap() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final void clear() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final int size() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean isEmpty() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final Object[] toArray() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final <T> T[] toArray(T[] a10) {
            throw new RuntimeException("Stub!");
        }

        public final String toString() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean containsAll(Collection<?> c10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean removeAll(Collection<?> c10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean retainAll(Collection<?> c10) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentHashMap$KeySetView.class
 */
    public static class KeySetView<K, V> extends CollectionView<K, V, K> implements Set<K>, Serializable {
        @Override
        public ConcurrentHashMap getMap() {
            return super.getMap();
        }

        KeySetView() {
            throw new RuntimeException("Stub!");
        }

        public V getMappedValue() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean contains(Object o10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean remove(Object o10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Iterator<K> iterator() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean add(K e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean addAll(Collection<? extends K> c10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Spliterator<K> spliterator() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void forEach(Consumer<? super K> action) {
            throw new RuntimeException("Stub!");
        }
    }

    public ConcurrentHashMap() {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentHashMap(int initialCapacity) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentHashMap(Map<? extends K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentHashMap(int initialCapacity, float loadFactor) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentHashMap(int initialCapacity, float loadFactor, int concurrencyLevel) {
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
    public boolean containsValue(Object value) {
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
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
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
    public V getOrDefault(Object key, V defaultValue) {
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

    public boolean contains(Object value) {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<K> keys() {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<V> elements() {
        throw new RuntimeException("Stub!");
    }

    public long mappingCount() {
        throw new RuntimeException("Stub!");
    }

    public static <K> KeySetView<K, Boolean> newKeySet() {
        throw new RuntimeException("Stub!");
    }

    public static <K> KeySetView<K, Boolean> newKeySet(int initialCapacity) {
        throw new RuntimeException("Stub!");
    }

    public KeySetView<K, V> keySet(V mappedValue) {
        throw new RuntimeException("Stub!");
    }

    public void forEach(long parallelismThreshold, BiConsumer<? super K, ? super V> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> void forEach(long parallelismThreshold, BiFunction<? super K, ? super V, ? extends U> transformer, Consumer<? super U> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> U search(long parallelismThreshold, BiFunction<? super K, ? super V, ? extends U> searchFunction) {
        throw new RuntimeException("Stub!");
    }

    public <U> U reduce(long parallelismThreshold, BiFunction<? super K, ? super V, ? extends U> transformer, BiFunction<? super U, ? super U, ? extends U> reducer) {
        throw new RuntimeException("Stub!");
    }

    public double reduceToDouble(long parallelismThreshold, ToDoubleBiFunction<? super K, ? super V> transformer, double basis, DoubleBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public long reduceToLong(long parallelismThreshold, ToLongBiFunction<? super K, ? super V> transformer, long basis, LongBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public int reduceToInt(long parallelismThreshold, ToIntBiFunction<? super K, ? super V> transformer, int basis, IntBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public void forEachKey(long parallelismThreshold, Consumer<? super K> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> void forEachKey(long parallelismThreshold, Function<? super K, ? extends U> transformer, Consumer<? super U> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> U searchKeys(long parallelismThreshold, Function<? super K, ? extends U> searchFunction) {
        throw new RuntimeException("Stub!");
    }

    public K reduceKeys(long parallelismThreshold, BiFunction<? super K, ? super K, ? extends K> reducer) {
        throw new RuntimeException("Stub!");
    }

    public <U> U reduceKeys(long parallelismThreshold, Function<? super K, ? extends U> transformer, BiFunction<? super U, ? super U, ? extends U> reducer) {
        throw new RuntimeException("Stub!");
    }

    public double reduceKeysToDouble(long parallelismThreshold, ToDoubleFunction<? super K> transformer, double basis, DoubleBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public long reduceKeysToLong(long parallelismThreshold, ToLongFunction<? super K> transformer, long basis, LongBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public int reduceKeysToInt(long parallelismThreshold, ToIntFunction<? super K> transformer, int basis, IntBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public void forEachValue(long parallelismThreshold, Consumer<? super V> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> void forEachValue(long parallelismThreshold, Function<? super V, ? extends U> transformer, Consumer<? super U> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> U searchValues(long parallelismThreshold, Function<? super V, ? extends U> searchFunction) {
        throw new RuntimeException("Stub!");
    }

    public V reduceValues(long parallelismThreshold, BiFunction<? super V, ? super V, ? extends V> reducer) {
        throw new RuntimeException("Stub!");
    }

    public <U> U reduceValues(long parallelismThreshold, Function<? super V, ? extends U> transformer, BiFunction<? super U, ? super U, ? extends U> reducer) {
        throw new RuntimeException("Stub!");
    }

    public double reduceValuesToDouble(long parallelismThreshold, ToDoubleFunction<? super V> transformer, double basis, DoubleBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public long reduceValuesToLong(long parallelismThreshold, ToLongFunction<? super V> transformer, long basis, LongBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public int reduceValuesToInt(long parallelismThreshold, ToIntFunction<? super V> transformer, int basis, IntBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public void forEachEntry(long parallelismThreshold, Consumer<? super Map.Entry<K, V>> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> void forEachEntry(long parallelismThreshold, Function<Map.Entry<K, V>, ? extends U> transformer, Consumer<? super U> action) {
        throw new RuntimeException("Stub!");
    }

    public <U> U searchEntries(long parallelismThreshold, Function<Map.Entry<K, V>, ? extends U> searchFunction) {
        throw new RuntimeException("Stub!");
    }

    public Map.Entry<K, V> reduceEntries(long parallelismThreshold, BiFunction<Map.Entry<K, V>, Map.Entry<K, V>, ? extends Map.Entry<K, V>> reducer) {
        throw new RuntimeException("Stub!");
    }

    public <U> U reduceEntries(long parallelismThreshold, Function<Map.Entry<K, V>, ? extends U> transformer, BiFunction<? super U, ? super U, ? extends U> reducer) {
        throw new RuntimeException("Stub!");
    }

    public double reduceEntriesToDouble(long parallelismThreshold, ToDoubleFunction<Map.Entry<K, V>> transformer, double basis, DoubleBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public long reduceEntriesToLong(long parallelismThreshold, ToLongFunction<Map.Entry<K, V>> transformer, long basis, LongBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }

    public int reduceEntriesToInt(long parallelismThreshold, ToIntFunction<Map.Entry<K, V>> transformer, int basis, IntBinaryOperator reducer) {
        throw new RuntimeException("Stub!");
    }
}
