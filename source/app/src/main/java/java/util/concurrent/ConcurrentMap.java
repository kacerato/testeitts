package java.util.concurrent;

import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentMap.class
 */
public interface ConcurrentMap<K, V> extends Map<K, V> {
    @Override
    V putIfAbsent(K k10, V v10);

    @Override
    boolean remove(Object obj, Object obj2);

    @Override
    boolean replace(K k10, V v10, V v11);

    @Override
    V replace(K k10, V v10);

    @Override
    default V getOrDefault(Object key, V defaultValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default void forEach(BiConsumer<? super K, ? super V> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default void replaceAll(BiFunction<? super K, ? super V, ? extends V> function) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction) {
        throw new RuntimeException("Stub!");
    }
}
