package java.util;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/SortedMap.class
 */
public interface SortedMap<K, V> extends Map<K, V> {
    Comparator<? super K> comparator();

    SortedMap<K, V> subMap(K k10, K k11);

    SortedMap<K, V> headMap(K k10);

    SortedMap<K, V> tailMap(K k10);

    K firstKey();

    K lastKey();

    @Override
    Set<K> o();

    @Override
    Collection<V> values();

    @Override
    Set<Map.Entry<K, V>> entrySet();
}
