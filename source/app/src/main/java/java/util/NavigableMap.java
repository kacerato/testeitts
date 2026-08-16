package java.util;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/NavigableMap.class
 */
public interface NavigableMap<K, V> extends SortedMap<K, V> {
    Map.Entry<K, V> lowerEntry(K k10);

    K lowerKey(K k10);

    Map.Entry<K, V> floorEntry(K k10);

    K floorKey(K k10);

    Map.Entry<K, V> ceilingEntry(K k10);

    K ceilingKey(K k10);

    Map.Entry<K, V> higherEntry(K k10);

    K higherKey(K k10);

    Map.Entry<K, V> firstEntry();

    Map.Entry<K, V> lastEntry();

    Map.Entry<K, V> pollFirstEntry();

    Map.Entry<K, V> pollLastEntry();

    NavigableMap<K, V> descendingMap();

    NavigableSet<K> navigableKeySet();

    NavigableSet<K> descendingKeySet();

    NavigableMap<K, V> subMap(K k10, boolean z10, K k11, boolean z11);

    NavigableMap<K, V> headMap(K k10, boolean z10);

    NavigableMap<K, V> tailMap(K k10, boolean z10);

    @Override
    SortedMap<K, V> subMap(K k10, K k11);

    @Override
    SortedMap<K, V> headMap(K k10);

    @Override
    SortedMap<K, V> tailMap(K k10);
}
