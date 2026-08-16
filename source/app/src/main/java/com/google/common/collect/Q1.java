package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.D2;
import com.google.common.collect.N1;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.AbstractC15892i;
import w2.AbstractC15896m;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public final class Q1 {

    public static abstract class A<K, V> extends AbstractMap<K, V> {

        public class a extends s<K, V> {
            public a() {
            }

            @Override
            public Map<K, V> a() {
                return A.this;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return A.this.e();
            }
        }

        @Override
        public void clear() {
            E1.h(e());
        }

        public abstract Iterator<Map.Entry<K, V>> e();

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }

        @Override
        public abstract int size();
    }

    public static class B<K, V> extends D2.k<K> {

        @q3.i
        public final Map<K, V> f65995b;

        public B(Map<K, V> map) {
            this.f65995b = (Map) w2.H.E(map);
        }

        public Map<K, V> h() {
            return this.f65995b;
        }

        @Override
        public void clear() {
            h().clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return h().containsKey(obj);
        }

        @Override
        public boolean isEmpty() {
            return h().isEmpty();
        }

        @Override
        public Iterator<K> iterator() {
            return Q1.S(h().entrySet().iterator());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!contains(obj)) {
                return false;
            }
            h().remove(obj);
            return true;
        }

        @Override
        public int size() {
            return h().size();
        }
    }

    public static class C<K, V> implements N1<K, V> {

        public final Map<K, V> f65996a;

        public final Map<K, V> f65997b;

        public final Map<K, V> f65998c;

        public final Map<K, N1.a<V>> f65999d;

        public C(Map<K, V> map, Map<K, V> map2, Map<K, V> map3, Map<K, N1.a<V>> map4) {
            this.f65996a = Q1.K0(map);
            this.f65997b = Q1.K0(map2);
            this.f65998c = Q1.K0(map3);
            this.f65999d = Q1.K0(map4);
        }

        @Override
        public Map<K, N1.a<V>> a() {
            return this.f65999d;
        }

        @Override
        public Map<K, V> b() {
            return this.f65997b;
        }

        @Override
        public Map<K, V> c() {
            return this.f65996a;
        }

        @Override
        public Map<K, V> d() {
            return this.f65998c;
        }

        @Override
        public boolean e() {
            return this.f65996a.isEmpty() && this.f65997b.isEmpty() && this.f65999d.isEmpty();
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof N1)) {
                return false;
            }
            N1 n12 = (N1) obj;
            return c().equals(n12.c()) && b().equals(n12.b()) && d().equals(n12.d()) && a().equals(n12.a());
        }

        @Override
        public int hashCode() {
            return w2.B.b(c(), b(), d(), a());
        }

        public String toString() {
            if (e()) {
                return "equal";
            }
            StringBuilder sb2 = new StringBuilder("not equal");
            if (!this.f65996a.isEmpty()) {
                sb2.append(": only on left=");
                sb2.append((Object) this.f65996a);
            }
            if (!this.f65997b.isEmpty()) {
                sb2.append(": only on right=");
                sb2.append((Object) this.f65997b);
            }
            if (!this.f65999d.isEmpty()) {
                sb2.append(": value differences=");
                sb2.append((Object) this.f65999d);
            }
            return sb2.toString();
        }
    }

    @v2.c
    public static final class D<K, V> extends AbstractC12531j<K, V> {

        public final NavigableSet<K> f66000b;

        public final InterfaceC15902t<? super K, V> f66001c;

        public D(NavigableSet<K> navigableSet, InterfaceC15902t<? super K, V> interfaceC15902t) {
            this.f66000b = (NavigableSet) w2.H.E(navigableSet);
            this.f66001c = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        }

        @Override
        public void clear() {
            this.f66000b.clear();
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return this.f66000b.comparator();
        }

        @Override
        public NavigableMap<K, V> descendingMap() {
            return Q1.k(this.f66000b.descendingSet(), this.f66001c);
        }

        @Override
        public Iterator<Map.Entry<K, V>> e() {
            return Q1.m(this.f66000b, this.f66001c);
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            if (com.google.common.collect.C.j(this.f66000b, obj)) {
                return this.f66001c.apply(obj);
            }
            return null;
        }

        @Override
        public NavigableMap<K, V> headMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.k(this.f66000b.headSet(k10, z10), this.f66001c);
        }

        @Override
        public Iterator<Map.Entry<K, V>> i() {
            return descendingMap().entrySet().iterator();
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            return Q1.l0(this.f66000b);
        }

        @Override
        public int size() {
            return this.f66000b.size();
        }

        @Override
        public NavigableMap<K, V> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return Q1.k(this.f66000b.subSet(k10, z10, k11, z11), this.f66001c);
        }

        @Override
        public NavigableMap<K, V> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.k(this.f66000b.tailSet(k10, z10), this.f66001c);
        }
    }

    @v2.c
    public static class E<K, V> extends G<K, V> implements NavigableSet<K> {
        public E(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        @Override
        @CheckForNull
        public K ceiling(@InterfaceC12518f2 K k10) {
            return a().ceilingKey(k10);
        }

        @Override
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet<K> descendingSet() {
            return a().descendingKeySet();
        }

        @Override
        @CheckForNull
        public K floor(@InterfaceC12518f2 K k10) {
            return a().floorKey(k10);
        }

        @Override
        public NavigableSet<K> headSet(@InterfaceC12518f2 K k10, boolean z10) {
            return a().headMap(k10, z10).navigableKeySet();
        }

        @Override
        @CheckForNull
        public K higher(@InterfaceC12518f2 K k10) {
            return a().higherKey(k10);
        }

        @Override
        public NavigableMap<K, V> h() {
            return (NavigableMap) this.f65995b;
        }

        @Override
        @CheckForNull
        public K lower(@InterfaceC12518f2 K k10) {
            return a().lowerKey(k10);
        }

        @Override
        @CheckForNull
        public K pollFirst() {
            return (K) Q1.T(a().pollFirstEntry());
        }

        @Override
        @CheckForNull
        public K pollLast() {
            return (K) Q1.T(a().pollLastEntry());
        }

        @Override
        public NavigableSet<K> subSet(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return a().subMap(k10, z10, k11, z11).navigableKeySet();
        }

        @Override
        public NavigableSet<K> tailSet(@InterfaceC12518f2 K k10, boolean z10) {
            return a().tailMap(k10, z10).navigableKeySet();
        }

        @Override
        public SortedSet<K> headSet(@InterfaceC12518f2 K k10) {
            return headSet(k10, false);
        }

        @Override
        public SortedSet<K> subSet(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override
        public SortedSet<K> tailSet(@InterfaceC12518f2 K k10) {
            return tailSet(k10, true);
        }
    }

    public static class F<K, V> extends C12491o<K, V> implements SortedMap<K, V> {
        public F(SortedSet<K> sortedSet, InterfaceC15902t<? super K, V> interfaceC15902t) {
            super(sortedSet, interfaceC15902t);
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return k().comparator();
        }

        @Override
        @InterfaceC12518f2
        public K firstKey() {
            return k().first();
        }

        @Override
        public SortedMap<K, V> headMap(@InterfaceC12518f2 K k10) {
            return Q1.l(k().headSet(k10), this.f66034f);
        }

        @Override
        public Set<K> o() {
            return Q1.n0(k());
        }

        @Override
        public SortedSet<K> k() {
            return (SortedSet) super.k();
        }

        @Override
        @InterfaceC12518f2
        public K lastKey() {
            return k().last();
        }

        @Override
        public SortedMap<K, V> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return Q1.l(k().subSet(k10, k11), this.f66034f);
        }

        @Override
        public SortedMap<K, V> tailMap(@InterfaceC12518f2 K k10) {
            return Q1.l(k().tailSet(k10), this.f66034f);
        }
    }

    public static class G<K, V> extends B<K, V> implements SortedSet<K> {
        public G(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return h().comparator();
        }

        @Override
        @InterfaceC12518f2
        public K first() {
            return h().firstKey();
        }

        @Override
        public SortedMap<K, V> h() {
            return (SortedMap) super.h();
        }

        public SortedSet<K> headSet(@InterfaceC12518f2 K k10) {
            return new G(h().headMap(k10));
        }

        @Override
        @InterfaceC12518f2
        public K last() {
            return h().lastKey();
        }

        public SortedSet<K> subSet(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return new G(h().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(@InterfaceC12518f2 K k10) {
            return new G(h().tailMap(k10));
        }
    }

    public static class H<K, V> extends C<K, V> implements J2<K, V> {
        public H(SortedMap<K, V> sortedMap, SortedMap<K, V> sortedMap2, SortedMap<K, V> sortedMap3, SortedMap<K, N1.a<V>> sortedMap4) {
            super(sortedMap, sortedMap2, sortedMap3, sortedMap4);
        }

        @Override
        public SortedMap<K, N1.a<V>> a() {
            return (SortedMap) super.a();
        }

        @Override
        public SortedMap<K, V> b() {
            return (SortedMap) super.b();
        }

        @Override
        public SortedMap<K, V> c() {
            return (SortedMap) super.c();
        }

        @Override
        public SortedMap<K, V> d() {
            return (SortedMap) super.d();
        }
    }

    public static class I<K, V1, V2> extends A<K, V2> {

        public final Map<K, V1> f66002b;

        public final t<? super K, ? super V1, V2> f66003c;

        public I(Map<K, V1> map, t<? super K, ? super V1, V2> tVar) {
            this.f66002b = (Map) w2.H.E(map);
            this.f66003c = (t) w2.H.E(tVar);
        }

        @Override
        public void clear() {
            this.f66002b.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66002b.containsKey(obj);
        }

        @Override
        public Iterator<Map.Entry<K, V2>> e() {
            return E1.c0(this.f66002b.entrySet().iterator(), Q1.g(this.f66003c));
        }

        @Override
        @CheckForNull
        public V2 get(@CheckForNull Object obj) {
            V1 v12 = this.f66002b.get(obj);
            if (v12 != null || this.f66002b.containsKey(obj)) {
                return this.f66003c.a(obj, (Object) Z1.a(v12));
            }
            return null;
        }

        @Override
        public Set<K> o() {
            return this.f66002b.o();
        }

        @Override
        @CheckForNull
        public V2 remove(@CheckForNull Object obj) {
            if (this.f66002b.containsKey(obj)) {
                return this.f66003c.a(obj, (Object) Z1.a(this.f66002b.remove(obj)));
            }
            return null;
        }

        @Override
        public int size() {
            return this.f66002b.size();
        }

        @Override
        public Collection<V2> values() {
            return new Q(this);
        }
    }

    @v2.c
    public static class J<K, V1, V2> extends K<K, V1, V2> implements NavigableMap<K, V2> {
        public J(NavigableMap<K, V1> navigableMap, t<? super K, ? super V1, V2> tVar) {
            super(navigableMap, tVar);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> ceilingEntry(@InterfaceC12518f2 K k10) {
            return n(i().ceilingEntry(k10));
        }

        @Override
        @CheckForNull
        public K ceilingKey(@InterfaceC12518f2 K k10) {
            return i().ceilingKey(k10);
        }

        @Override
        public NavigableSet<K> descendingKeySet() {
            return i().descendingKeySet();
        }

        @Override
        public NavigableMap<K, V2> descendingMap() {
            return Q1.y0(i().descendingMap(), this.f66003c);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> firstEntry() {
            return n(i().firstEntry());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> floorEntry(@InterfaceC12518f2 K k10) {
            return n(i().floorEntry(k10));
        }

        @Override
        @CheckForNull
        public K floorKey(@InterfaceC12518f2 K k10) {
            return i().floorKey(k10);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> higherEntry(@InterfaceC12518f2 K k10) {
            return n(i().higherEntry(k10));
        }

        @Override
        @CheckForNull
        public K higherKey(@InterfaceC12518f2 K k10) {
            return i().higherKey(k10);
        }

        @Override
        public NavigableMap<K, V1> i() {
            return (NavigableMap) super.i();
        }

        @Override
        public NavigableMap<K, V2> headMap(@InterfaceC12518f2 K k10) {
            return headMap(k10, false);
        }

        @Override
        public NavigableMap<K, V2> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> lastEntry() {
            return n(i().lastEntry());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> lowerEntry(@InterfaceC12518f2 K k10) {
            return n(i().lowerEntry(k10));
        }

        @Override
        @CheckForNull
        public K lowerKey(@InterfaceC12518f2 K k10) {
            return i().lowerKey(k10);
        }

        @Override
        public NavigableMap<K, V2> tailMap(@InterfaceC12518f2 K k10) {
            return tailMap(k10, true);
        }

        @CheckForNull
        public final Map.Entry<K, V2> n(@CheckForNull Map.Entry<K, V1> entry) {
            if (entry == null) {
                return null;
            }
            return Q1.A0(this.f66003c, entry);
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            return i().navigableKeySet();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> pollFirstEntry() {
            return n(i().pollFirstEntry());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V2> pollLastEntry() {
            return n(i().pollLastEntry());
        }

        @Override
        public NavigableMap<K, V2> headMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.y0(i().headMap(k10, z10), this.f66003c);
        }

        @Override
        public NavigableMap<K, V2> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return Q1.y0(i().subMap(k10, z10, k11, z11), this.f66003c);
        }

        @Override
        public NavigableMap<K, V2> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.y0(i().tailMap(k10, z10), this.f66003c);
        }
    }

    public static class K<K, V1, V2> extends I<K, V1, V2> implements SortedMap<K, V2> {
        public K(SortedMap<K, V1> sortedMap, t<? super K, ? super V1, V2> tVar) {
            super(sortedMap, tVar);
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return i().comparator();
        }

        @Override
        @InterfaceC12518f2
        public K firstKey() {
            return i().firstKey();
        }

        public SortedMap<K, V2> headMap(@InterfaceC12518f2 K k10) {
            return Q1.z0(i().headMap(k10), this.f66003c);
        }

        public SortedMap<K, V1> i() {
            return (SortedMap) this.f66002b;
        }

        @Override
        @InterfaceC12518f2
        public K lastKey() {
            return i().lastKey();
        }

        public SortedMap<K, V2> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return Q1.z0(i().subMap(k10, k11), this.f66003c);
        }

        public SortedMap<K, V2> tailMap(@InterfaceC12518f2 K k10) {
            return Q1.z0(i().tailMap(k10), this.f66003c);
        }
    }

    public static class L<K, V> extends C0<K, V> implements InterfaceC12582w<K, V>, Serializable {

        public static final long f66004f = 0;

        public final Map<K, V> f66005b;

        public final InterfaceC12582w<? extends K, ? extends V> f66006c;

        @q3.h
        @CheckForNull
        public InterfaceC12582w<V, K> f66007d;

        @CheckForNull
        public transient Set<V> f66008e;

        public L(InterfaceC12582w<? extends K, ? extends V> interfaceC12582w, @CheckForNull InterfaceC12582w<V, K> interfaceC12582w2) {
            this.f66005b = Collections.unmodifiableMap(interfaceC12582w);
            this.f66006c = interfaceC12582w;
            this.f66007d = interfaceC12582w2;
        }

        @Override
        public InterfaceC12582w<V, K> A8() {
            InterfaceC12582w<V, K> interfaceC12582w = this.f66007d;
            if (interfaceC12582w != null) {
                return interfaceC12582w;
            }
            L l10 = new L(this.f66006c.A8(), this);
            this.f66007d = l10;
            return l10;
        }

        @Override
        @CheckForNull
        public V U6(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<K, V> k0() {
            return this.f66005b;
        }

        @Override
        public Set<V> values() {
            Set<V> set = this.f66008e;
            if (set != null) {
                return set;
            }
            Set<V> unmodifiableSet = Collections.unmodifiableSet(this.f66006c.values());
            this.f66008e = unmodifiableSet;
            return unmodifiableSet;
        }
    }

    public static class M<K, V> extends AbstractC12563r0<Map.Entry<K, V>> {

        public final Collection<Map.Entry<K, V>> f66009b;

        public M(Collection<Map.Entry<K, V>> collection) {
            this.f66009b = collection;
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return Q1.I0(this.f66009b.iterator());
        }

        @Override
        public Collection<Map.Entry<K, V>> k0() {
            return this.f66009b;
        }

        @Override
        public Object[] toArray() {
            return z0();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) B0(tArr);
        }
    }

    public static class N<K, V> extends M<K, V> implements Set<Map.Entry<K, V>> {
        public N(Set<Map.Entry<K, V>> set) {
            super(set);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return D2.g(this, obj);
        }

        @Override
        public int hashCode() {
            return D2.k(this);
        }
    }

    @v2.c
    public static class O<K, V> extends M0<K, V> implements NavigableMap<K, V>, Serializable {

        public final NavigableMap<K, ? extends V> f66010b;

        @CheckForNull
        public transient O<K, V> f66011c;

        public O(NavigableMap<K, ? extends V> navigableMap) {
            this.f66010b = navigableMap;
        }

        @Override
        public SortedMap<K, V> k0() {
            return Collections.unmodifiableSortedMap(this.f66010b);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> ceilingEntry(@InterfaceC12518f2 K k10) {
            return Q1.M0(this.f66010b.ceilingEntry(k10));
        }

        @Override
        @CheckForNull
        public K ceilingKey(@InterfaceC12518f2 K k10) {
            return this.f66010b.ceilingKey(k10);
        }

        @Override
        public NavigableSet<K> descendingKeySet() {
            return D2.O(this.f66010b.descendingKeySet());
        }

        @Override
        public NavigableMap<K, V> descendingMap() {
            O<K, V> o10 = this.f66011c;
            if (o10 != null) {
                return o10;
            }
            O<K, V> o11 = new O<>(this.f66010b.descendingMap(), this);
            this.f66011c = o11;
            return o11;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> firstEntry() {
            return Q1.M0(this.f66010b.firstEntry());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> floorEntry(@InterfaceC12518f2 K k10) {
            return Q1.M0(this.f66010b.floorEntry(k10));
        }

        @Override
        @CheckForNull
        public K floorKey(@InterfaceC12518f2 K k10) {
            return this.f66010b.floorKey(k10);
        }

        @Override
        public SortedMap<K, V> headMap(@InterfaceC12518f2 K k10) {
            return headMap(k10, false);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> higherEntry(@InterfaceC12518f2 K k10) {
            return Q1.M0(this.f66010b.higherEntry(k10));
        }

        @Override
        @CheckForNull
        public K higherKey(@InterfaceC12518f2 K k10) {
            return this.f66010b.higherKey(k10);
        }

        @Override
        public Set<K> o() {
            return navigableKeySet();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> lastEntry() {
            return Q1.M0(this.f66010b.lastEntry());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> lowerEntry(@InterfaceC12518f2 K k10) {
            return Q1.M0(this.f66010b.lowerEntry(k10));
        }

        @Override
        @CheckForNull
        public K lowerKey(@InterfaceC12518f2 K k10) {
            return this.f66010b.lowerKey(k10);
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            return D2.O(this.f66010b.navigableKeySet());
        }

        @Override
        @CheckForNull
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override
        @CheckForNull
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override
        public SortedMap<K, V> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override
        public SortedMap<K, V> tailMap(@InterfaceC12518f2 K k10) {
            return tailMap(k10, true);
        }

        @Override
        public NavigableMap<K, V> headMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.L0(this.f66010b.headMap(k10, z10));
        }

        @Override
        public NavigableMap<K, V> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return Q1.L0(this.f66010b.subMap(k10, z10, k11, z11));
        }

        @Override
        public NavigableMap<K, V> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.L0(this.f66010b.tailMap(k10, z10));
        }

        public O(NavigableMap<K, ? extends V> navigableMap, O<K, V> o10) {
            this.f66010b = navigableMap;
            this.f66011c = o10;
        }
    }

    public static class P<V> implements N1.a<V> {

        @InterfaceC12518f2
        public final V f66012a;

        @InterfaceC12518f2
        public final V f66013b;

        public P(@InterfaceC12518f2 V v10, @InterfaceC12518f2 V v11) {
            this.f66012a = v10;
            this.f66013b = v11;
        }

        public static <V> N1.a<V> c(@InterfaceC12518f2 V v10, @InterfaceC12518f2 V v11) {
            return new P(v10, v11);
        }

        @Override
        @InterfaceC12518f2
        public V a() {
            return this.f66012a;
        }

        @Override
        @InterfaceC12518f2
        public V b() {
            return this.f66013b;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof N1.a)) {
                return false;
            }
            N1.a aVar = (N1.a) obj;
            return w2.B.a(this.f66012a, aVar.a()) && w2.B.a(this.f66013b, aVar.b());
        }

        @Override
        public int hashCode() {
            return w2.B.b(this.f66012a, this.f66013b);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f66012a);
            String valueOf2 = String.valueOf(this.f66013b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 4 + valueOf2.length());
            sb2.append("(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class Q<K, V> extends AbstractCollection<V> {

        @q3.i
        public final Map<K, V> f66014b;

        public Q(Map<K, V> map) {
            this.f66014b = (Map) w2.H.E(map);
        }

        public final Map<K, V> a() {
            return this.f66014b;
        }

        @Override
        public void clear() {
            a().clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return a().containsValue(obj);
        }

        @Override
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override
        public Iterator<V> iterator() {
            return Q1.O0(a().entrySet().iterator());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (w2.B.a(obj, entry.getValue())) {
                        a().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) w2.H.E(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet u10 = D2.u();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        u10.add(entry.getKey());
                    }
                }
                return a().o().removeAll(u10);
            }
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) w2.H.E(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet u10 = D2.u();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        u10.add(entry.getKey());
                    }
                }
                return a().o().retainAll(u10);
            }
        }

        @Override
        public int size() {
            return a().size();
        }
    }

    @v2.b
    public static abstract class R<K, V> extends AbstractMap<K, V> {

        @CheckForNull
        public transient Set<Map.Entry<K, V>> f66015b;

        @CheckForNull
        public transient Set<K> f66016c;

        @CheckForNull
        public transient Collection<V> f66017d;

        public abstract Set<Map.Entry<K, V>> e();

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f66015b;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> e10 = e();
            this.f66015b = e10;
            return e10;
        }

        public Set<K> n() {
            return new B(this);
        }

        public Collection<V> j() {
            return new Q(this);
        }

        @Override
        public Set<K> o() {
            Set<K> set = this.f66016c;
            if (set != null) {
                return set;
            }
            Set<K> n10 = n();
            this.f66016c = n10;
            return n10;
        }

        @Override
        public Collection<V> values() {
            Collection<V> collection = this.f66017d;
            if (collection != null) {
                return collection;
            }
            Collection<V> j10 = j();
            this.f66017d = j10;
            return j10;
        }
    }

    public class C12477a<V1, V2> implements InterfaceC15902t<V1, V2> {

        public final t f66018b;

        public final Object f66019c;

        public C12477a(t tVar, Object obj) {
            this.f66018b = tVar;
            this.f66019c = obj;
        }

        @Override
        @InterfaceC12518f2
        public V2 apply(@InterfaceC12518f2 V1 v12) {
            return (V2) this.f66018b.a(this.f66019c, v12);
        }
    }

    public class C12478b<K, V1, V2> implements InterfaceC15902t<Map.Entry<K, V1>, V2> {

        public final t f66020b;

        public C12478b(t tVar) {
            this.f66020b = tVar;
        }

        @Override
        @InterfaceC12518f2
        public V2 apply(Map.Entry<K, V1> entry) {
            return (V2) this.f66020b.a(entry.getKey(), entry.getValue());
        }
    }

    public class C12479c<K, V2> extends AbstractC12519g<K, V2> {

        public final Map.Entry f66021b;

        public final t f66022c;

        public C12479c(Map.Entry entry, t tVar) {
            this.f66021b = entry;
            this.f66022c = tVar;
        }

        @Override
        @InterfaceC12518f2
        public K getKey() {
            return (K) this.f66021b.getKey();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @InterfaceC12518f2
        public V2 getValue() {
            return (V2) this.f66022c.a(this.f66021b.getKey(), this.f66021b.getValue());
        }
    }

    public class C12480d<K, V1, V2> implements InterfaceC15902t<Map.Entry<K, V1>, Map.Entry<K, V2>> {

        public final t f66023b;

        public C12480d(t tVar) {
            this.f66023b = tVar;
        }

        @Override
        public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
            return Q1.A0(this.f66023b, entry);
        }
    }

    public class C12481e<K, V> extends V2<Map.Entry<K, V>, K> {
        public C12481e(Iterator it) {
            super(it);
        }

        @Override
        @InterfaceC12518f2
        public K a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    public class C12482f<K, V> extends V2<Map.Entry<K, V>, V> {
        public C12482f(Iterator it) {
            super(it);
        }

        @Override
        @InterfaceC12518f2
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    public class C12483g<K, V> extends V2<K, Map.Entry<K, V>> {

        public final InterfaceC15902t f66024c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12483g(Iterator it, InterfaceC15902t interfaceC15902t) {
            super(it);
            this.f66024c = interfaceC15902t;
        }

        @Override
        public Map.Entry<K, V> a(@InterfaceC12518f2 K k10) {
            return Q1.O(k10, this.f66024c.apply(k10));
        }
    }

    public class C12484h<E> extends K0<E> {

        public final Set f66025b;

        public C12484h(Set set) {
            this.f66025b = set;
        }

        @Override
        public Set<E> k0() {
            return this.f66025b;
        }

        @Override
        public boolean add(@InterfaceC12518f2 E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }
    }

    public class C12485i<E> extends O0<E> {

        public final SortedSet f66026b;

        public C12485i(SortedSet sortedSet) {
            this.f66026b = sortedSet;
        }

        @Override
        public SortedSet<E> k0() {
            return this.f66026b;
        }

        @Override
        public boolean add(@InterfaceC12518f2 E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public SortedSet<E> headSet(@InterfaceC12518f2 E e10) {
            return Q1.n0(super.headSet(e10));
        }

        @Override
        public SortedSet<E> subSet(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
            return Q1.n0(super.subSet(e10, e11));
        }

        @Override
        public SortedSet<E> tailSet(@InterfaceC12518f2 E e10) {
            return Q1.n0(super.tailSet(e10));
        }
    }

    public class C12486j<E> extends H0<E> {

        public final NavigableSet f66027b;

        public C12486j(NavigableSet navigableSet) {
            this.f66027b = navigableSet;
        }

        @Override
        public NavigableSet<E> k0() {
            return this.f66027b;
        }

        @Override
        public boolean add(@InterfaceC12518f2 E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public NavigableSet<E> descendingSet() {
            return Q1.l0(super.descendingSet());
        }

        @Override
        public SortedSet<E> headSet(@InterfaceC12518f2 E e10) {
            return Q1.n0(super.headSet(e10));
        }

        @Override
        public SortedSet<E> subSet(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
            return Q1.n0(super.subSet(e10, e11));
        }

        @Override
        public SortedSet<E> tailSet(@InterfaceC12518f2 E e10) {
            return Q1.n0(super.tailSet(e10));
        }

        @Override
        public NavigableSet<E> headSet(@InterfaceC12518f2 E e10, boolean z10) {
            return Q1.l0(super.headSet(e10, z10));
        }

        @Override
        public NavigableSet<E> subSet(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
            return Q1.l0(super.subSet(e10, z10, e11, z11));
        }

        @Override
        public NavigableSet<E> tailSet(@InterfaceC12518f2 E e10, boolean z10) {
            return Q1.l0(super.tailSet(e10, z10));
        }
    }

    public class C12487k<K, V> extends AbstractC12519g<K, V> {

        public final Map.Entry f66028b;

        public C12487k(Map.Entry entry) {
            this.f66028b = entry;
        }

        @Override
        @InterfaceC12518f2
        public K getKey() {
            return (K) this.f66028b.getKey();
        }

        @Override
        @InterfaceC12518f2
        public V getValue() {
            return (V) this.f66028b.getValue();
        }
    }

    public class C12488l<K, V> extends e3<Map.Entry<K, V>> {

        public final Iterator f66029b;

        public C12488l(Iterator it) {
            this.f66029b = it;
        }

        @Override
        public Map.Entry<K, V> next() {
            return Q1.H0((Map.Entry) this.f66029b.next());
        }

        @Override
        public boolean hasNext() {
            return this.f66029b.hasNext();
        }
    }

    public class C12489m<K, V1, V2> implements t<K, V1, V2> {

        public final InterfaceC15902t f66030a;

        public C12489m(InterfaceC15902t interfaceC15902t) {
            this.f66030a = interfaceC15902t;
        }

        @Override
        @InterfaceC12518f2
        public V2 a(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V1 v12) {
            return (V2) this.f66030a.apply(v12);
        }
    }

    public static abstract class AbstractC12490n<K, V> extends R<K, V> {

        public final Map<K, V> f66031e;

        public final w2.I<? super Map.Entry<K, V>> f66032f;

        public AbstractC12490n(Map<K, V> map, w2.I<? super Map.Entry<K, V>> i10) {
            this.f66031e = map;
            this.f66032f = i10;
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66031e.containsKey(obj) && k(obj, this.f66031e.get(obj));
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            V v10 = this.f66031e.get(obj);
            if (v10 == null || !k(obj, v10)) {
                return null;
            }
            return v10;
        }

        @Override
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override
        public Collection<V> j() {
            return new z(this, this.f66031e, this.f66032f);
        }

        public boolean k(@CheckForNull Object obj, @InterfaceC12518f2 V v10) {
            return this.f66032f.apply(Q1.O(obj, v10));
        }

        @Override
        @CheckForNull
        public V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            w2.H.d(k(k10, v10));
            return this.f66031e.put(k10, v10);
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                w2.H.d(k(entry.getKey(), entry.getValue()));
            }
            this.f66031e.putAll(map);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            if (containsKey(obj)) {
                return this.f66031e.remove(obj);
            }
            return null;
        }
    }

    public static class C12491o<K, V> extends R<K, V> {

        public final Set<K> f66033e;

        public final InterfaceC15902t<? super K, V> f66034f;

        public class a extends s<K, V> {
            public a() {
            }

            @Override
            public Map<K, V> a() {
                return C12491o.this;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return Q1.m(C12491o.this.k(), C12491o.this.f66034f);
            }
        }

        public C12491o(Set<K> set, InterfaceC15902t<? super K, V> interfaceC15902t) {
            this.f66033e = (Set) w2.H.E(set);
            this.f66034f = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        }

        @Override
        public void clear() {
            k().clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return k().contains(obj);
        }

        @Override
        public Set<Map.Entry<K, V>> e() {
            return new a();
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            if (com.google.common.collect.C.j(k(), obj)) {
                return this.f66034f.apply(obj);
            }
            return null;
        }

        @Override
        public Set<K> n() {
            return Q1.m0(k());
        }

        @Override
        public Collection<V> j() {
            return com.google.common.collect.C.m(this.f66033e, this.f66034f);
        }

        public Set<K> k() {
            return this.f66033e;
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            if (k().remove(obj)) {
                return this.f66034f.apply(obj);
            }
            return null;
        }

        @Override
        public int size() {
            return k().size();
        }
    }

    public static final class C12492p<A, B> extends AbstractC15892i<A, B> implements Serializable {

        public static final long f66036e = 0;

        public final InterfaceC12582w<A, B> f66037d;

        public C12492p(InterfaceC12582w<A, B> interfaceC12582w) {
            this.f66037d = (InterfaceC12582w) w2.H.E(interfaceC12582w);
        }

        public static <X, Y> Y p(InterfaceC12582w<X, Y> interfaceC12582w, X x10) {
            Y y10 = interfaceC12582w.get(x10);
            w2.H.u(y10 != null, "No non-null mapping present for input: %s", x10);
            return y10;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof C12492p) {
                return this.f66037d.equals(((C12492p) obj).f66037d);
            }
            return false;
        }

        @Override
        public A g(B b10) {
            return (A) p(this.f66037d.A8(), b10);
        }

        public int hashCode() {
            return this.f66037d.hashCode();
        }

        @Override
        public B i(A a10) {
            return (B) p(this.f66037d, a10);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f66037d);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
            sb2.append("Maps.asConverter(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    @v2.c
    public static abstract class AbstractC12493q<K, V> extends C0<K, V> implements NavigableMap<K, V> {

        @CheckForNull
        public transient Comparator<? super K> f66038b;

        @CheckForNull
        public transient Set<Map.Entry<K, V>> f66039c;

        @CheckForNull
        public transient NavigableSet<K> f66040d;

        public class a extends s<K, V> {
            public a() {
            }

            @Override
            public Map<K, V> a() {
                return AbstractC12493q.this;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return AbstractC12493q.this.C0();
            }
        }

        private static <T> Ordering<T> E0(Comparator<T> comparator) {
            return Ordering.i(comparator).F();
        }

        public Set<Map.Entry<K, V>> B0() {
            return new a();
        }

        public abstract Iterator<Map.Entry<K, V>> C0();

        public abstract NavigableMap<K, V> D0();

        @Override
        @CheckForNull
        public Map.Entry<K, V> ceilingEntry(@InterfaceC12518f2 K k10) {
            return D0().floorEntry(k10);
        }

        @Override
        @CheckForNull
        public K ceilingKey(@InterfaceC12518f2 K k10) {
            return D0().floorKey(k10);
        }

        @Override
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.f66038b;
            if (comparator != null) {
                return comparator;
            }
            Comparator<? super K> comparator2 = D0().comparator();
            if (comparator2 == null) {
                comparator2 = Ordering.A();
            }
            Ordering E02 = E0(comparator2);
            this.f66038b = E02;
            return E02;
        }

        @Override
        public NavigableSet<K> descendingKeySet() {
            return D0().navigableKeySet();
        }

        @Override
        public NavigableMap<K, V> descendingMap() {
            return D0();
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f66039c;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> B02 = B0();
            this.f66039c = B02;
            return B02;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> firstEntry() {
            return D0().lastEntry();
        }

        @Override
        @InterfaceC12518f2
        public K firstKey() {
            return D0().lastKey();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> floorEntry(@InterfaceC12518f2 K k10) {
            return D0().ceilingEntry(k10);
        }

        @Override
        @CheckForNull
        public K floorKey(@InterfaceC12518f2 K k10) {
            return D0().ceilingKey(k10);
        }

        @Override
        public NavigableMap<K, V> headMap(@InterfaceC12518f2 K k10, boolean z10) {
            return D0().tailMap(k10, z10).descendingMap();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> higherEntry(@InterfaceC12518f2 K k10) {
            return D0().lowerEntry(k10);
        }

        @Override
        @CheckForNull
        public K higherKey(@InterfaceC12518f2 K k10) {
            return D0().lowerKey(k10);
        }

        @Override
        public Set<K> o() {
            return navigableKeySet();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> lastEntry() {
            return D0().firstEntry();
        }

        @Override
        @InterfaceC12518f2
        public K lastKey() {
            return D0().firstKey();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> lowerEntry(@InterfaceC12518f2 K k10) {
            return D0().higherEntry(k10);
        }

        @Override
        @CheckForNull
        public K lowerKey(@InterfaceC12518f2 K k10) {
            return D0().higherKey(k10);
        }

        @Override
        public final Map<K, V> k0() {
            return D0();
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.f66040d;
            if (navigableSet != null) {
                return navigableSet;
            }
            E e10 = new E(this);
            this.f66040d = e10;
            return e10;
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> pollFirstEntry() {
            return D0().pollLastEntry();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> pollLastEntry() {
            return D0().pollFirstEntry();
        }

        @Override
        public NavigableMap<K, V> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return D0().subMap(k11, z11, k10, z10).descendingMap();
        }

        @Override
        public NavigableMap<K, V> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
            return D0().headMap(k10, z10).descendingMap();
        }

        @Override
        public String toString() {
            return z0();
        }

        @Override
        public Collection<V> values() {
            return new Q(this);
        }

        @Override
        public SortedMap<K, V> headMap(@InterfaceC12518f2 K k10) {
            return headMap(k10, false);
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

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class EnumC12494r implements InterfaceC15902t<Map.Entry<?, ?>, Object> {
        public static final EnumC12494r KEY = new a("KEY", 0);
        public static final EnumC12494r VALUE = new b("VALUE", 1);
        private static final EnumC12494r[] $VALUES = a();

        public enum a extends EnumC12494r {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            @CheckForNull
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        public enum b extends EnumC12494r {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            @CheckForNull
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        public EnumC12494r(String str, int i10) {
        }

        public static EnumC12494r[] a() {
            return new EnumC12494r[]{KEY, VALUE};
        }

        public static EnumC12494r valueOf(String str) {
            return (EnumC12494r) Enum.valueOf(EnumC12494r.class, str);
        }

        public static EnumC12494r[] values() {
            return (EnumC12494r[]) $VALUES.clone();
        }

        public EnumC12494r(String str, int i10, C12481e c12481e) {
            this(str, i10);
        }
    }

    public static abstract class s<K, V> extends D2.k<Map.Entry<K, V>> {
        public abstract Map<K, V> a();

        @Override
        public void clear() {
            a().clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object p02 = Q1.p0(a(), key);
            if (w2.B.a(p02, entry.getValue())) {
                return p02 != null || a().containsKey(key);
            }
            return false;
        }

        @Override
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return a().o().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) w2.H.E(collection));
            } catch (UnsupportedOperationException unused) {
                return D2.J(this, collection.iterator());
            }
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) w2.H.E(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet y10 = D2.y(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        y10.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().o().retainAll(y10);
            }
        }

        @Override
        public int size() {
            return a().size();
        }
    }

    public interface t<K, V1, V2> {
        V2 a(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V1 v12);
    }

    public static final class u<K, V> extends v<K, V> implements InterfaceC12582w<K, V> {

        @q3.h
        public final InterfaceC12582w<V, K> f66042h;

        public class a implements w2.I<Map.Entry<V, K>> {

            public final w2.I f66043b;

            public a(w2.I i10) {
                this.f66043b = i10;
            }

            @Override
            public boolean apply(Map.Entry<V, K> entry) {
                return this.f66043b.apply(Q1.O(entry.getValue(), entry.getKey()));
            }
        }

        public u(InterfaceC12582w<K, V> interfaceC12582w, w2.I<? super Map.Entry<K, V>> i10) {
            super(interfaceC12582w, i10);
            this.f66042h = new u(interfaceC12582w.A8(), n(i10), this);
        }

        public static <K, V> w2.I<Map.Entry<V, K>> n(w2.I<? super Map.Entry<K, V>> i10) {
            return new a(i10);
        }

        @Override
        public InterfaceC12582w<V, K> A8() {
            return this.f66042h;
        }

        @Override
        @CheckForNull
        public V U6(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            w2.H.d(k(k10, v10));
            return o().U6(k10, v10);
        }

        public InterfaceC12582w<K, V> o() {
            return (InterfaceC12582w) this.f66031e;
        }

        @Override
        public Set<V> values() {
            return this.f66042h.o();
        }

        public u(InterfaceC12582w<K, V> interfaceC12582w, w2.I<? super Map.Entry<K, V>> i10, InterfaceC12582w<V, K> interfaceC12582w2) {
            super(interfaceC12582w, i10);
            this.f66042h = interfaceC12582w2;
        }
    }

    public static class v<K, V> extends AbstractC12490n<K, V> {

        public final Set<Map.Entry<K, V>> f66044g;

        public class a extends K0<Map.Entry<K, V>> {

            public class C0987a extends V2<Map.Entry<K, V>, Map.Entry<K, V>> {

                public class C0988a extends D0<K, V> {

                    public final Map.Entry f66047b;

                    public C0988a(Map.Entry entry) {
                        this.f66047b = entry;
                    }

                    @Override
                    public Map.Entry<K, V> k0() {
                        return this.f66047b;
                    }

                    @Override
                    @InterfaceC12518f2
                    public V setValue(@InterfaceC12518f2 V v10) {
                        w2.H.d(v.this.k(getKey(), v10));
                        return (V) super.setValue(v10);
                    }
                }

                public C0987a(Iterator it) {
                    super(it);
                }

                @Override
                public Map.Entry<K, V> a(Map.Entry<K, V> entry) {
                    return new C0988a(entry);
                }
            }

            public a() {
            }

            @Override
            public Set<Map.Entry<K, V>> k0() {
                return v.this.f66044g;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C0987a(v.this.f66044g.iterator());
            }

            public a(v vVar, C12481e c12481e) {
                this();
            }
        }

        public class b extends B<K, V> {
            public b() {
                super(v.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!v.this.containsKey(obj)) {
                    return false;
                }
                v.this.f66031e.remove(obj);
                return true;
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                v vVar = v.this;
                return v.l(vVar.f66031e, vVar.f66032f, collection);
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                v vVar = v.this;
                return v.m(vVar.f66031e, vVar.f66032f, collection);
            }

            @Override
            public Object[] toArray() {
                return M1.s(iterator()).toArray();
            }

            @Override
            public <T> T[] toArray(T[] tArr) {
                return (T[]) M1.s(iterator()).toArray(tArr);
            }
        }

        public v(Map<K, V> map, w2.I<? super Map.Entry<K, V>> i10) {
            super(map, i10);
            this.f66044g = D2.i(map.entrySet(), this.f66032f);
        }

        public static <K, V> boolean l(Map<K, V> map, w2.I<? super Map.Entry<K, V>> i10, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (i10.apply(next) && collection.contains(next.getKey())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        public static <K, V> boolean m(Map<K, V> map, w2.I<? super Map.Entry<K, V>> i10, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (i10.apply(next) && !collection.contains(next.getKey())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public Set<Map.Entry<K, V>> e() {
            return new a(this, null);
        }

        @Override
        public Set<K> n() {
            return new b();
        }
    }

    @v2.c
    public static class w<K, V> extends AbstractC12531j<K, V> {

        public final NavigableMap<K, V> f66050b;

        public final w2.I<? super Map.Entry<K, V>> f66051c;

        public final Map<K, V> f66052d;

        public class a extends E<K, V> {
            public a(NavigableMap navigableMap) {
                super(navigableMap);
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                return v.l(w.this.f66050b, w.this.f66051c, collection);
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return v.m(w.this.f66050b, w.this.f66051c, collection);
            }
        }

        public w(NavigableMap<K, V> navigableMap, w2.I<? super Map.Entry<K, V>> i10) {
            this.f66050b = (NavigableMap) w2.H.E(navigableMap);
            this.f66051c = i10;
            this.f66052d = new v(navigableMap, i10);
        }

        @Override
        public void clear() {
            this.f66052d.clear();
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return this.f66050b.comparator();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66052d.containsKey(obj);
        }

        @Override
        public NavigableMap<K, V> descendingMap() {
            return Q1.z(this.f66050b.descendingMap(), this.f66051c);
        }

        @Override
        public Iterator<Map.Entry<K, V>> e() {
            return E1.y(this.f66050b.entrySet().iterator(), this.f66051c);
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return this.f66052d.entrySet();
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return this.f66052d.get(obj);
        }

        @Override
        public NavigableMap<K, V> headMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.z(this.f66050b.headMap(k10, z10), this.f66051c);
        }

        @Override
        public Iterator<Map.Entry<K, V>> i() {
            return E1.y(this.f66050b.descendingMap().entrySet().iterator(), this.f66051c);
        }

        @Override
        public boolean isEmpty() {
            return !D1.c(this.f66050b.entrySet(), this.f66051c);
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            return new a(this);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) D1.I(this.f66050b.entrySet(), this.f66051c);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) D1.I(this.f66050b.descendingMap().entrySet(), this.f66051c);
        }

        @Override
        @CheckForNull
        public V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            return this.f66052d.put(k10, v10);
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f66052d.putAll(map);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            return this.f66052d.remove(obj);
        }

        @Override
        public int size() {
            return this.f66052d.size();
        }

        @Override
        public NavigableMap<K, V> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return Q1.z(this.f66050b.subMap(k10, z10, k11, z11), this.f66051c);
        }

        @Override
        public NavigableMap<K, V> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
            return Q1.z(this.f66050b.tailMap(k10, z10), this.f66051c);
        }

        @Override
        public Collection<V> values() {
            return new z(this, this.f66050b, this.f66051c);
        }
    }

    public static class x<K, V> extends v<K, V> implements SortedMap<K, V> {

        public class a extends v<K, V>.b implements SortedSet<K> {
            public a() {
                super();
            }

            @Override
            @CheckForNull
            public Comparator<? super K> comparator() {
                return x.this.p().comparator();
            }

            @Override
            @InterfaceC12518f2
            public K first() {
                return (K) x.this.firstKey();
            }

            @Override
            public SortedSet<K> headSet(@InterfaceC12518f2 K k10) {
                return (SortedSet) x.this.headMap(k10).o();
            }

            @Override
            @InterfaceC12518f2
            public K last() {
                return (K) x.this.lastKey();
            }

            @Override
            public SortedSet<K> subSet(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
                return (SortedSet) x.this.subMap(k10, k11).o();
            }

            @Override
            public SortedSet<K> tailSet(@InterfaceC12518f2 K k10) {
                return (SortedSet) x.this.tailMap(k10).o();
            }
        }

        public x(SortedMap<K, V> sortedMap, w2.I<? super Map.Entry<K, V>> i10) {
            super(sortedMap, i10);
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return p().comparator();
        }

        @Override
        @InterfaceC12518f2
        public K firstKey() {
            return keySet().iterator().next();
        }

        @Override
        public SortedMap<K, V> headMap(@InterfaceC12518f2 K k10) {
            return new x(p().headMap(k10), this.f66032f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @InterfaceC12518f2
        public K lastKey() {
            SortedMap<K, V> p10 = p();
            while (true) {
                K lastKey = p10.lastKey();
                if (k(lastKey, Z1.a(this.f66031e.get(lastKey)))) {
                    return lastKey;
                }
                p10 = p().headMap(lastKey);
            }
        }

        @Override
        public SortedSet<K> n() {
            return new a();
        }

        @Override
        public SortedSet<K> o() {
            return (SortedSet) super.o();
        }

        public SortedMap<K, V> p() {
            return (SortedMap) this.f66031e;
        }

        @Override
        public SortedMap<K, V> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return new x(p().subMap(k10, k11), this.f66032f);
        }

        @Override
        public SortedMap<K, V> tailMap(@InterfaceC12518f2 K k10) {
            return new x(p().tailMap(k10), this.f66032f);
        }
    }

    public static class y<K, V> extends AbstractC12490n<K, V> {

        public final w2.I<? super K> f66055g;

        public y(Map<K, V> map, w2.I<? super K> i10, w2.I<? super Map.Entry<K, V>> i11) {
            super(map, i11);
            this.f66055g = i10;
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66031e.containsKey(obj) && this.f66055g.apply(obj);
        }

        @Override
        public Set<Map.Entry<K, V>> e() {
            return D2.i(this.f66031e.entrySet(), this.f66032f);
        }

        @Override
        public Set<K> n() {
            return D2.i(this.f66031e.o(), this.f66055g);
        }
    }

    public static final class z<K, V> extends Q<K, V> {

        public final Map<K, V> f66056c;

        public final w2.I<? super Map.Entry<K, V>> f66057d;

        public z(Map<K, V> map, Map<K, V> map2, w2.I<? super Map.Entry<K, V>> i10) {
            super(map);
            this.f66056c = map2;
            this.f66057d = i10;
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            Iterator<Map.Entry<K, V>> it = this.f66056c.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f66057d.apply(next) && w2.B.a(next.getValue(), obj)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f66056c.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f66057d.apply(next) && collection.contains(next.getValue())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f66056c.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f66057d.apply(next) && !collection.contains(next.getValue())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public Object[] toArray() {
            return M1.s(iterator()).toArray();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) M1.s(iterator()).toArray(tArr);
        }
    }

    public static <K, V> SortedMap<K, V> A(SortedMap<K, V> sortedMap, w2.I<? super Map.Entry<K, V>> i10) {
        w2.H.E(i10);
        return sortedMap instanceof x ? E((x) sortedMap, i10) : new x((SortedMap) w2.H.E(sortedMap), i10);
    }

    public static <V2, K, V1> Map.Entry<K, V2> A0(t<? super K, ? super V1, V2> tVar, Map.Entry<K, V1> entry) {
        w2.H.E(tVar);
        w2.H.E(entry);
        return new C12479c(entry, tVar);
    }

    public static <K, V> InterfaceC12582w<K, V> B(u<K, V> uVar, w2.I<? super Map.Entry<K, V>> i10) {
        return new u(uVar.o(), w2.J.e(uVar.f66032f, i10));
    }

    public static <K, V1, V2> Map<K, V2> B0(Map<K, V1> map, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        return x0(map, i(interfaceC15902t));
    }

    public static <K, V> Map<K, V> C(AbstractC12490n<K, V> abstractC12490n, w2.I<? super Map.Entry<K, V>> i10) {
        return new v(abstractC12490n.f66031e, w2.J.e(abstractC12490n.f66032f, i10));
    }

    @v2.c
    public static <K, V1, V2> NavigableMap<K, V2> C0(NavigableMap<K, V1> navigableMap, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        return y0(navigableMap, i(interfaceC15902t));
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> D(w<K, V> wVar, w2.I<? super Map.Entry<K, V>> i10) {
        return new w(wVar.f66050b, w2.J.e(wVar.f66051c, i10));
    }

    public static <K, V1, V2> SortedMap<K, V2> D0(SortedMap<K, V1> sortedMap, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        return z0(sortedMap, i(interfaceC15902t));
    }

    public static <K, V> SortedMap<K, V> E(x<K, V> xVar, w2.I<? super Map.Entry<K, V>> i10) {
        return new x(xVar.p(), w2.J.e(xVar.f66032f, i10));
    }

    @I2.a
    public static <K, V> AbstractC12529i1<K, V> E0(Iterable<V> iterable, InterfaceC15902t<? super V, K> interfaceC15902t) {
        return F0(iterable.iterator(), interfaceC15902t);
    }

    public static <K, V> InterfaceC12582w<K, V> F(InterfaceC12582w<K, V> interfaceC12582w, w2.I<? super K> i10) {
        w2.H.E(i10);
        return x(interfaceC12582w, U(i10));
    }

    @I2.a
    public static <K, V> AbstractC12529i1<K, V> F0(Iterator<V> it, InterfaceC15902t<? super V, K> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        while (it.hasNext()) {
            V next = it.next();
            i10.i(interfaceC15902t.apply(next), next);
        }
        try {
            return i10.d();
        } catch (IllegalArgumentException e10) {
            throw new IllegalArgumentException(String.valueOf(e10.getMessage()).concat(". To index multiple values under a key, use Multimaps.index."));
        }
    }

    public static <K, V> Map<K, V> G(Map<K, V> map, w2.I<? super K> i10) {
        w2.H.E(i10);
        w2.I U10 = U(i10);
        return map instanceof AbstractC12490n ? C((AbstractC12490n) map, U10) : new y((Map) w2.H.E(map), i10, U10);
    }

    public static <K, V> InterfaceC12582w<K, V> G0(InterfaceC12582w<? extends K, ? extends V> interfaceC12582w) {
        return new L(interfaceC12582w, null);
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> H(NavigableMap<K, V> navigableMap, w2.I<? super K> i10) {
        return z(navigableMap, U(i10));
    }

    public static <K, V> Map.Entry<K, V> H0(Map.Entry<? extends K, ? extends V> entry) {
        w2.H.E(entry);
        return new C12487k(entry);
    }

    public static <K, V> SortedMap<K, V> I(SortedMap<K, V> sortedMap, w2.I<? super K> i10) {
        return A(sortedMap, U(i10));
    }

    public static <K, V> e3<Map.Entry<K, V>> I0(Iterator<Map.Entry<K, V>> it) {
        return new C12488l(it);
    }

    public static <K, V> InterfaceC12582w<K, V> J(InterfaceC12582w<K, V> interfaceC12582w, w2.I<? super V> i10) {
        return x(interfaceC12582w, Q0(i10));
    }

    public static <K, V> Set<Map.Entry<K, V>> J0(Set<Map.Entry<K, V>> set) {
        return new N(Collections.unmodifiableSet(set));
    }

    public static <K, V> Map<K, V> K(Map<K, V> map, w2.I<? super V> i10) {
        return y(map, Q0(i10));
    }

    public static <K, V> Map<K, V> K0(Map<K, ? extends V> map) {
        return map instanceof SortedMap ? Collections.unmodifiableSortedMap((SortedMap) map) : Collections.unmodifiableMap(map);
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> L(NavigableMap<K, V> navigableMap, w2.I<? super V> i10) {
        return z(navigableMap, Q0(i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.c
    public static <K, V> NavigableMap<K, V> L0(NavigableMap<K, ? extends V> navigableMap) {
        w2.H.E(navigableMap);
        return navigableMap instanceof O ? navigableMap : new O(navigableMap);
    }

    public static <K, V> SortedMap<K, V> M(SortedMap<K, V> sortedMap, w2.I<? super V> i10) {
        return A(sortedMap, Q0(i10));
    }

    @CheckForNull
    public static <K, V> Map.Entry<K, V> M0(@CheckForNull Map.Entry<K, ? extends V> entry) {
        if (entry == null) {
            return null;
        }
        return H0(entry);
    }

    @v2.c
    public static AbstractC12529i1<String, String> N(Properties properties) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            Object nextElement = propertyNames.nextElement();
            Objects.requireNonNull(nextElement);
            String str = (String) nextElement;
            String property = properties.getProperty(str);
            Objects.requireNonNull(property);
            i10.i(str, property);
        }
        return i10.d();
    }

    public static <V> InterfaceC15902t<Map.Entry<?, V>, V> N0() {
        return EnumC12494r.VALUE;
    }

    @v2.b(serializable = true)
    public static <K, V> Map.Entry<K, V> O(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return new C12509d1(k10, v10);
    }

    public static <K, V> Iterator<V> O0(Iterator<Map.Entry<K, V>> it) {
        return new C12482f(it);
    }

    @v2.b(serializable = true)
    public static <K extends Enum<K>, V> AbstractC12529i1<K, V> P(Map<K, ? extends V> map) {
        if (map instanceof C12513e1) {
            return (C12513e1) map;
        }
        Iterator<Map.Entry<K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return AbstractC12529i1.y();
        }
        Map.Entry<K, ? extends V> next = it.next();
        K key = next.getKey();
        V value = next.getValue();
        com.google.common.collect.B.a(key, value);
        EnumMap enumMap = new EnumMap(key.getDeclaringClass());
        enumMap.put((EnumMap) key, (K) value);
        while (it.hasNext()) {
            Map.Entry<K, ? extends V> next2 = it.next();
            K key2 = next2.getKey();
            V value2 = next2.getValue();
            com.google.common.collect.B.a(key2, value2);
            enumMap.put((EnumMap) key2, (K) value2);
        }
        return C12513e1.O(enumMap);
    }

    @CheckForNull
    public static <V> V P0(@CheckForNull Map.Entry<?, V> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public static <E> AbstractC12529i1<E, Integer> Q(Collection<E> collection) {
        AbstractC12529i1.b bVar = new AbstractC12529i1.b(collection.size());
        Iterator<E> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            bVar.i(it.next(), Integer.valueOf(i10));
            i10++;
        }
        return bVar.d();
    }

    public static <V> w2.I<Map.Entry<?, V>> Q0(w2.I<? super V> i10) {
        return w2.J.h(i10, N0());
    }

    public static <K> InterfaceC15902t<Map.Entry<K, ?>, K> R() {
        return EnumC12494r.KEY;
    }

    public static <K, V> Iterator<K> S(Iterator<Map.Entry<K, V>> it) {
        return new C12481e(it);
    }

    @CheckForNull
    public static <K> K T(@CheckForNull Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static <K> w2.I<Map.Entry<K, ?>> U(w2.I<? super K> i10) {
        return w2.J.h(i10, R());
    }

    public static <K, V> ConcurrentMap<K, V> V() {
        return new ConcurrentHashMap();
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> W(Class<K> cls) {
        return new EnumMap<>((Class) w2.H.E(cls));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> X(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> HashMap<K, V> Y() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> Z(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> HashMap<K, V> a0(int i10) {
        return new HashMap<>(o(i10));
    }

    public static <K, V> IdentityHashMap<K, V> b0() {
        return new IdentityHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> c0() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> d0(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> e0(int i10) {
        return new LinkedHashMap<>(o(i10));
    }

    public static <A, B> AbstractC15892i<A, B> f(InterfaceC12582w<A, B> interfaceC12582w) {
        return new C12492p(interfaceC12582w);
    }

    public static <K extends Comparable, V> TreeMap<K, V> f0() {
        return new TreeMap<>();
    }

    public static <K, V1, V2> InterfaceC15902t<Map.Entry<K, V1>, Map.Entry<K, V2>> g(t<? super K, ? super V1, V2> tVar) {
        w2.H.E(tVar);
        return new C12480d(tVar);
    }

    public static <C, K extends C, V> TreeMap<K, V> g0(@CheckForNull Comparator<C> comparator) {
        return new TreeMap<>(comparator);
    }

    public static <K, V1, V2> InterfaceC15902t<Map.Entry<K, V1>, V2> h(t<? super K, ? super V1, V2> tVar) {
        w2.H.E(tVar);
        return new C12478b(tVar);
    }

    public static <K, V> TreeMap<K, V> h0(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    public static <K, V1, V2> t<K, V1, V2> i(InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        return new C12489m(interfaceC15902t);
    }

    public static <E> Comparator<? super E> i0(@CheckForNull Comparator<? super E> comparator) {
        return comparator != null ? comparator : Ordering.A();
    }

    public static <K, V> Map<K, V> j(Set<K> set, InterfaceC15902t<? super K, V> interfaceC15902t) {
        return new C12491o(set, interfaceC15902t);
    }

    public static <K, V> void j0(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> k(NavigableSet<K> navigableSet, InterfaceC15902t<? super K, V> interfaceC15902t) {
        return new D(navigableSet, interfaceC15902t);
    }

    public static <K, V> boolean k0(Collection<Map.Entry<K, V>> collection, @CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.remove(H0((Map.Entry) obj));
        }
        return false;
    }

    public static <K, V> SortedMap<K, V> l(SortedSet<K> sortedSet, InterfaceC15902t<? super K, V> interfaceC15902t) {
        return new F(sortedSet, interfaceC15902t);
    }

    @v2.c
    public static <E> NavigableSet<E> l0(NavigableSet<E> navigableSet) {
        return new C12486j(navigableSet);
    }

    public static <K, V> Iterator<Map.Entry<K, V>> m(Set<K> set, InterfaceC15902t<? super K, V> interfaceC15902t) {
        return new C12483g(set.iterator(), interfaceC15902t);
    }

    public static <E> Set<E> m0(Set<E> set) {
        return new C12484h(set);
    }

    public static <K, V1, V2> InterfaceC15902t<V1, V2> n(t<? super K, V1, V2> tVar, @InterfaceC12518f2 K k10) {
        w2.H.E(tVar);
        return new C12477a(tVar, k10);
    }

    public static <E> SortedSet<E> n0(SortedSet<E> sortedSet) {
        return new C12485i(sortedSet);
    }

    public static int o(int i10) {
        if (i10 < 3) {
            com.google.common.collect.B.b(i10, "expectedSize");
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static boolean o0(Map<?, ?> map, @CheckForNull Object obj) {
        w2.H.E(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static <K, V> boolean p(Collection<Map.Entry<K, V>> collection, @CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(H0((Map.Entry) obj));
        }
        return false;
    }

    @CheckForNull
    public static <V> V p0(Map<?, V> map, @CheckForNull Object obj) {
        w2.H.E(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static boolean q(Map<?, ?> map, @CheckForNull Object obj) {
        return E1.q(S(map.entrySet().iterator()), obj);
    }

    @CheckForNull
    public static <V> V q0(Map<?, V> map, @CheckForNull Object obj) {
        w2.H.E(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static boolean r(Map<?, ?> map, @CheckForNull Object obj) {
        return E1.q(O0(map.entrySet().iterator()), obj);
    }

    @v2.c
    @InterfaceC15800a
    public static <K extends Comparable<? super K>, V> NavigableMap<K, V> r0(NavigableMap<K, V> navigableMap, C12534j2<K> c12534j2) {
        if (navigableMap.comparator() != null && navigableMap.comparator() != Ordering.A() && c12534j2.q() && c12534j2.r()) {
            w2.H.e(navigableMap.comparator().compare(c12534j2.z(), c12534j2.L()) <= 0, "map is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (c12534j2.q() && c12534j2.r()) {
            K z10 = c12534j2.z();
            EnumC12586x y10 = c12534j2.y();
            EnumC12586x enumC12586x = EnumC12586x.CLOSED;
            return navigableMap.subMap(z10, y10 == enumC12586x, c12534j2.L(), c12534j2.K() == enumC12586x);
        }
        if (c12534j2.q()) {
            return navigableMap.tailMap(c12534j2.z(), c12534j2.y() == EnumC12586x.CLOSED);
        }
        if (c12534j2.r()) {
            return navigableMap.headMap(c12534j2.L(), c12534j2.K() == EnumC12586x.CLOSED);
        }
        return (NavigableMap) w2.H.E(navigableMap);
    }

    public static <K, V> N1<K, V> s(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        return map instanceof SortedMap ? u((SortedMap) map, map2) : t(map, map2, AbstractC15896m.c());
    }

    public static <K, V> InterfaceC12582w<K, V> s0(InterfaceC12582w<K, V> interfaceC12582w) {
        return R2.g(interfaceC12582w, null);
    }

    public static <K, V> N1<K, V> t(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, AbstractC15896m<? super V> abstractC15896m) {
        w2.H.E(abstractC15896m);
        LinkedHashMap c02 = c0();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap c03 = c0();
        LinkedHashMap c04 = c0();
        v(map, map2, abstractC15896m, c02, linkedHashMap, c03, c04);
        return new C(c02, linkedHashMap, c03, c04);
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> t0(NavigableMap<K, V> navigableMap) {
        return R2.o(navigableMap);
    }

    public static <K, V> J2<K, V> u(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        w2.H.E(sortedMap);
        w2.H.E(map);
        Comparator i02 = i0(sortedMap.comparator());
        TreeMap g02 = g0(i02);
        TreeMap g03 = g0(i02);
        g03.putAll(map);
        TreeMap g04 = g0(i02);
        TreeMap g05 = g0(i02);
        v(sortedMap, map, AbstractC15896m.c(), g02, g03, g04, g05);
        return new H(g02, g03, g04, g05);
    }

    public static <K, V> AbstractC12529i1<K, V> u0(Iterable<K> iterable, InterfaceC15902t<? super K, V> interfaceC15902t) {
        return v0(iterable.iterator(), interfaceC15902t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void v(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, AbstractC15896m<? super V> abstractC15896m, Map<K, V> map3, Map<K, V> map4, Map<K, V> map5, Map<K, N1.a<V>> map6) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (map2.containsKey(key)) {
                A.c cVar = (Object) Z1.a(map4.remove(key));
                if (abstractC15896m.d(value, cVar)) {
                    map5.put(key, value);
                } else {
                    map6.put(key, P.c(value, cVar));
                }
            } else {
                map3.put(key, value);
            }
        }
    }

    public static <K, V> AbstractC12529i1<K, V> v0(Iterator<K> it, InterfaceC15902t<? super K, V> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        while (it.hasNext()) {
            K next = it.next();
            i10.i(next, interfaceC15902t.apply(next));
        }
        return i10.c();
    }

    public static boolean w(Map<?, ?> map, @CheckForNull Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static String w0(Map<?, ?> map) {
        StringBuilder f10 = com.google.common.collect.C.f(map.size());
        f10.append(JavaElement.JEM_COMPILATIONUNIT);
        boolean z10 = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z10) {
                f10.append(", ");
            }
            f10.append(entry.getKey());
            f10.append('=');
            f10.append(entry.getValue());
            z10 = false;
        }
        f10.append(JavaElement.JEM_ANNOTATION);
        return f10.toString();
    }

    public static <K, V> InterfaceC12582w<K, V> x(InterfaceC12582w<K, V> interfaceC12582w, w2.I<? super Map.Entry<K, V>> i10) {
        w2.H.E(interfaceC12582w);
        w2.H.E(i10);
        return interfaceC12582w instanceof u ? B((u) interfaceC12582w, i10) : new u(interfaceC12582w, i10);
    }

    public static <K, V1, V2> Map<K, V2> x0(Map<K, V1> map, t<? super K, ? super V1, V2> tVar) {
        return new I(map, tVar);
    }

    public static <K, V> Map<K, V> y(Map<K, V> map, w2.I<? super Map.Entry<K, V>> i10) {
        w2.H.E(i10);
        return map instanceof AbstractC12490n ? C((AbstractC12490n) map, i10) : new v((Map) w2.H.E(map), i10);
    }

    @v2.c
    public static <K, V1, V2> NavigableMap<K, V2> y0(NavigableMap<K, V1> navigableMap, t<? super K, ? super V1, V2> tVar) {
        return new J(navigableMap, tVar);
    }

    @v2.c
    public static <K, V> NavigableMap<K, V> z(NavigableMap<K, V> navigableMap, w2.I<? super Map.Entry<K, V>> i10) {
        w2.H.E(i10);
        return navigableMap instanceof w ? D((w) navigableMap, i10) : new w((NavigableMap) w2.H.E(navigableMap), i10);
    }

    public static <K, V1, V2> SortedMap<K, V2> z0(SortedMap<K, V1> sortedMap, t<? super K, ? super V1, V2> tVar) {
        return new K(sortedMap, tVar);
    }
}
