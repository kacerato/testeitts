package java.util.concurrent;

import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentNavigableMap.class
 */
public interface ConcurrentNavigableMap<K, V> extends ConcurrentMap<K, V>, NavigableMap<K, V> {
    @Override
    ConcurrentNavigableMap<K, V> subMap(K k10, boolean z10, K k11, boolean z11);

    @Override
    ConcurrentNavigableMap<K, V> headMap(K k10, boolean z10);

    @Override
    ConcurrentNavigableMap<K, V> tailMap(K k10, boolean z10);

    @Override
    ConcurrentNavigableMap<K, V> subMap(K k10, K k11);

    @Override
    ConcurrentNavigableMap<K, V> headMap(K k10);

    @Override
    ConcurrentNavigableMap<K, V> tailMap(K k10);

    @Override
    ConcurrentNavigableMap<K, V> descendingMap();

    @Override
    NavigableSet<K> navigableKeySet();

    @Override
    NavigableSet<K> o();

    @Override
    NavigableSet<K> descendingKeySet();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default SortedMap tailMap(Object obj) {
        return tailMap((ConcurrentNavigableMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default SortedMap headMap(Object obj) {
        return headMap((ConcurrentNavigableMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default NavigableMap tailMap(Object obj, boolean z10) {
        return tailMap((ConcurrentNavigableMap<K, V>) obj, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default NavigableMap headMap(Object obj, boolean z10) {
        return headMap((ConcurrentNavigableMap<K, V>) obj, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
        return subMap((boolean) obj, z10, (boolean) obj2, z11);
    }
}
