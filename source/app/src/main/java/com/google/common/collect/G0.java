package com.google.common.collect;

import com.google.common.collect.Q1;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.c
public abstract class G0<K, V> extends M0<K, V> implements NavigableMap<K, V> {

    @InterfaceC15800a
    public class a extends Q1.AbstractC12493q<K, V> {

        public class C0984a implements Iterator<Map.Entry<K, V>> {

            @CheckForNull
            public Map.Entry<K, V> f65773b = null;

            @CheckForNull
            public Map.Entry<K, V> f65774c;

            public C0984a() {
                this.f65774c = a.this.D0().lastEntry();
            }

            @Override
            public Map.Entry<K, V> next() {
                Map.Entry<K, V> entry = this.f65774c;
                if (entry == null) {
                    throw new NoSuchElementException();
                }
                this.f65773b = entry;
                this.f65774c = a.this.D0().lowerEntry(this.f65774c.getKey());
                return entry;
            }

            @Override
            public boolean hasNext() {
                return this.f65774c != null;
            }

            @Override
            public void remove() {
                if (this.f65773b == null) {
                    throw new IllegalStateException("no calls to next() since the last call to remove()");
                }
                a.this.D0().remove(this.f65773b.getKey());
                this.f65773b = null;
            }
        }

        public a() {
        }

        @Override
        public Iterator<Map.Entry<K, V>> C0() {
            return new C0984a();
        }

        @Override
        public NavigableMap<K, V> D0() {
            return G0.this;
        }
    }

    @InterfaceC15800a
    public class b extends Q1.E<K, V> {
        public b(G0 g02) {
            super(g02);
        }
    }

    @Override
    public SortedMap<K, V> C0(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
        return subMap(k10, true, k11, false);
    }

    @Override
    public abstract NavigableMap<K, V> k0();

    @CheckForNull
    public Map.Entry<K, V> F0(@InterfaceC12518f2 K k10) {
        return tailMap(k10, true).firstEntry();
    }

    @CheckForNull
    public K G0(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(ceilingEntry(k10));
    }

    @InterfaceC15800a
    public NavigableSet<K> H0() {
        return descendingMap().navigableKeySet();
    }

    @CheckForNull
    public Map.Entry<K, V> I0() {
        return (Map.Entry) D1.v(entrySet(), null);
    }

    public K J0() {
        Map.Entry<K, V> firstEntry = firstEntry();
        if (firstEntry != null) {
            return firstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @CheckForNull
    public Map.Entry<K, V> M0(@InterfaceC12518f2 K k10) {
        return headMap(k10, true).lastEntry();
    }

    @CheckForNull
    public K N0(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(floorEntry(k10));
    }

    public SortedMap<K, V> O0(@InterfaceC12518f2 K k10) {
        return headMap(k10, false);
    }

    @CheckForNull
    public Map.Entry<K, V> P0(@InterfaceC12518f2 K k10) {
        return tailMap(k10, false).firstEntry();
    }

    @CheckForNull
    public K Q0(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(higherEntry(k10));
    }

    @CheckForNull
    public Map.Entry<K, V> R0() {
        return (Map.Entry) D1.v(descendingMap().entrySet(), null);
    }

    public K U0() {
        Map.Entry<K, V> lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @CheckForNull
    public Map.Entry<K, V> V0(@InterfaceC12518f2 K k10) {
        return headMap(k10, false).lastEntry();
    }

    @CheckForNull
    public K W0(@InterfaceC12518f2 K k10) {
        return (K) Q1.T(lowerEntry(k10));
    }

    @CheckForNull
    public Map.Entry<K, V> X0() {
        return (Map.Entry) E1.U(entrySet().iterator());
    }

    @CheckForNull
    public Map.Entry<K, V> Y0() {
        return (Map.Entry) E1.U(descendingMap().entrySet().iterator());
    }

    public SortedMap<K, V> Z0(@InterfaceC12518f2 K k10) {
        return tailMap(k10, true);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(@InterfaceC12518f2 K k10) {
        return k0().ceilingEntry(k10);
    }

    @Override
    @CheckForNull
    public K ceilingKey(@InterfaceC12518f2 K k10) {
        return k0().ceilingKey(k10);
    }

    @Override
    public NavigableSet<K> descendingKeySet() {
        return k0().descendingKeySet();
    }

    @Override
    public NavigableMap<K, V> descendingMap() {
        return k0().descendingMap();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        return k0().firstEntry();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> floorEntry(@InterfaceC12518f2 K k10) {
        return k0().floorEntry(k10);
    }

    @Override
    @CheckForNull
    public K floorKey(@InterfaceC12518f2 K k10) {
        return k0().floorKey(k10);
    }

    @Override
    public NavigableMap<K, V> headMap(@InterfaceC12518f2 K k10, boolean z10) {
        return k0().headMap(k10, z10);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> higherEntry(@InterfaceC12518f2 K k10) {
        return k0().higherEntry(k10);
    }

    @Override
    @CheckForNull
    public K higherKey(@InterfaceC12518f2 K k10) {
        return k0().higherKey(k10);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        return k0().lastEntry();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(@InterfaceC12518f2 K k10) {
        return k0().lowerEntry(k10);
    }

    @Override
    @CheckForNull
    public K lowerKey(@InterfaceC12518f2 K k10) {
        return k0().lowerKey(k10);
    }

    @Override
    public NavigableSet<K> navigableKeySet() {
        return k0().navigableKeySet();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> pollFirstEntry() {
        return k0().pollFirstEntry();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> pollLastEntry() {
        return k0().pollLastEntry();
    }

    @Override
    public NavigableMap<K, V> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
        return k0().subMap(k10, z10, k11, z11);
    }

    @Override
    public NavigableMap<K, V> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
        return k0().tailMap(k10, z10);
    }
}
