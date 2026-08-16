package com.google.common.collect;

import com.google.common.collect.AbstractC12523h;
import com.google.common.collect.Q1;
import com.google.common.collect.U1;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12511e<K, V> extends AbstractC12523h<K, V> implements Serializable {

    public static final long f66565i = 2447537837011683357L;

    public transient Map<K, Collection<V>> f66566g;

    public transient int f66567h;

    public class a extends AbstractC12511e<K, V>.d<V> {
        public a(AbstractC12511e abstractC12511e) {
            super();
        }

        @Override
        @InterfaceC12518f2
        public V a(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            return v10;
        }
    }

    public class b extends AbstractC12511e<K, V>.d<Map.Entry<K, V>> {
        public b(AbstractC12511e abstractC12511e) {
            super();
        }

        @Override
        public Map.Entry<K, V> a(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            return Q1.O(k10, v10);
        }
    }

    public class c extends Q1.R<K, Collection<V>> {

        public final transient Map<K, Collection<V>> f66568e;

        public class a extends Q1.s<K, Collection<V>> {
            public a() {
            }

            @Override
            public Map<K, Collection<V>> a() {
                return c.this;
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                return C.j(c.this.f66568e.entrySet(), obj);
            }

            @Override
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractC12511e.this.F(entry.getKey());
                return true;
            }
        }

        public class b implements Iterator<Map.Entry<K, Collection<V>>> {

            public final Iterator<Map.Entry<K, Collection<V>>> f66571b;

            @CheckForNull
            public Collection<V> f66572c;

            public b() {
                this.f66571b = c.this.f66568e.entrySet().iterator();
            }

            @Override
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f66571b.next();
                this.f66572c = next.getValue();
                return c.this.m(next);
            }

            @Override
            public boolean hasNext() {
                return this.f66571b.hasNext();
            }

            @Override
            public void remove() {
                w2.H.h0(this.f66572c != null, "no calls to next() since the last call to remove()");
                this.f66571b.remove();
                AbstractC12511e.r(AbstractC12511e.this, this.f66572c.size());
                this.f66572c.clear();
                this.f66572c = null;
            }
        }

        public c(Map<K, Collection<V>> map) {
            this.f66568e = map;
        }

        @Override
        public void clear() {
            if (this.f66568e == AbstractC12511e.this.f66566g) {
                AbstractC12511e.this.clear();
            } else {
                E1.h(new b());
            }
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return Q1.o0(this.f66568e, obj);
        }

        @Override
        public Set<Map.Entry<K, Collection<V>>> e() {
            return new a();
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return this == obj || this.f66568e.equals(obj);
        }

        @Override
        public int hashCode() {
            return this.f66568e.hashCode();
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object obj) {
            Collection<V> collection = (Collection) Q1.p0(this.f66568e, obj);
            if (collection == null) {
                return null;
            }
            return AbstractC12511e.this.I(obj, collection);
        }

        @Override
        public Set<K> o() {
            return AbstractC12511e.this.keySet();
        }

        @Override
        @CheckForNull
        public Collection<V> remove(@CheckForNull Object obj) {
            Collection<V> remove = this.f66568e.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> x10 = AbstractC12511e.this.x();
            x10.addAll(remove);
            AbstractC12511e.r(AbstractC12511e.this, remove.size());
            remove.clear();
            return x10;
        }

        public Map.Entry<K, Collection<V>> m(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Q1.O(key, AbstractC12511e.this.I(key, entry.getValue()));
        }

        @Override
        public int size() {
            return this.f66568e.size();
        }

        @Override
        public String toString() {
            return this.f66568e.toString();
        }
    }

    public abstract class d<T> implements Iterator<T> {

        public final Iterator<Map.Entry<K, Collection<V>>> f66574b;

        @CheckForNull
        public K f66575c = null;

        @CheckForNull
        public Collection<V> f66576d = null;

        public Iterator<V> f66577e = E1.w();

        public d() {
            this.f66574b = AbstractC12511e.this.f66566g.entrySet().iterator();
        }

        public abstract T a(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10);

        @Override
        public boolean hasNext() {
            return this.f66574b.hasNext() || this.f66577e.hasNext();
        }

        @Override
        public T next() {
            if (!this.f66577e.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f66574b.next();
                this.f66575c = next.getKey();
                Collection<V> value = next.getValue();
                this.f66576d = value;
                this.f66577e = value.iterator();
            }
            return a(Z1.a(this.f66575c), this.f66577e.next());
        }

        @Override
        public void remove() {
            this.f66577e.remove();
            Collection<V> collection = this.f66576d;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f66574b.remove();
            }
            AbstractC12511e.p(AbstractC12511e.this);
        }
    }

    public class C1002e extends Q1.B<K, Collection<V>> {

        public class a implements Iterator<K> {

            @CheckForNull
            public Map.Entry<K, Collection<V>> f66580b;

            public final Iterator f66581c;

            public a(Iterator it) {
                this.f66581c = it;
            }

            @Override
            public boolean hasNext() {
                return this.f66581c.hasNext();
            }

            @Override
            @InterfaceC12518f2
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f66581c.next();
                this.f66580b = entry;
                return entry.getKey();
            }

            @Override
            public void remove() {
                w2.H.h0(this.f66580b != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.f66580b.getValue();
                this.f66581c.remove();
                AbstractC12511e.r(AbstractC12511e.this, value.size());
                value.clear();
                this.f66580b = null;
            }
        }

        public C1002e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override
        public void clear() {
            E1.h(iterator());
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return h().o().containsAll(collection);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return this == obj || h().o().equals(obj);
        }

        @Override
        public int hashCode() {
            return h().o().hashCode();
        }

        @Override
        public Iterator<K> iterator() {
            return new a(h().entrySet().iterator());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            int i10;
            Collection<V> remove = h().remove(obj);
            if (remove != null) {
                i10 = remove.size();
                remove.clear();
                AbstractC12511e.r(AbstractC12511e.this, i10);
            } else {
                i10 = 0;
            }
            return i10 > 0;
        }
    }

    public class f extends AbstractC12511e<K, V>.i implements NavigableMap<K, Collection<V>> {
        public f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> ceilingEntry(@InterfaceC12518f2 K k10) {
            Map.Entry<K, Collection<V>> ceilingEntry = p().ceilingEntry(k10);
            if (ceilingEntry == null) {
                return null;
            }
            return m(ceilingEntry);
        }

        @Override
        @CheckForNull
        public K ceilingKey(@InterfaceC12518f2 K k10) {
            return p().ceilingKey(k10);
        }

        @Override
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new f(p().descendingMap());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = p().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return m(firstEntry);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> floorEntry(@InterfaceC12518f2 K k10) {
            Map.Entry<K, Collection<V>> floorEntry = p().floorEntry(k10);
            if (floorEntry == null) {
                return null;
            }
            return m(floorEntry);
        }

        @Override
        @CheckForNull
        public K floorKey(@InterfaceC12518f2 K k10) {
            return p().floorKey(k10);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> higherEntry(@InterfaceC12518f2 K k10) {
            Map.Entry<K, Collection<V>> higherEntry = p().higherEntry(k10);
            if (higherEntry == null) {
                return null;
            }
            return m(higherEntry);
        }

        @Override
        @CheckForNull
        public K higherKey(@InterfaceC12518f2 K k10) {
            return p().higherKey(k10);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = p().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return m(lastEntry);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> lowerEntry(@InterfaceC12518f2 K k10) {
            Map.Entry<K, Collection<V>> lowerEntry = p().lowerEntry(k10);
            if (lowerEntry == null) {
                return null;
            }
            return m(lowerEntry);
        }

        @Override
        @CheckForNull
        public K lowerKey(@InterfaceC12518f2 K k10) {
            return p().lowerKey(k10);
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return t(entrySet().iterator());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return t(descendingMap().entrySet().iterator());
        }

        @Override
        public NavigableSet<K> n() {
            return new g(p());
        }

        @Override
        public NavigableMap<K, Collection<V>> headMap(@InterfaceC12518f2 K k10) {
            return headMap(k10, false);
        }

        @Override
        public NavigableSet<K> o() {
            return (NavigableSet) super.o();
        }

        @CheckForNull
        public Map.Entry<K, Collection<V>> t(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> x10 = AbstractC12511e.this.x();
            x10.addAll(next.getValue());
            it.remove();
            return Q1.O(next.getKey(), AbstractC12511e.this.H(x10));
        }

        @Override
        public NavigableMap<K, Collection<V>> p() {
            return (NavigableMap) super.p();
        }

        @Override
        public NavigableMap<K, Collection<V>> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override
        public NavigableMap<K, Collection<V>> tailMap(@InterfaceC12518f2 K k10) {
            return tailMap(k10, true);
        }

        @Override
        public NavigableMap<K, Collection<V>> headMap(@InterfaceC12518f2 K k10, boolean z10) {
            return new f(p().headMap(k10, z10));
        }

        @Override
        public NavigableMap<K, Collection<V>> subMap(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return new f(p().subMap(k10, z10, k11, z11));
        }

        @Override
        public NavigableMap<K, Collection<V>> tailMap(@InterfaceC12518f2 K k10, boolean z10) {
            return new f(p().tailMap(k10, z10));
        }
    }

    public class g extends AbstractC12511e<K, V>.j implements NavigableSet<K> {
        public g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override
        @CheckForNull
        public K ceiling(@InterfaceC12518f2 K k10) {
            return h().ceilingKey(k10);
        }

        @Override
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet<K> descendingSet() {
            return new g(h().descendingMap());
        }

        @Override
        @CheckForNull
        public K floor(@InterfaceC12518f2 K k10) {
            return h().floorKey(k10);
        }

        @Override
        @CheckForNull
        public K higher(@InterfaceC12518f2 K k10) {
            return h().higherKey(k10);
        }

        @Override
        public NavigableSet<K> headSet(@InterfaceC12518f2 K k10) {
            return headSet(k10, false);
        }

        @Override
        public NavigableMap<K, Collection<V>> h() {
            return (NavigableMap) super.h();
        }

        @Override
        public NavigableSet<K> subSet(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override
        public NavigableSet<K> tailSet(@InterfaceC12518f2 K k10) {
            return tailSet(k10, true);
        }

        @Override
        @CheckForNull
        public K lower(@InterfaceC12518f2 K k10) {
            return h().lowerKey(k10);
        }

        @Override
        @CheckForNull
        public K pollFirst() {
            return (K) E1.U(iterator());
        }

        @Override
        @CheckForNull
        public K pollLast() {
            return (K) E1.U(descendingIterator());
        }

        @Override
        public NavigableSet<K> headSet(@InterfaceC12518f2 K k10, boolean z10) {
            return new g(h().headMap(k10, z10));
        }

        @Override
        public NavigableSet<K> subSet(@InterfaceC12518f2 K k10, boolean z10, @InterfaceC12518f2 K k11, boolean z11) {
            return new g(h().subMap(k10, z10, k11, z11));
        }

        @Override
        public NavigableSet<K> tailSet(@InterfaceC12518f2 K k10, boolean z10) {
            return new g(h().tailMap(k10, z10));
        }
    }

    public class h extends AbstractC12511e<K, V>.l implements RandomAccess {
        public h(@InterfaceC12518f2 AbstractC12511e abstractC12511e, K k10, @CheckForNull List<V> list, AbstractC12511e<K, V>.k kVar) {
            super(k10, list, kVar);
        }
    }

    public class i extends AbstractC12511e<K, V>.c implements SortedMap<K, Collection<V>> {

        @CheckForNull
        public SortedSet<K> f66585g;

        public i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return p().comparator();
        }

        @Override
        @InterfaceC12518f2
        public K firstKey() {
            return p().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(@InterfaceC12518f2 K k10) {
            return new i(p().headMap(k10));
        }

        @Override
        @InterfaceC12518f2
        public K lastKey() {
            return p().lastKey();
        }

        @Override
        public SortedSet<K> n() {
            return new j(p());
        }

        @Override
        public SortedSet<K> o() {
            SortedSet<K> sortedSet = this.f66585g;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> n10 = n();
            this.f66585g = n10;
            return n10;
        }

        public SortedMap<K, Collection<V>> p() {
            return (SortedMap) this.f66568e;
        }

        public SortedMap<K, Collection<V>> subMap(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return new i(p().subMap(k10, k11));
        }

        public SortedMap<K, Collection<V>> tailMap(@InterfaceC12518f2 K k10) {
            return new i(p().tailMap(k10));
        }
    }

    public class j extends AbstractC12511e<K, V>.C1002e implements SortedSet<K> {
        public j(SortedMap<K, Collection<V>> sortedMap) {
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

        public SortedMap<K, Collection<V>> h() {
            return (SortedMap) super.h();
        }

        public SortedSet<K> headSet(@InterfaceC12518f2 K k10) {
            return new j(h().headMap(k10));
        }

        @Override
        @InterfaceC12518f2
        public K last() {
            return h().lastKey();
        }

        public SortedSet<K> subSet(@InterfaceC12518f2 K k10, @InterfaceC12518f2 K k11) {
            return new j(h().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(@InterfaceC12518f2 K k10) {
            return new j(h().tailMap(k10));
        }
    }

    public class m extends AbstractC12511e<K, V>.o implements NavigableSet<V> {
        public m(@InterfaceC12518f2 K k10, NavigableSet<V> navigableSet, @CheckForNull AbstractC12511e<K, V>.k kVar) {
            super(k10, navigableSet, kVar);
        }

        @Override
        @CheckForNull
        public V ceiling(@InterfaceC12518f2 V v10) {
            return i().ceiling(v10);
        }

        @Override
        public Iterator<V> descendingIterator() {
            return new k.a(i().descendingIterator());
        }

        @Override
        public NavigableSet<V> descendingSet() {
            return k(i().descendingSet());
        }

        @Override
        @CheckForNull
        public V floor(@InterfaceC12518f2 V v10) {
            return i().floor(v10);
        }

        @Override
        public NavigableSet<V> headSet(@InterfaceC12518f2 V v10, boolean z10) {
            return k(i().headSet(v10, z10));
        }

        @Override
        @CheckForNull
        public V higher(@InterfaceC12518f2 V v10) {
            return i().higher(v10);
        }

        @Override
        public NavigableSet<V> i() {
            return (NavigableSet) super.i();
        }

        public final NavigableSet<V> k(NavigableSet<V> navigableSet) {
            return new m(this.f66588b, navigableSet, b() == null ? this : b());
        }

        @Override
        @CheckForNull
        public V lower(@InterfaceC12518f2 V v10) {
            return i().lower(v10);
        }

        @Override
        @CheckForNull
        public V pollFirst() {
            return (V) E1.U(iterator());
        }

        @Override
        @CheckForNull
        public V pollLast() {
            return (V) E1.U(descendingIterator());
        }

        @Override
        public NavigableSet<V> subSet(@InterfaceC12518f2 V v10, boolean z10, @InterfaceC12518f2 V v11, boolean z11) {
            return k(i().subSet(v10, z10, v11, z11));
        }

        @Override
        public NavigableSet<V> tailSet(@InterfaceC12518f2 V v10, boolean z10) {
            return k(i().tailSet(v10, z10));
        }
    }

    public class n extends AbstractC12511e<K, V>.k implements Set<V> {
        public n(@InterfaceC12518f2 K k10, Set<V> set) {
            super(k10, set, null);
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean I10 = D2.I((Set) this.f66589c, collection);
            if (I10) {
                AbstractC12511e.q(AbstractC12511e.this, this.f66589c.size() - size);
                h();
            }
            return I10;
        }
    }

    public class o extends AbstractC12511e<K, V>.k implements SortedSet<V> {
        public o(@InterfaceC12518f2 K k10, SortedSet<V> sortedSet, @CheckForNull AbstractC12511e<K, V>.k kVar) {
            super(k10, sortedSet, kVar);
        }

        @Override
        @CheckForNull
        public Comparator<? super V> comparator() {
            return i().comparator();
        }

        @Override
        @InterfaceC12518f2
        public V first() {
            g();
            return i().first();
        }

        @Override
        public SortedSet<V> headSet(@InterfaceC12518f2 V v10) {
            g();
            return new o(d(), i().headSet(v10), b() == null ? this : b());
        }

        public SortedSet<V> i() {
            return (SortedSet) c();
        }

        @Override
        @InterfaceC12518f2
        public V last() {
            g();
            return i().last();
        }

        @Override
        public SortedSet<V> subSet(@InterfaceC12518f2 V v10, @InterfaceC12518f2 V v11) {
            g();
            return new o(d(), i().subSet(v10, v11), b() == null ? this : b());
        }

        @Override
        public SortedSet<V> tailSet(@InterfaceC12518f2 V v10) {
            g();
            return new o(d(), i().tailSet(v10), b() == null ? this : b());
        }
    }

    public AbstractC12511e(Map<K, Collection<V>> map) {
        w2.H.d(map.isEmpty());
        this.f66566g = map;
    }

    public static <E> Iterator<E> E(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public void F(@CheckForNull Object obj) {
        Collection collection = (Collection) Q1.q0(this.f66566g, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f66567h -= size;
        }
    }

    public static int n(AbstractC12511e abstractC12511e) {
        int i10 = abstractC12511e.f66567h;
        abstractC12511e.f66567h = i10 + 1;
        return i10;
    }

    public static int p(AbstractC12511e abstractC12511e) {
        int i10 = abstractC12511e.f66567h;
        abstractC12511e.f66567h = i10 - 1;
        return i10;
    }

    public static int q(AbstractC12511e abstractC12511e, int i10) {
        int i11 = abstractC12511e.f66567h + i10;
        abstractC12511e.f66567h = i11;
        return i11;
    }

    public static int r(AbstractC12511e abstractC12511e, int i10) {
        int i11 = abstractC12511e.f66567h - i10;
        abstractC12511e.f66567h = i11;
        return i11;
    }

    public final Map<K, Collection<V>> A() {
        Map<K, Collection<V>> map = this.f66566g;
        return map instanceof NavigableMap ? new f((NavigableMap) this.f66566g) : map instanceof SortedMap ? new i((SortedMap) this.f66566g) : new c(this.f66566g);
    }

    public final Set<K> B() {
        Map<K, Collection<V>> map = this.f66566g;
        return map instanceof NavigableMap ? new g((NavigableMap) this.f66566g) : map instanceof SortedMap ? new j((SortedMap) this.f66566g) : new C1002e(this.f66566g);
    }

    public Collection<V> C() {
        return (Collection<V>) H(x());
    }

    public final Collection<V> D(@InterfaceC12518f2 K k10) {
        Collection<V> collection = this.f66566g.get(k10);
        if (collection != null) {
            return collection;
        }
        Collection<V> y10 = y(k10);
        this.f66566g.put(k10, y10);
        return y10;
    }

    public final void G(Map<K, Collection<V>> map) {
        this.f66566g = map;
        this.f66567h = 0;
        for (Collection<V> collection : map.values()) {
            w2.H.d(!collection.isEmpty());
            this.f66567h += collection.size();
        }
    }

    public <E> Collection<E> H(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    public Collection<V> I(@InterfaceC12518f2 K k10, Collection<V> collection) {
        return new k(k10, collection, null);
    }

    public final List<V> J(@InterfaceC12518f2 K k10, List<V> list, @CheckForNull AbstractC12511e<K, V>.k kVar) {
        return list instanceof RandomAccess ? new h(this, k10, list, kVar) : new l(k10, list, kVar);
    }

    @Override
    public Map<K, Collection<V>> a() {
        return new c(this.f66566g);
    }

    @Override
    public Collection<Map.Entry<K, V>> b() {
        return this instanceof C2 ? new AbstractC12523h.b(this) : new AbstractC12523h.a();
    }

    @Override
    public Collection<V> c(@CheckForNull Object obj) {
        Collection<V> remove = this.f66566g.remove(obj);
        if (remove == null) {
            return C();
        }
        Collection x10 = x();
        x10.addAll(remove);
        this.f66567h -= remove.size();
        remove.clear();
        return (Collection<V>) H(x10);
    }

    @Override
    public void clear() {
        Iterator<Collection<V>> it = this.f66566g.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f66566g.clear();
        this.f66567h = 0;
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return this.f66566g.containsKey(obj);
    }

    @Override
    public Collection<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return c(k10);
        }
        Collection<V> D10 = D(k10);
        Collection<V> x10 = x();
        x10.addAll(D10);
        this.f66567h -= D10.size();
        D10.clear();
        while (it.hasNext()) {
            if (D10.add(it.next())) {
                this.f66567h++;
            }
        }
        return (Collection<V>) H(x10);
    }

    @Override
    public Set<K> e() {
        return new C1002e(this.f66566g);
    }

    @Override
    public V1<K> f() {
        return new U1.g(this);
    }

    @Override
    public Collection<V> g() {
        return new AbstractC12523h.c();
    }

    @Override
    public Collection<V> y(@InterfaceC12518f2 K k10) {
        Collection<V> collection = this.f66566g.get(k10);
        if (collection == null) {
            collection = y(k10);
        }
        return I(k10, collection);
    }

    @Override
    public Iterator<Map.Entry<K, V>> h() {
        return new b(this);
    }

    @Override
    public Iterator<V> i() {
        return new a(this);
    }

    @Override
    public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        Collection<V> collection = this.f66566g.get(k10);
        if (collection != null) {
            if (!collection.add(v10)) {
                return false;
            }
            this.f66567h++;
            return true;
        }
        Collection<V> y10 = y(k10);
        if (!y10.add(v10)) {
            throw new AssertionError((Object) "New Collection violated the Collection spec");
        }
        this.f66567h++;
        this.f66566g.put(k10, y10);
        return true;
    }

    @Override
    public int size() {
        return this.f66567h;
    }

    public Map<K, Collection<V>> u() {
        return this.f66566g;
    }

    @Override
    public Collection<Map.Entry<K, V>> v() {
        return super.v();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    public abstract Collection<V> x();

    public Collection<V> y(@InterfaceC12518f2 K k10) {
        return x();
    }

    public class k extends AbstractCollection<V> {

        @InterfaceC12518f2
        public final K f66588b;

        public Collection<V> f66589c;

        @CheckForNull
        public final AbstractC12511e<K, V>.k f66590d;

        @CheckForNull
        public final Collection<V> f66591e;

        public k(@InterfaceC12518f2 K k10, Collection<V> collection, @CheckForNull AbstractC12511e<K, V>.k kVar) {
            this.f66588b = k10;
            this.f66589c = collection;
            this.f66590d = kVar;
            this.f66591e = kVar == null ? null : kVar.c();
        }

        public void a() {
            AbstractC12511e<K, V>.k kVar = this.f66590d;
            if (kVar != null) {
                kVar.a();
            } else {
                AbstractC12511e.this.f66566g.put(this.f66588b, this.f66589c);
            }
        }

        @Override
        public boolean add(@InterfaceC12518f2 V v10) {
            g();
            boolean isEmpty = this.f66589c.isEmpty();
            boolean add = this.f66589c.add(v10);
            if (add) {
                AbstractC12511e.n(AbstractC12511e.this);
                if (isEmpty) {
                    a();
                }
            }
            return add;
        }

        @Override
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f66589c.addAll(collection);
            if (addAll) {
                AbstractC12511e.q(AbstractC12511e.this, this.f66589c.size() - size);
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        @CheckForNull
        public AbstractC12511e<K, V>.k b() {
            return this.f66590d;
        }

        public Collection<V> c() {
            return this.f66589c;
        }

        @Override
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f66589c.clear();
            AbstractC12511e.r(AbstractC12511e.this, size);
            h();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            g();
            return this.f66589c.contains(obj);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            g();
            return this.f66589c.containsAll(collection);
        }

        @InterfaceC12518f2
        public K d() {
            return this.f66588b;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            g();
            return this.f66589c.equals(obj);
        }

        public void g() {
            Collection<V> collection;
            AbstractC12511e<K, V>.k kVar = this.f66590d;
            if (kVar != null) {
                kVar.g();
                if (this.f66590d.c() != this.f66591e) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f66589c.isEmpty() || (collection = (Collection) AbstractC12511e.this.f66566g.get(this.f66588b)) == null) {
                    return;
                }
                this.f66589c = collection;
            }
        }

        public void h() {
            AbstractC12511e<K, V>.k kVar = this.f66590d;
            if (kVar != null) {
                kVar.h();
            } else if (this.f66589c.isEmpty()) {
                AbstractC12511e.this.f66566g.remove(this.f66588b);
            }
        }

        @Override
        public int hashCode() {
            g();
            return this.f66589c.hashCode();
        }

        @Override
        public Iterator<V> iterator() {
            g();
            return new a();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            g();
            boolean remove = this.f66589c.remove(obj);
            if (remove) {
                AbstractC12511e.p(AbstractC12511e.this);
                h();
            }
            return remove;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f66589c.removeAll(collection);
            if (removeAll) {
                AbstractC12511e.q(AbstractC12511e.this, this.f66589c.size() - size);
                h();
            }
            return removeAll;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            w2.H.E(collection);
            int size = size();
            boolean retainAll = this.f66589c.retainAll(collection);
            if (retainAll) {
                AbstractC12511e.q(AbstractC12511e.this, this.f66589c.size() - size);
                h();
            }
            return retainAll;
        }

        @Override
        public int size() {
            g();
            return this.f66589c.size();
        }

        @Override
        public String toString() {
            g();
            return this.f66589c.toString();
        }

        public class a implements Iterator<V> {

            public final Iterator<V> f66593b;

            public final Collection<V> f66594c;

            public a() {
                Collection<V> collection = k.this.f66589c;
                this.f66594c = collection;
                this.f66593b = AbstractC12511e.E(collection);
            }

            public Iterator<V> a() {
                b();
                return this.f66593b;
            }

            public void b() {
                k.this.g();
                if (k.this.f66589c != this.f66594c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                b();
                return this.f66593b.hasNext();
            }

            @Override
            @InterfaceC12518f2
            public V next() {
                b();
                return this.f66593b.next();
            }

            @Override
            public void remove() {
                this.f66593b.remove();
                AbstractC12511e.p(AbstractC12511e.this);
                k.this.h();
            }

            public a(Iterator<V> it) {
                this.f66594c = k.this.f66589c;
                this.f66593b = it;
            }
        }
    }

    public class l extends AbstractC12511e<K, V>.k implements List<V> {

        public class a extends AbstractC12511e<K, V>.k.a implements ListIterator<V> {
            public a() {
                super();
            }

            @Override
            public void add(@InterfaceC12518f2 V v10) {
                boolean isEmpty = l.this.isEmpty();
                d().add(v10);
                AbstractC12511e.n(AbstractC12511e.this);
                if (isEmpty) {
                    l.this.a();
                }
            }

            public final ListIterator<V> d() {
                return (ListIterator) a();
            }

            @Override
            public boolean hasPrevious() {
                return d().hasPrevious();
            }

            @Override
            public int nextIndex() {
                return d().nextIndex();
            }

            @Override
            @InterfaceC12518f2
            public V previous() {
                return d().previous();
            }

            @Override
            public int previousIndex() {
                return d().previousIndex();
            }

            @Override
            public void set(@InterfaceC12518f2 V v10) {
                d().set(v10);
            }

            public a(int i10) {
                super(l.this.i().listIterator(i10));
            }
        }

        public l(@InterfaceC12518f2 K k10, List<V> list, @CheckForNull AbstractC12511e<K, V>.k kVar) {
            super(k10, list, kVar);
        }

        @Override
        public void add(int i10, @InterfaceC12518f2 V v10) {
            g();
            boolean isEmpty = c().isEmpty();
            i().add(i10, v10);
            AbstractC12511e.n(AbstractC12511e.this);
            if (isEmpty) {
                a();
            }
        }

        @Override
        public boolean addAll(int i10, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = i().addAll(i10, collection);
            if (addAll) {
                AbstractC12511e.q(AbstractC12511e.this, c().size() - size);
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        @Override
        @InterfaceC12518f2
        public V get(int i10) {
            g();
            return i().get(i10);
        }

        public List<V> i() {
            return (List) c();
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            g();
            return i().indexOf(obj);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            g();
            return i().lastIndexOf(obj);
        }

        @Override
        public ListIterator<V> listIterator() {
            g();
            return new a();
        }

        @Override
        @InterfaceC12518f2
        public V remove(int i10) {
            g();
            V remove = i().remove(i10);
            AbstractC12511e.p(AbstractC12511e.this);
            h();
            return remove;
        }

        @Override
        @InterfaceC12518f2
        public V set(int i10, @InterfaceC12518f2 V v10) {
            g();
            return i().set(i10, v10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public List<V> subList(int i10, int i11) {
            g();
            return AbstractC12511e.this.J(d(), i().subList(i10, i11), b() == null ? this : b());
        }

        @Override
        public ListIterator<V> listIterator(int i10) {
            g();
            return new a(i10);
        }
    }
}
