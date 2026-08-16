package com.google.common.collect;

import com.google.common.collect.Q1;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b
public abstract class M0<K, V> extends C0<K, V> implements SortedMap<K, V> {

    @InterfaceC15800a
    public class a extends Q1.G<K, V> {
        public a(M0 m02) {
            super(m02);
        }
    }

    public static int D0(@CheckForNull Comparator<?> comparator, @CheckForNull Object obj, @CheckForNull Object obj2) {
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }

    @Override
    public abstract SortedMap<K, V> k0();

    @InterfaceC15800a
    public SortedMap<K, V> C0(K k10, K k11) {
        w2.H.e(D0(comparator(), k10, k11) <= 0, "fromKey must be <= toKey");
        return tailMap(k10).headMap(k11);
    }

    @Override
    @CheckForNull
    public Comparator<? super K> comparator() {
        return k0().comparator();
    }

    @Override
    @InterfaceC12518f2
    public K firstKey() {
        return k0().firstKey();
    }

    @Override
    public SortedMap<K, V> headMap(@InterfaceC12518f2 K k10) {
        return k0().headMap(k10);
    }

    @Override
    @InterfaceC12518f2
    public K lastKey() {
        return k0().lastKey();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @InterfaceC15800a
    public boolean p0(@CheckForNull Object obj) {
        try {
            return D0(comparator(), tailMap(obj).firstKey(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override
    public SortedMap<K, V> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
        return k0().subMap(k10, k11);
    }

    @Override
    public SortedMap<K, V> tailMap(@InterfaceC12518f2 K k10) {
        return k0().tailMap(k10);
    }
}
