package com.google.common.collect;

import com.google.common.collect.Q1;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

@X
@v2.c
public abstract class AbstractC12531j<K, V> extends Q1.A<K, V> implements NavigableMap<K, V> {

    public final class b extends Q1.AbstractC12493q<K, V> {
        public b() {
        }

        @Override
        public Iterator<Map.Entry<K, V>> C0() {
            return AbstractC12531j.this.i();
        }

        @Override
        public NavigableMap<K, V> D0() {
            return AbstractC12531j.this;
        }
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(@InterfaceC12518f2 K k10) {
        return tailMap(k10, true).firstEntry();
    }

    @Override
    @CheckForNull
    public K ceilingKey(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(ceilingEntry(k10));
    }

    @Override
    public NavigableSet<K> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    public NavigableMap<K, V> descendingMap() {
        return new b();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        return (Map.Entry) E1.J(e(), null);
    }

    @Override
    @InterfaceC12518f2
    public K firstKey() {
        Map.Entry<K, V> firstEntry = firstEntry();
        if (firstEntry != null) {
            return firstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> floorEntry(@InterfaceC12518f2 K k10) {
        return headMap(k10, true).lastEntry();
    }

    @Override
    @CheckForNull
    public K floorKey(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(floorEntry(k10));
    }

    @Override
    @CheckForNull
    public abstract V get(@CheckForNull Object obj);

    @Override
    public SortedMap<K, V> headMap(@InterfaceC12518f2 K k10) {
        return headMap(k10, false);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> higherEntry(@InterfaceC12518f2 K k10) {
        return tailMap(k10, false).firstEntry();
    }

    @Override
    @CheckForNull
    public K higherKey(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(higherEntry(k10));
    }

    public abstract Iterator<Map.Entry<K, V>> i();

    @Override
    public Set<K> o() {
        return navigableKeySet();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        return (Map.Entry) E1.J(i(), null);
    }

    @Override
    @InterfaceC12518f2
    public K lastKey() {
        Map.Entry<K, V> lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(@InterfaceC12518f2 K k10) {
        return headMap(k10, false).lastEntry();
    }

    @Override
    @CheckForNull
    public K lowerKey(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(lowerEntry(k10));
    }

    public NavigableSet<K> navigableKeySet() {
        return new Q1.E(this);
    }

    @CheckForNull
    public Map.Entry<K, V> pollFirstEntry() {
        return (Map.Entry) E1.U(e());
    }

    @CheckForNull
    public Map.Entry<K, V> pollLastEntry() {
        return (Map.Entry) E1.U(i());
    }

    @Override
    public SortedMap<K, V> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
        return subMap(k10, true, k11, false);
    }

    @Override
    public SortedMap<K, V> tailMap(@InterfaceC12518f2 K k10) {
        return tailMap(k10, true);
    }
}
