package com.google.common.collect;

import com.google.common.collect.D2;
import com.google.common.collect.U1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public class K1<K, V> extends AbstractC12523h<K, V> implements L1<K, V>, Serializable {

    @v2.c
    public static final long f65815l = 0;

    @CheckForNull
    public transient g<K, V> f65816g;

    @CheckForNull
    public transient g<K, V> f65817h;

    public transient Map<K, f<K, V>> f65818i;

    public transient int f65819j;

    public transient int f65820k;

    public class a extends AbstractSequentialList<V> {

        public final Object f65821b;

        public a(Object obj) {
            this.f65821b = obj;
        }

        @Override
        public ListIterator<V> listIterator(int i10) {
            return new i(this.f65821b, i10);
        }

        @Override
        public int size() {
            f fVar = (f) K1.this.f65818i.get(this.f65821b);
            if (fVar == null) {
                return 0;
            }
            return fVar.f65834c;
        }
    }

    public class b extends AbstractSequentialList<Map.Entry<K, V>> {
        public b() {
        }

        @Override
        public ListIterator<Map.Entry<K, V>> listIterator(int i10) {
            return new h(i10);
        }

        @Override
        public int size() {
            return K1.this.f65819j;
        }
    }

    public class c extends D2.k<K> {
        public c() {
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return K1.this.containsKey(obj);
        }

        @Override
        public Iterator<K> iterator() {
            return new e(K1.this, null);
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            return !K1.this.c(obj).isEmpty();
        }

        @Override
        public int size() {
            return K1.this.f65818i.size();
        }
    }

    public class d extends AbstractSequentialList<V> {

        public class a extends W2<Map.Entry<K, V>, V> {

            public final h f65826c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, ListIterator listIterator, h hVar) {
                super(listIterator);
                this.f65826c = hVar;
            }

            @Override
            @InterfaceC12518f2
            public V a(Map.Entry<K, V> entry) {
                return entry.getValue();
            }

            @Override
            public void set(@InterfaceC12518f2 V v10) {
                this.f65826c.g(v10);
            }
        }

        public d() {
        }

        @Override
        public ListIterator<V> listIterator(int i10) {
            h hVar = new h(i10);
            return new a(this, hVar, hVar);
        }

        @Override
        public int size() {
            return K1.this.f65819j;
        }
    }

    public static class f<K, V> {

        public g<K, V> f65832a;

        public g<K, V> f65833b;

        public int f65834c;

        public f(g<K, V> gVar) {
            this.f65832a = gVar;
            this.f65833b = gVar;
            gVar.f65840g = null;
            gVar.f65839f = null;
            this.f65834c = 1;
        }
    }

    public static final class g<K, V> extends AbstractC12519g<K, V> {

        @InterfaceC12518f2
        public final K f65835b;

        @InterfaceC12518f2
        public V f65836c;

        @CheckForNull
        public g<K, V> f65837d;

        @CheckForNull
        public g<K, V> f65838e;

        @CheckForNull
        public g<K, V> f65839f;

        @CheckForNull
        public g<K, V> f65840g;

        public g(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
            this.f65835b = k10;
            this.f65836c = v10;
        }

        @Override
        @InterfaceC12518f2
        public K getKey() {
            return this.f65835b;
        }

        @Override
        @InterfaceC12518f2
        public V getValue() {
            return this.f65836c;
        }

        @Override
        @InterfaceC12518f2
        public V setValue(@InterfaceC12518f2 V v10) {
            V v11 = this.f65836c;
            this.f65836c = v10;
            return v11;
        }
    }

    public class h implements ListIterator<Map.Entry<K, V>> {

        public int f65841b;

        @CheckForNull
        public g<K, V> f65842c;

        @CheckForNull
        public g<K, V> f65843d;

        @CheckForNull
        public g<K, V> f65844e;

        public int f65845f;

        public h(int i10) {
            this.f65845f = K1.this.f65820k;
            int size = K1.this.size();
            w2.H.d0(i10, size);
            if (i10 < size / 2) {
                this.f65842c = K1.this.f65816g;
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    next();
                    i10 = i11;
                }
            } else {
                this.f65844e = K1.this.f65817h;
                this.f65841b = size;
                while (true) {
                    int i12 = i10 + 1;
                    if (i10 >= size) {
                        break;
                    }
                    previous();
                    i10 = i12;
                }
            }
            this.f65843d = null;
        }

        @Override
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        public final void b() {
            if (K1.this.f65820k != this.f65845f) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        @I2.a
        public g<K, V> next() {
            b();
            g<K, V> gVar = this.f65842c;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f65843d = gVar;
            this.f65844e = gVar;
            this.f65842c = gVar.f65837d;
            this.f65841b++;
            return gVar;
        }

        @Override
        @I2.a
        public g<K, V> previous() {
            b();
            g<K, V> gVar = this.f65844e;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f65843d = gVar;
            this.f65842c = gVar;
            this.f65844e = gVar.f65838e;
            this.f65841b--;
            return gVar;
        }

        @Override
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        public void g(@InterfaceC12518f2 V v10) {
            w2.H.g0(this.f65843d != null);
            this.f65843d.f65836c = v10;
        }

        @Override
        public boolean hasNext() {
            b();
            return this.f65842c != null;
        }

        @Override
        public boolean hasPrevious() {
            b();
            return this.f65844e != null;
        }

        @Override
        public int nextIndex() {
            return this.f65841b;
        }

        @Override
        public int previousIndex() {
            return this.f65841b - 1;
        }

        @Override
        public void remove() {
            b();
            w2.H.h0(this.f65843d != null, "no calls to next() since the last call to remove()");
            g<K, V> gVar = this.f65843d;
            if (gVar != this.f65842c) {
                this.f65844e = gVar.f65838e;
                this.f65841b--;
            } else {
                this.f65842c = gVar.f65837d;
            }
            K1.this.I(gVar);
            this.f65843d = null;
            this.f65845f = K1.this.f65820k;
        }
    }

    public K1() {
        this(12);
    }

    public static <K, V> K1<K, V> A(int i10) {
        return new K1<>(i10);
    }

    public static <K, V> K1<K, V> B(S1<? extends K, ? extends V> s12) {
        return new K1<>(s12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.c
    private void G(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f65818i = G.g0();
        int readInt = objectInputStream.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    @v2.c
    private void K(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : v()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public static <K, V> K1<K, V> y() {
        return new K1<>();
    }

    @Override
    public List<Map.Entry<K, V>> b() {
        return new b();
    }

    @Override
    public List<V> g() {
        return new d();
    }

    @Override
    public List<Map.Entry<K, V>> v() {
        return (List) super.v();
    }

    public final List<V> F(@InterfaceC12518f2 K k10) {
        return Collections.unmodifiableList(M1.s(new i(k10)));
    }

    public final void H(@InterfaceC12518f2 K k10) {
        E1.h(new i(k10));
    }

    public final void I(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f65838e;
        if (gVar2 != null) {
            gVar2.f65837d = gVar.f65837d;
        } else {
            this.f65816g = gVar.f65837d;
        }
        g<K, V> gVar3 = gVar.f65837d;
        if (gVar3 != null) {
            gVar3.f65838e = gVar2;
        } else {
            this.f65817h = gVar2;
        }
        if (gVar.f65840g == null && gVar.f65839f == null) {
            f<K, V> remove = this.f65818i.remove(gVar.f65835b);
            Objects.requireNonNull(remove);
            remove.f65834c = 0;
            this.f65820k++;
        } else {
            f<K, V> fVar = this.f65818i.get(gVar.f65835b);
            Objects.requireNonNull(fVar);
            fVar.f65834c--;
            g<K, V> gVar4 = gVar.f65840g;
            if (gVar4 == null) {
                g<K, V> gVar5 = gVar.f65839f;
                Objects.requireNonNull(gVar5);
                fVar.f65832a = gVar5;
            } else {
                gVar4.f65839f = gVar.f65839f;
            }
            g<K, V> gVar6 = gVar.f65839f;
            if (gVar6 == null) {
                g<K, V> gVar7 = gVar.f65840g;
                Objects.requireNonNull(gVar7);
                fVar.f65833b = gVar7;
            } else {
                gVar6.f65840g = gVar.f65840g;
            }
        }
        this.f65819j--;
    }

    @Override
    public List<V> values() {
        return (List) super.values();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.Z(obj, iterable);
    }

    @Override
    public Map<K, Collection<V>> a() {
        return new U1.a(this);
    }

    @Override
    public void clear() {
        this.f65816g = null;
        this.f65817h = null;
        this.f65818i.clear();
        this.f65819j = 0;
        this.f65820k++;
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return this.f65818i.containsKey(obj);
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((K1<K, V>) obj, iterable);
    }

    @Override
    public Set<K> e() {
        return new c();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public V1<K> f() {
        return new U1.g(this);
    }

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.g0(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((K1<K, V>) obj);
    }

    @Override
    public Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f65816g == null;
    }

    @Override
    public V1 j() {
        return super.j();
    }

    @Override
    public Map k() {
        return super.k();
    }

    @Override
    public Set keySet() {
        return super.keySet();
    }

    @Override
    @I2.a
    public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        x(k10, v10, null);
        return true;
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override
    public int size() {
        return this.f65819j;
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    @I2.a
    public boolean w(S1 s12) {
        return super.w(s12);
    }

    @I2.a
    public final g<K, V> x(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10, @CheckForNull g<K, V> gVar) {
        g<K, V> gVar2 = new g<>(k10, v10);
        if (this.f65816g == null) {
            this.f65817h = gVar2;
            this.f65816g = gVar2;
            this.f65818i.put(k10, new f<>(gVar2));
            this.f65820k++;
        } else if (gVar == null) {
            g<K, V> gVar3 = this.f65817h;
            Objects.requireNonNull(gVar3);
            gVar3.f65837d = gVar2;
            gVar2.f65838e = this.f65817h;
            this.f65817h = gVar2;
            f<K, V> fVar = this.f65818i.get(k10);
            if (fVar == null) {
                this.f65818i.put(k10, new f<>(gVar2));
                this.f65820k++;
            } else {
                fVar.f65834c++;
                g<K, V> gVar4 = fVar.f65833b;
                gVar4.f65839f = gVar2;
                gVar2.f65840g = gVar4;
                fVar.f65833b = gVar2;
            }
        } else {
            f<K, V> fVar2 = this.f65818i.get(k10);
            Objects.requireNonNull(fVar2);
            fVar2.f65834c++;
            gVar2.f65838e = gVar.f65838e;
            gVar2.f65840g = gVar.f65840g;
            gVar2.f65837d = gVar;
            gVar2.f65839f = gVar;
            g<K, V> gVar5 = gVar.f65840g;
            if (gVar5 == null) {
                fVar2.f65832a = gVar2;
            } else {
                gVar5.f65839f = gVar2;
            }
            g<K, V> gVar6 = gVar.f65838e;
            if (gVar6 == null) {
                this.f65816g = gVar2;
            } else {
                gVar6.f65837d = gVar2;
            }
            gVar.f65838e = gVar2;
            gVar.f65840g = gVar2;
        }
        this.f65819j++;
        return gVar2;
    }

    public K1(int i10) {
        this.f65818i = C12526h2.d(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public List<V> c(Object obj) {
        List<V> F10 = F(obj);
        H(obj);
        return F10;
    }

    @Override
    @I2.a
    public List<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        List<V> F10 = F(k10);
        i iVar = new i(k10);
        Iterator<? extends V> it = iterable.iterator();
        while (iVar.hasNext() && it.hasNext()) {
            iVar.next();
            iVar.set(it.next());
        }
        while (iVar.hasNext()) {
            iVar.next();
            iVar.remove();
        }
        while (it.hasNext()) {
            iVar.add(it.next());
        }
        return F10;
    }

    @Override
    public List<V> y(@InterfaceC12518f2 K k10) {
        return new a(k10);
    }

    public class e implements Iterator<K> {

        public final Set<K> f65827b;

        @CheckForNull
        public g<K, V> f65828c;

        @CheckForNull
        public g<K, V> f65829d;

        public int f65830e;

        public e() {
            this.f65827b = D2.y(K1.this.keySet().size());
            this.f65828c = K1.this.f65816g;
            this.f65830e = K1.this.f65820k;
        }

        public final void a() {
            if (K1.this.f65820k != this.f65830e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public boolean hasNext() {
            a();
            return this.f65828c != null;
        }

        @Override
        @InterfaceC12518f2
        public K next() {
            g<K, V> gVar;
            a();
            g<K, V> gVar2 = this.f65828c;
            if (gVar2 == null) {
                throw new NoSuchElementException();
            }
            this.f65829d = gVar2;
            this.f65827b.add(gVar2.f65835b);
            do {
                gVar = this.f65828c.f65837d;
                this.f65828c = gVar;
                if (gVar == null) {
                    break;
                }
            } while (!this.f65827b.add(gVar.f65835b));
            return this.f65829d.f65835b;
        }

        @Override
        public void remove() {
            a();
            w2.H.h0(this.f65829d != null, "no calls to next() since the last call to remove()");
            K1.this.H(this.f65829d.f65835b);
            this.f65829d = null;
            this.f65830e = K1.this.f65820k;
        }

        public e(K1 k12, a aVar) {
            this();
        }
    }

    public class i implements ListIterator<V> {

        @InterfaceC12518f2
        public final K f65847b;

        public int f65848c;

        @CheckForNull
        public g<K, V> f65849d;

        @CheckForNull
        public g<K, V> f65850e;

        @CheckForNull
        public g<K, V> f65851f;

        public i(@InterfaceC12518f2 K k10) {
            this.f65847b = k10;
            f fVar = (f) K1.this.f65818i.get(k10);
            this.f65849d = fVar == null ? null : fVar.f65832a;
        }

        @Override
        public void add(@InterfaceC12518f2 V v10) {
            this.f65851f = K1.this.x(this.f65847b, v10, this.f65849d);
            this.f65848c++;
            this.f65850e = null;
        }

        @Override
        public boolean hasNext() {
            return this.f65849d != null;
        }

        @Override
        public boolean hasPrevious() {
            return this.f65851f != null;
        }

        @Override
        @I2.a
        @InterfaceC12518f2
        public V next() {
            g<K, V> gVar = this.f65849d;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f65850e = gVar;
            this.f65851f = gVar;
            this.f65849d = gVar.f65839f;
            this.f65848c++;
            return gVar.f65836c;
        }

        @Override
        public int nextIndex() {
            return this.f65848c;
        }

        @Override
        @I2.a
        @InterfaceC12518f2
        public V previous() {
            g<K, V> gVar = this.f65851f;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f65850e = gVar;
            this.f65849d = gVar;
            this.f65851f = gVar.f65840g;
            this.f65848c--;
            return gVar.f65836c;
        }

        @Override
        public int previousIndex() {
            return this.f65848c - 1;
        }

        @Override
        public void remove() {
            w2.H.h0(this.f65850e != null, "no calls to next() since the last call to remove()");
            g<K, V> gVar = this.f65850e;
            if (gVar != this.f65849d) {
                this.f65851f = gVar.f65840g;
                this.f65848c--;
            } else {
                this.f65849d = gVar.f65839f;
            }
            K1.this.I(gVar);
            this.f65850e = null;
        }

        @Override
        public void set(@InterfaceC12518f2 V v10) {
            w2.H.g0(this.f65850e != null);
            this.f65850e.f65836c = v10;
        }

        public i(@InterfaceC12518f2 K k10, int i10) {
            f fVar = (f) K1.this.f65818i.get(k10);
            int i11 = fVar == null ? 0 : fVar.f65834c;
            w2.H.d0(i10, i11);
            if (i10 >= i11 / 2) {
                this.f65851f = fVar == null ? null : fVar.f65833b;
                this.f65848c = i11;
                while (true) {
                    int i12 = i10 + 1;
                    if (i10 >= i11) {
                        break;
                    }
                    previous();
                    i10 = i12;
                }
            } else {
                this.f65849d = fVar == null ? null : fVar.f65832a;
                while (true) {
                    int i13 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    next();
                    i10 = i13;
                }
            }
            this.f65847b = k10;
            this.f65850e = null;
        }
    }

    public K1(S1<? extends K, ? extends V> s12) {
        this(s12.keySet().size());
        w(s12);
    }
}
