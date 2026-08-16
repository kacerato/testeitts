package java.util;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Map.class
 */
public interface Map<K, V> {
    int size();

    boolean isEmpty();

    boolean containsKey(Object obj);

    boolean containsValue(Object obj);

    V get(Object obj);

    V put(K k10, V v10);

    V remove(Object obj);

    void putAll(Map<? extends K, ? extends V> map);

    void clear();

    Set<K> keySet();

    Collection<V> values();

    Set<Entry<K, V>> entrySet();

    boolean equals(Object obj);

    int hashCode();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Map$Entry.class
 */
    public interface Entry<K, V> {
        K getKey();

        V getValue();

        V setValue(V v10);

        boolean equals(Object obj);

        int hashCode();

        static <K extends Comparable<? super K>, V> Comparator<Entry<K, V>> comparingByKey() {
            throw new RuntimeException("Stub!");
        }

        static <K, V extends Comparable<? super V>> Comparator<Entry<K, V>> comparingByValue() {
            throw new RuntimeException("Stub!");
        }

        static <K, V> Comparator<Entry<K, V>> comparingByKey(Comparator<? super K> cmp) {
            throw new RuntimeException("Stub!");
        }

        static <K, V> Comparator<Entry<K, V>> comparingByValue(Comparator<? super V> cmp) {
            throw new RuntimeException("Stub!");
        }
    }

    default V getOrDefault(Object key, V defaultValue) {
        throw new RuntimeException("Stub!");
    }

    default void forEach(BiConsumer<? super K, ? super V> action) {
        throw new RuntimeException("Stub!");
    }

    default void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
        throw new RuntimeException("Stub!");
    }

    default V putIfAbsent(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    default boolean remove(Object key, Object value) {
        throw new RuntimeException("Stub!");
    }

    default boolean replace(K key, V oldValue, V newValue) {
        throw new RuntimeException("Stub!");
    }

    default V replace(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    default V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction) {
        throw new RuntimeException("Stub!");
    }

    default V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    default V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    default V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }
}
