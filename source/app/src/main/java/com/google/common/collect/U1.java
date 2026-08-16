package com.google.common.collect;

import com.google.common.collect.AbstractC12511e;
import com.google.common.collect.AbstractC12523h;
import com.google.common.collect.C12525h1;
import com.google.common.collect.D2;
import com.google.common.collect.Q1;
import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public final class U1 {

    public static final class a<K, V> extends Q1.R<K, Collection<V>> {

        @q3.i
        public final S1<K, V> f66275e;

        public class C0993a extends Q1.s<K, Collection<V>> {

            public class C0994a implements InterfaceC15902t<K, Collection<V>> {
                public C0994a() {
                }

                @Override
                public Collection<V> apply(@InterfaceC12518f2 K k10) {
                    return a.this.f66275e.y(k10);
                }
            }

            public C0993a() {
            }

            @Override
            public Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Q1.m(a.this.f66275e.keySet(), new C0994a());
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                a.this.n(entry.getKey());
                return true;
            }
        }

        public a(S1<K, V> s12) {
            this.f66275e = (S1) w2.H.E(s12);
        }

        @Override
        public void clear() {
            this.f66275e.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66275e.containsKey(obj);
        }

        @Override
        public Set<Map.Entry<K, Collection<V>>> e() {
            return new C0993a();
        }

        @Override
        public boolean isEmpty() {
            return this.f66275e.isEmpty();
        }

        @Override
        public Set<K> o() {
            return this.f66275e.keySet();
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object obj) {
            if (containsKey(obj)) {
                return this.f66275e.y(obj);
            }
            return null;
        }

        @Override
        @CheckForNull
        public Collection<V> remove(@CheckForNull Object obj) {
            if (containsKey(obj)) {
                return this.f66275e.c(obj);
            }
            return null;
        }

        public void n(@CheckForNull Object obj) {
            this.f66275e.keySet().remove(obj);
        }

        @Override
        public int size() {
            return this.f66275e.keySet().size();
        }
    }

    public static class b<K, V> extends AbstractC12507d<K, V> {

        @v2.c
        public static final long f66278l = 0;

        public transient w2.Q<? extends List<V>> f66279k;

        public b(Map<K, Collection<V>> map, w2.Q<? extends List<V>> q10) {
            super(map);
            this.f66279k = (w2.Q) w2.H.E(q10);
        }

        @v2.c
        private void M(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f66279k = (w2.Q) objectInputStream.readObject();
            G((Map) objectInputStream.readObject());
        }

        @v2.c
        private void O(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f66279k);
            objectOutputStream.writeObject(u());
        }

        @Override
        public List<V> x() {
            return this.f66279k.get();
        }

        @Override
        public Map<K, Collection<V>> a() {
            return A();
        }

        @Override
        public Set<K> e() {
            return B();
        }
    }

    public static class c<K, V> extends AbstractC12511e<K, V> {

        @v2.c
        public static final long f66280k = 0;

        public transient w2.Q<? extends Collection<V>> f66281j;

        public c(Map<K, Collection<V>> map, w2.Q<? extends Collection<V>> q10) {
            super(map);
            this.f66281j = (w2.Q) w2.H.E(q10);
        }

        @v2.c
        private void K(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f66281j = (w2.Q) objectInputStream.readObject();
            G((Map) objectInputStream.readObject());
        }

        @v2.c
        private void L(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f66281j);
            objectOutputStream.writeObject(u());
        }

        @Override
        public <E> Collection<E> H(Collection<E> collection) {
            return collection instanceof NavigableSet ? D2.O((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
        }

        @Override
        public Collection<V> I(@InterfaceC12518f2 K k10, Collection<V> collection) {
            return collection instanceof List ? J(k10, (List) collection, null) : collection instanceof NavigableSet ? new AbstractC12511e.m(k10, (NavigableSet) collection, null) : collection instanceof SortedSet ? new AbstractC12511e.o(k10, (SortedSet) collection, null) : collection instanceof Set ? new AbstractC12511e.n(k10, (Set) collection) : new AbstractC12511e.k(k10, collection, null);
        }

        @Override
        public Map<K, Collection<V>> a() {
            return A();
        }

        @Override
        public Set<K> e() {
            return B();
        }

        @Override
        public Collection<V> x() {
            return this.f66281j.get();
        }
    }

    public static class d<K, V> extends AbstractC12543m<K, V> {

        @v2.c
        public static final long f66282l = 0;

        public transient w2.Q<? extends Set<V>> f66283k;

        public d(Map<K, Collection<V>> map, w2.Q<? extends Set<V>> q10) {
            super(map);
            this.f66283k = (w2.Q) w2.H.E(q10);
        }

        @v2.c
        private void M(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f66283k = (w2.Q) objectInputStream.readObject();
            G((Map) objectInputStream.readObject());
        }

        @v2.c
        private void O(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f66283k);
            objectOutputStream.writeObject(u());
        }

        @Override
        public <E> Collection<E> H(Collection<E> collection) {
            return collection instanceof NavigableSet ? D2.O((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override
        public Collection<V> I(@InterfaceC12518f2 K k10, Collection<V> collection) {
            return collection instanceof NavigableSet ? new AbstractC12511e.m(k10, (NavigableSet) collection, null) : collection instanceof SortedSet ? new AbstractC12511e.o(k10, (SortedSet) collection, null) : new AbstractC12511e.n(k10, (Set) collection);
        }

        @Override
        public Set<V> x() {
            return this.f66283k.get();
        }

        @Override
        public Map<K, Collection<V>> a() {
            return A();
        }

        @Override
        public Set<K> e() {
            return B();
        }
    }

    public static class e<K, V> extends AbstractC12555p<K, V> {

        @v2.c
        public static final long f66284n = 0;

        public transient w2.Q<? extends SortedSet<V>> f66285l;

        @CheckForNull
        public transient Comparator<? super V> f66286m;

        public e(Map<K, Collection<V>> map, w2.Q<? extends SortedSet<V>> q10) {
            super(map);
            this.f66285l = (w2.Q) w2.H.E(q10);
            this.f66286m = q10.get().comparator();
        }

        @v2.c
        private void Q(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            w2.Q<? extends SortedSet<V>> q10 = (w2.Q) objectInputStream.readObject();
            this.f66285l = q10;
            this.f66286m = q10.get().comparator();
            G((Map) objectInputStream.readObject());
        }

        @v2.c
        private void R(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f66285l);
            objectOutputStream.writeObject(u());
        }

        @Override
        public SortedSet<V> x() {
            return this.f66285l.get();
        }

        @Override
        public Map<K, Collection<V>> a() {
            return A();
        }

        @Override
        public Set<K> e() {
            return B();
        }

        @Override
        @CheckForNull
        public Comparator<? super V> z() {
            return this.f66286m;
        }
    }

    public static abstract class f<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        public abstract S1<K, V> a();

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
            return a().g0(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().remove(entry.getKey(), entry.getValue());
        }

        @Override
        public int size() {
            return a().size();
        }
    }

    public static class g<K, V> extends AbstractC12527i<K> {

        @q3.i
        public final S1<K, V> f66287d;

        public class a extends V2<Map.Entry<K, Collection<V>>, V1.a<K>> {

            public class C0995a extends W1.f<K> {

                public final Map.Entry f66288b;

                public C0995a(a aVar, Map.Entry entry) {
                    this.f66288b = entry;
                }

                @Override
                public int getCount() {
                    return ((Collection) this.f66288b.getValue()).size();
                }

                @Override
                @InterfaceC12518f2
                public K getElement() {
                    return (K) this.f66288b.getKey();
                }
            }

            public a(g gVar, Iterator it) {
                super(it);
            }

            @Override
            public V1.a<K> a(Map.Entry<K, Collection<V>> entry) {
                return new C0995a(this, entry);
            }
        }

        public g(S1<K, V> s12) {
            this.f66287d = s12;
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            Collection collection = (Collection) Q1.p0(this.f66287d.k(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override
        public Set<K> S1() {
            return this.f66287d.keySet();
        }

        @Override
        public int c() {
            return this.f66287d.k().size();
        }

        @Override
        public void clear() {
            this.f66287d.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f66287d.containsKey(obj);
        }

        @Override
        public Iterator<K> d() {
            throw new AssertionError((Object) "should never be called");
        }

        @Override
        public Iterator<V1.a<K>> g() {
            return new a(this, this.f66287d.k().entrySet().iterator());
        }

        @Override
        public Iterator<K> iterator() {
            return Q1.S(this.f66287d.v().iterator());
        }

        @Override
        public int pc(@CheckForNull Object obj, int i10) {
            B.b(i10, "occurrences");
            if (i10 == 0) {
                return Ad(obj);
            }
            Collection collection = (Collection) Q1.p0(this.f66287d.k(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i10 >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i11 = 0; i11 < i10; i11++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override
        public int size() {
            return this.f66287d.size();
        }
    }

    public static class h<K, V> extends AbstractC12523h<K, V> implements C2<K, V>, Serializable {

        public static final long f66289h = 7845222491160860175L;

        public final Map<K, V> f66290g;

        public class a extends D2.k<V> {

            public final Object f66291b;

            public class C0996a implements Iterator<V> {

                public int f66293b;

                public C0996a() {
                }

                @Override
                public boolean hasNext() {
                    if (this.f66293b == 0) {
                        a aVar = a.this;
                        if (h.this.f66290g.containsKey(aVar.f66291b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                @InterfaceC12518f2
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.f66293b++;
                    a aVar = a.this;
                    return (V) Z1.a(h.this.f66290g.get(aVar.f66291b));
                }

                @Override
                public void remove() {
                    B.e(this.f66293b == 1);
                    this.f66293b = -1;
                    a aVar = a.this;
                    h.this.f66290g.remove(aVar.f66291b);
                }
            }

            public a(Object obj) {
                this.f66291b = obj;
            }

            @Override
            public Iterator<V> iterator() {
                return new C0996a();
            }

            @Override
            public int size() {
                return h.this.f66290g.containsKey(this.f66291b) ? 1 : 0;
            }
        }

        public h(Map<K, V> map) {
            this.f66290g = (Map) w2.H.E(map);
        }

        @Override
        public boolean Z(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<K, Collection<V>> a() {
            return new a(this);
        }

        @Override
        public Collection<Map.Entry<K, V>> b() {
            throw new AssertionError((Object) "unreachable");
        }

        @Override
        public void clear() {
            this.f66290g.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66290g.containsKey(obj);
        }

        @Override
        public boolean containsValue(@CheckForNull Object obj) {
            return this.f66290g.containsValue(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
            return d((h<K, V>) obj, iterable);
        }

        @Override
        public Set<K> e() {
            return this.f66290g.o();
        }

        @Override
        public V1<K> f() {
            return new g(this);
        }

        @Override
        public Collection<V> g() {
            return this.f66290g.values();
        }

        @Override
        public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f66290g.entrySet().contains(Q1.O(obj, obj2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(@InterfaceC12518f2 Object obj) {
            return y((h<K, V>) obj);
        }

        @Override
        public Iterator<Map.Entry<K, V>> h() {
            return this.f66290g.entrySet().iterator();
        }

        @Override
        public int hashCode() {
            return this.f66290g.hashCode();
        }

        @Override
        public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f66290g.entrySet().remove(Q1.O(obj, obj2));
        }

        @Override
        public int size() {
            return this.f66290g.size();
        }

        @Override
        public boolean w(S1<? extends K, ? extends V> s12) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V> c(@CheckForNull Object obj) {
            HashSet hashSet = new HashSet(2);
            if (!this.f66290g.containsKey(obj)) {
                return hashSet;
            }
            hashSet.add(this.f66290g.remove(obj));
            return hashSet;
        }

        @Override
        public Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V> y(@InterfaceC12518f2 K k10) {
            return new a(k10);
        }

        @Override
        public Set<Map.Entry<K, V>> v() {
            return this.f66290g.entrySet();
        }
    }

    public static final class i<K, V1, V2> extends j<K, V1, V2> implements L1<K, V2> {
        public i(L1<K, V1> l12, Q1.t<? super K, ? super V1, V2> tVar) {
            super(l12, tVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
            return d((i<K, V1, V2>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(@InterfaceC12518f2 Object obj) {
            return y((i<K, V1, V2>) obj);
        }

        @Override
        public List<V2> l(@InterfaceC12518f2 K k10, Collection<V1> collection) {
            return M1.D((List) collection, Q1.n(this.f66296h, k10));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public List<V2> c(@CheckForNull Object obj) {
            return l(obj, this.f66295g.c(obj));
        }

        @Override
        public List<V2> d(@InterfaceC12518f2 K k10, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public List<V2> y(@InterfaceC12518f2 K k10) {
            return l(k10, this.f66295g.y(k10));
        }
    }

    public static class j<K, V1, V2> extends AbstractC12523h<K, V2> {

        public final S1<K, V1> f66295g;

        public final Q1.t<? super K, ? super V1, V2> f66296h;

        public class a implements Q1.t<K, Collection<V1>, Collection<V2>> {
            public a() {
            }

            @Override
            public Collection<V2> a(@InterfaceC12518f2 K k10, Collection<V1> collection) {
                return j.this.l(k10, collection);
            }
        }

        public j(S1<K, V1> s12, Q1.t<? super K, ? super V1, V2> tVar) {
            this.f66295g = (S1) w2.H.E(s12);
            this.f66296h = (Q1.t) w2.H.E(tVar);
        }

        @Override
        public boolean Z(@InterfaceC12518f2 K k10, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<K, Collection<V2>> a() {
            return Q1.x0(this.f66295g.k(), new a());
        }

        @Override
        public Collection<Map.Entry<K, V2>> b() {
            return new AbstractC12523h.a();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection<V2> c(@CheckForNull Object obj) {
            return l(obj, this.f66295g.c(obj));
        }

        @Override
        public void clear() {
            this.f66295g.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66295g.containsKey(obj);
        }

        @Override
        public Collection<V2> d(@InterfaceC12518f2 K k10, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<K> e() {
            return this.f66295g.keySet();
        }

        @Override
        public V1<K> f() {
            return this.f66295g.j();
        }

        @Override
        public Collection<V2> g() {
            return C.m(this.f66295g.v(), Q1.h(this.f66296h));
        }

        @Override
        public Collection<V2> y(@InterfaceC12518f2 K k10) {
            return l(k10, this.f66295g.y(k10));
        }

        @Override
        public Iterator<Map.Entry<K, V2>> h() {
            return E1.c0(this.f66295g.v().iterator(), Q1.g(this.f66296h));
        }

        @Override
        public boolean isEmpty() {
            return this.f66295g.isEmpty();
        }

        public Collection<V2> l(@InterfaceC12518f2 K k10, Collection<V1> collection) {
            InterfaceC15902t n10 = Q1.n(this.f66296h, k10);
            return collection instanceof List ? M1.D((List) collection, n10) : C.m(collection, n10);
        }

        @Override
        public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V2 v22) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return y(obj).remove(obj2);
        }

        @Override
        public int size() {
            return this.f66295g.size();
        }

        @Override
        public boolean w(S1<? extends K, ? extends V2> s12) {
            throw new UnsupportedOperationException();
        }
    }

    public static class k<K, V> extends l<K, V> implements L1<K, V> {

        public static final long f66298i = 0;

        public k(L1<K, V> l12) {
            super(l12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
            return d((k<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(@InterfaceC12518f2 Object obj) {
            return y((k<K, V>) obj);
        }

        @Override
        public L1<K, V> k0() {
            return (L1) super.k0();
        }

        @Override
        public List<V> c(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public List<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public List<V> y(@InterfaceC12518f2 K k10) {
            return Collections.unmodifiableList(k0().y((L1<K, V>) k10));
        }
    }

    public static class l<K, V> extends E0<K, V> implements Serializable {

        public static final long f66299h = 0;

        public final S1<K, V> f66300b;

        @CheckForNull
        @J2.b
        public transient Collection<Map.Entry<K, V>> f66301c;

        @CheckForNull
        @J2.b
        public transient V1<K> f66302d;

        @CheckForNull
        @J2.b
        public transient Set<K> f66303e;

        @CheckForNull
        @J2.b
        public transient Collection<V> f66304f;

        @CheckForNull
        @J2.b
        public transient Map<K, Collection<V>> f66305g;

        public class a implements InterfaceC15902t<Collection<V>, Collection<V>> {
            public a(l lVar) {
            }

            @Override
            public Collection<V> apply(Collection<V> collection) {
                return U1.O(collection);
            }
        }

        public l(S1<K, V> s12) {
            this.f66300b = (S1) w2.H.E(s12);
        }

        @Override
        public boolean Z(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<V> c(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<V> y(@InterfaceC12518f2 K k10) {
            return U1.O(this.f66300b.y(k10));
        }

        @Override
        public V1<K> j() {
            V1<K> v12 = this.f66302d;
            if (v12 != null) {
                return v12;
            }
            V1<K> A10 = W1.A(this.f66300b.j());
            this.f66302d = A10;
            return A10;
        }

        @Override
        public Map<K, Collection<V>> k() {
            Map<K, Collection<V>> map = this.f66305g;
            if (map != null) {
                return map;
            }
            Map<K, Collection<V>> unmodifiableMap = Collections.unmodifiableMap(Q1.B0(this.f66300b.k(), new a(this)));
            this.f66305g = unmodifiableMap;
            return unmodifiableMap;
        }

        @Override
        public Set<K> keySet() {
            Set<K> set = this.f66303e;
            if (set != null) {
                return set;
            }
            Set<K> unmodifiableSet = Collections.unmodifiableSet(this.f66300b.keySet());
            this.f66303e = unmodifiableSet;
            return unmodifiableSet;
        }

        @Override
        public S1<K, V> k0() {
            return this.f66300b;
        }

        @Override
        public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Collection<Map.Entry<K, V>> v() {
            Collection<Map.Entry<K, V>> collection = this.f66301c;
            if (collection != null) {
                return collection;
            }
            Collection<Map.Entry<K, V>> G10 = U1.G(this.f66300b.v());
            this.f66301c = G10;
            return G10;
        }

        @Override
        public Collection<V> values() {
            Collection<V> collection = this.f66304f;
            if (collection != null) {
                return collection;
            }
            Collection<V> unmodifiableCollection = Collections.unmodifiableCollection(this.f66300b.values());
            this.f66304f = unmodifiableCollection;
            return unmodifiableCollection;
        }

        @Override
        public boolean w(S1<? extends K, ? extends V> s12) {
            throw new UnsupportedOperationException();
        }
    }

    public static class m<K, V> extends l<K, V> implements C2<K, V> {

        public static final long f66306i = 0;

        public m(C2<K, V> c22) {
            super(c22);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
            return d((m<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(@InterfaceC12518f2 Object obj) {
            return y((m<K, V>) obj);
        }

        @Override
        public C2<K, V> k0() {
            return (C2) super.k0();
        }

        @Override
        public Set<V> c(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<V> y(@InterfaceC12518f2 K k10) {
            return Collections.unmodifiableSet(m0().y((C2<K, V>) k10));
        }

        @Override
        public Set<Map.Entry<K, V>> v() {
            return Q1.J0(m0().v());
        }
    }

    public static class n<K, V> extends m<K, V> implements N2<K, V> {

        public static final long f66307j = 0;

        public n(N2<K, V> n22) {
            super(n22);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
            return d((n<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Collection y(@InterfaceC12518f2 Object obj) {
            return y((n<K, V>) obj);
        }

        @Override
        public N2<K, V> m0() {
            return (N2) super.m0();
        }

        @Override
        @CheckForNull
        public Comparator<? super V> z() {
            return m0().z();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Set d(@InterfaceC12518f2 Object obj, Iterable iterable) {
            return d((n<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Set y(@InterfaceC12518f2 Object obj) {
            return y((n<K, V>) obj);
        }

        @Override
        public SortedSet<V> c(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public SortedSet<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override
        public SortedSet<V> y(@InterfaceC12518f2 K k10) {
            return Collections.unmodifiableSortedSet(m0().y((N2<K, V>) k10));
        }
    }

    public static <K, V> C2<K, V> A(C2<K, V> c22) {
        return R2.v(c22, null);
    }

    public static <K, V> N2<K, V> B(N2<K, V> n22) {
        return R2.y(n22, null);
    }

    public static <K, V1, V2> L1<K, V2> C(L1<K, V1> l12, Q1.t<? super K, ? super V1, V2> tVar) {
        return new i(l12, tVar);
    }

    public static <K, V1, V2> S1<K, V2> D(S1<K, V1> s12, Q1.t<? super K, ? super V1, V2> tVar) {
        return new j(s12, tVar);
    }

    public static <K, V1, V2> L1<K, V2> E(L1<K, V1> l12, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        return C(l12, Q1.i(interfaceC15902t));
    }

    public static <K, V1, V2> S1<K, V2> F(S1<K, V1> s12, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        return D(s12, Q1.i(interfaceC15902t));
    }

    public static <K, V> Collection<Map.Entry<K, V>> G(Collection<Map.Entry<K, V>> collection) {
        return collection instanceof Set ? Q1.J0((Set) collection) : new Q1.M(Collections.unmodifiableCollection(collection));
    }

    @Deprecated
    public static <K, V> L1<K, V> H(C12525h1<K, V> c12525h1) {
        return (L1) w2.H.E(c12525h1);
    }

    public static <K, V> L1<K, V> I(L1<K, V> l12) {
        return ((l12 instanceof k) || (l12 instanceof C12525h1)) ? l12 : new k(l12);
    }

    @Deprecated
    public static <K, V> S1<K, V> J(AbstractC12545m1<K, V> abstractC12545m1) {
        return (S1) w2.H.E(abstractC12545m1);
    }

    public static <K, V> S1<K, V> K(S1<K, V> s12) {
        return ((s12 instanceof l) || (s12 instanceof AbstractC12545m1)) ? s12 : new l(s12);
    }

    @Deprecated
    public static <K, V> C2<K, V> L(C12568s1<K, V> c12568s1) {
        return (C2) w2.H.E(c12568s1);
    }

    public static <K, V> C2<K, V> M(C2<K, V> c22) {
        return ((c22 instanceof m) || (c22 instanceof C12568s1)) ? c22 : new m(c22);
    }

    public static <K, V> N2<K, V> N(N2<K, V> n22) {
        return n22 instanceof n ? n22 : new n(n22);
    }

    public static <V> Collection<V> O(Collection<V> collection) {
        return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
    }

    @InterfaceC15800a
    public static <K, V> Map<K, List<V>> c(L1<K, V> l12) {
        return l12.k();
    }

    @InterfaceC15800a
    public static <K, V> Map<K, Collection<V>> d(S1<K, V> s12) {
        return s12.k();
    }

    @InterfaceC15800a
    public static <K, V> Map<K, Set<V>> e(C2<K, V> c22) {
        return c22.k();
    }

    @InterfaceC15800a
    public static <K, V> Map<K, SortedSet<V>> f(N2<K, V> n22) {
        return n22.k();
    }

    public static boolean g(S1<?, ?> s12, @CheckForNull Object obj) {
        if (obj == s12) {
            return true;
        }
        if (obj instanceof S1) {
            return s12.k().equals(((S1) obj).k());
        }
        return false;
    }

    public static <K, V> S1<K, V> h(S1<K, V> s12, w2.I<? super Map.Entry<K, V>> i10) {
        w2.H.E(i10);
        return s12 instanceof C2 ? i((C2) s12, i10) : s12 instanceof InterfaceC12544m0 ? j((InterfaceC12544m0) s12, i10) : new C12520g0((S1) w2.H.E(s12), i10);
    }

    public static <K, V> C2<K, V> i(C2<K, V> c22, w2.I<? super Map.Entry<K, V>> i10) {
        w2.H.E(i10);
        return c22 instanceof InterfaceC12552o0 ? k((InterfaceC12552o0) c22, i10) : new C12528i0((C2) w2.H.E(c22), i10);
    }

    public static <K, V> S1<K, V> j(InterfaceC12544m0<K, V> interfaceC12544m0, w2.I<? super Map.Entry<K, V>> i10) {
        return new C12520g0(interfaceC12544m0.o(), w2.J.e(interfaceC12544m0.N(), i10));
    }

    public static <K, V> C2<K, V> k(InterfaceC12552o0<K, V> interfaceC12552o0, w2.I<? super Map.Entry<K, V>> i10) {
        return new C12528i0(interfaceC12552o0.o(), w2.J.e(interfaceC12552o0.N(), i10));
    }

    public static <K, V> L1<K, V> l(L1<K, V> l12, w2.I<? super K> i10) {
        if (!(l12 instanceof C12532j0)) {
            return new C12532j0(l12, i10);
        }
        C12532j0 c12532j0 = (C12532j0) l12;
        return new C12532j0(c12532j0.o(), w2.J.e(c12532j0.f66701h, i10));
    }

    public static <K, V> S1<K, V> m(S1<K, V> s12, w2.I<? super K> i10) {
        if (s12 instanceof C2) {
            return n((C2) s12, i10);
        }
        if (s12 instanceof L1) {
            return l((L1) s12, i10);
        }
        if (!(s12 instanceof C12536k0)) {
            return s12 instanceof InterfaceC12544m0 ? j((InterfaceC12544m0) s12, Q1.U(i10)) : new C12536k0(s12, i10);
        }
        C12536k0 c12536k0 = (C12536k0) s12;
        return new C12536k0(c12536k0.f66700g, w2.J.e(c12536k0.f66701h, i10));
    }

    public static <K, V> C2<K, V> n(C2<K, V> c22, w2.I<? super K> i10) {
        if (!(c22 instanceof C12540l0)) {
            return c22 instanceof InterfaceC12552o0 ? k((InterfaceC12552o0) c22, Q1.U(i10)) : new C12540l0(c22, i10);
        }
        C12540l0 c12540l0 = (C12540l0) c22;
        return new C12540l0(c12540l0.o(), w2.J.e(c12540l0.f66701h, i10));
    }

    public static <K, V> S1<K, V> o(S1<K, V> s12, w2.I<? super V> i10) {
        return h(s12, Q1.Q0(i10));
    }

    public static <K, V> C2<K, V> p(C2<K, V> c22, w2.I<? super V> i10) {
        return i(c22, Q1.Q0(i10));
    }

    public static <K, V> C2<K, V> q(Map<K, V> map) {
        return new h(map);
    }

    public static <K, V> C12525h1<K, V> r(Iterable<V> iterable, InterfaceC15902t<? super V, K> interfaceC15902t) {
        return s(iterable.iterator(), interfaceC15902t);
    }

    public static <K, V> C12525h1<K, V> s(Iterator<V> it, InterfaceC15902t<? super V, K> interfaceC15902t) {
        w2.H.E(interfaceC15902t);
        C12525h1.a P10 = C12525h1.P();
        while (it.hasNext()) {
            V next = it.next();
            w2.H.F(next, it);
            P10.f(interfaceC15902t.apply(next), next);
        }
        return P10.a();
    }

    @I2.a
    public static <K, V, M extends S1<K, V>> M t(S1<? extends V, ? extends K> s12, M m10) {
        w2.H.E(m10);
        for (Map.Entry<? extends V, ? extends K> entry : s12.v()) {
            m10.put(entry.getValue(), entry.getKey());
        }
        return m10;
    }

    public static <K, V> L1<K, V> u(Map<K, Collection<V>> map, w2.Q<? extends List<V>> q10) {
        return new b(map, q10);
    }

    public static <K, V> S1<K, V> v(Map<K, Collection<V>> map, w2.Q<? extends Collection<V>> q10) {
        return new c(map, q10);
    }

    public static <K, V> C2<K, V> w(Map<K, Collection<V>> map, w2.Q<? extends Set<V>> q10) {
        return new d(map, q10);
    }

    public static <K, V> N2<K, V> x(Map<K, Collection<V>> map, w2.Q<? extends SortedSet<V>> q10) {
        return new e(map, q10);
    }

    public static <K, V> L1<K, V> y(L1<K, V> l12) {
        return R2.k(l12, null);
    }

    public static <K, V> S1<K, V> z(S1<K, V> s12) {
        return R2.m(s12, null);
    }
}
