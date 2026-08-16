package com.google.common.collect;

import com.google.common.collect.D2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class H1<K, V> extends I1<K, V> {

    public static final int f65783m = 16;

    public static final int f65784n = 2;

    @v2.d
    public static final double f65785o = 1.0d;

    @v2.c
    public static final long f65786p = 1;

    @v2.d
    public transient int f65787k;

    public transient b<K, V> f65788l;

    public class a implements Iterator<Map.Entry<K, V>> {

        public b<K, V> f65789b;

        @CheckForNull
        public b<K, V> f65790c;

        public a() {
            this.f65789b = H1.this.f65788l.f();
        }

        @Override
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            b<K, V> bVar = this.f65789b;
            this.f65790c = bVar;
            this.f65789b = bVar.f();
            return bVar;
        }

        @Override
        public boolean hasNext() {
            return this.f65789b != H1.this.f65788l;
        }

        @Override
        public void remove() {
            w2.H.h0(this.f65790c != null, "no calls to next() since the last call to remove()");
            H1.this.remove(this.f65790c.getKey(), this.f65790c.getValue());
            this.f65790c = null;
        }
    }

    @v2.d
    public static final class b<K, V> extends C12509d1<K, V> implements d<K, V> {

        public final int f65792e;

        @CheckForNull
        public b<K, V> f65793f;

        @CheckForNull
        public d<K, V> f65794g;

        @CheckForNull
        public d<K, V> f65795h;

        @CheckForNull
        public b<K, V> f65796i;

        @CheckForNull
        public b<K, V> f65797j;

        public b(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10, int i10, @CheckForNull b<K, V> bVar) {
            super(k10, v10);
            this.f65792e = i10;
            this.f65793f = bVar;
        }

        public static <K, V> b<K, V> i() {
            return new b<>(null, null, 0, null);
        }

        @Override
        public d<K, V> b() {
            d<K, V> dVar = this.f65794g;
            Objects.requireNonNull(dVar);
            return dVar;
        }

        @Override
        public void c(d<K, V> dVar) {
            this.f65795h = dVar;
        }

        @Override
        public void d(d<K, V> dVar) {
            this.f65794g = dVar;
        }

        public b<K, V> e() {
            b<K, V> bVar = this.f65796i;
            Objects.requireNonNull(bVar);
            return bVar;
        }

        public b<K, V> f() {
            b<K, V> bVar = this.f65797j;
            Objects.requireNonNull(bVar);
            return bVar;
        }

        @Override
        public d<K, V> g() {
            d<K, V> dVar = this.f65795h;
            Objects.requireNonNull(dVar);
            return dVar;
        }

        public boolean h(@CheckForNull Object obj, int i10) {
            return this.f65792e == i10 && w2.B.a(getValue(), obj);
        }

        public void j(b<K, V> bVar) {
            this.f65796i = bVar;
        }

        public void k(b<K, V> bVar) {
            this.f65797j = bVar;
        }
    }

    @v2.d
    public final class c extends D2.k<V> implements d<K, V> {

        @InterfaceC12518f2
        public final K f65798b;

        @v2.d
        public b<K, V>[] f65799c;

        public int f65800d = 0;

        public int f65801e = 0;

        public d<K, V> f65802f = this;

        public d<K, V> f65803g = this;

        public class a implements Iterator<V> {

            public d<K, V> f65805b;

            @CheckForNull
            public b<K, V> f65806c;

            public int f65807d;

            public a() {
                this.f65805b = c.this.f65802f;
                this.f65807d = c.this.f65801e;
            }

            public final void a() {
                if (c.this.f65801e != this.f65807d) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                a();
                return this.f65805b != c.this;
            }

            @Override
            @InterfaceC12518f2
            public V next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                b<K, V> bVar = (b) this.f65805b;
                V value = bVar.getValue();
                this.f65806c = bVar;
                this.f65805b = bVar.g();
                return value;
            }

            @Override
            public void remove() {
                a();
                w2.H.h0(this.f65806c != null, "no calls to next() since the last call to remove()");
                c.this.remove(this.f65806c.getValue());
                this.f65807d = c.this.f65801e;
                this.f65806c = null;
            }
        }

        public c(@InterfaceC12518f2 K k10, int i10) {
            this.f65798b = k10;
            this.f65799c = new b[Y0.a(i10, 1.0d)];
        }

        @Override
        public boolean add(@InterfaceC12518f2 V v10) {
            int d10 = Y0.d(v10);
            int h10 = h() & d10;
            b<K, V> bVar = this.f65799c[h10];
            for (b<K, V> bVar2 = bVar; bVar2 != null; bVar2 = bVar2.f65793f) {
                if (bVar2.h(v10, d10)) {
                    return false;
                }
            }
            b<K, V> bVar3 = new b<>(this.f65798b, v10, d10, bVar);
            H1.a0(this.f65803g, bVar3);
            H1.a0(bVar3, this);
            H1.Y(H1.this.f65788l.e(), bVar3);
            H1.Y(bVar3, H1.this.f65788l);
            this.f65799c[h10] = bVar3;
            this.f65800d++;
            this.f65801e++;
            i();
            return true;
        }

        @Override
        public d<K, V> b() {
            return this.f65803g;
        }

        @Override
        public void c(d<K, V> dVar) {
            this.f65802f = dVar;
        }

        @Override
        public void clear() {
            Arrays.fill(this.f65799c, (Object) null);
            this.f65800d = 0;
            for (d<K, V> dVar = this.f65802f; dVar != this; dVar = dVar.g()) {
                H1.V((b) dVar);
            }
            H1.a0(this, this);
            this.f65801e++;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            int d10 = Y0.d(obj);
            for (b<K, V> bVar = this.f65799c[h() & d10]; bVar != null; bVar = bVar.f65793f) {
                if (bVar.h(obj, d10)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public void d(d<K, V> dVar) {
            this.f65803g = dVar;
        }

        @Override
        public d<K, V> g() {
            return this.f65802f;
        }

        public final int h() {
            return this.f65799c.length - 1;
        }

        public final void i() {
            if (Y0.b(this.f65800d, this.f65799c.length, 1.0d)) {
                int length = this.f65799c.length * 2;
                b<K, V>[] bVarArr = new b[length];
                this.f65799c = bVarArr;
                int i10 = length - 1;
                for (d<K, V> dVar = this.f65802f; dVar != this; dVar = dVar.g()) {
                    b<K, V> bVar = (b) dVar;
                    int i11 = bVar.f65792e & i10;
                    bVar.f65793f = bVarArr[i11];
                    bVarArr[i11] = bVar;
                }
            }
        }

        @Override
        public Iterator<V> iterator() {
            return new a();
        }

        @Override
        @I2.a
        public boolean remove(@CheckForNull Object obj) {
            int d10 = Y0.d(obj);
            int h10 = h() & d10;
            b<K, V> bVar = null;
            for (b<K, V> bVar2 = this.f65799c[h10]; bVar2 != null; bVar2 = bVar2.f65793f) {
                if (bVar2.h(obj, d10)) {
                    if (bVar == null) {
                        this.f65799c[h10] = bVar2.f65793f;
                    } else {
                        bVar.f65793f = bVar2.f65793f;
                    }
                    H1.W(bVar2);
                    H1.V(bVar2);
                    this.f65800d--;
                    this.f65801e++;
                    return true;
                }
                bVar = bVar2;
            }
            return false;
        }

        @Override
        public int size() {
            return this.f65800d;
        }
    }

    public interface d<K, V> {
        d<K, V> b();

        void c(d<K, V> dVar);

        void d(d<K, V> dVar);

        d<K, V> g();
    }

    public H1(int i10, int i11) {
        super(C12526h2.f(i10));
        this.f65787k = 2;
        B.b(i11, "expectedValuesPerKey");
        this.f65787k = i11;
        b<K, V> i12 = b.i();
        this.f65788l = i12;
        Y(i12, i12);
    }

    public static <K, V> H1<K, V> S() {
        return new H1<>(16, 2);
    }

    public static <K, V> H1<K, V> T(int i10, int i11) {
        return new H1<>(Q1.o(i10), Q1.o(i11));
    }

    public static <K, V> H1<K, V> U(S1<? extends K, ? extends V> s12) {
        H1<K, V> T10 = T(s12.keySet().size(), 2);
        T10.w(s12);
        return T10;
    }

    public static <K, V> void V(b<K, V> bVar) {
        Y(bVar.e(), bVar.f());
    }

    public static <K, V> void W(d<K, V> dVar) {
        a0(dVar.b(), dVar.g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.c
    private void X(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b<K, V> i10 = b.i();
        this.f65788l = i10;
        Y(i10, i10);
        this.f65787k = 2;
        int readInt = objectInputStream.readInt();
        Map f10 = C12526h2.f(12);
        for (int i11 = 0; i11 < readInt; i11++) {
            Object readObject = objectInputStream.readObject();
            f10.put(readObject, y(readObject));
        }
        int readInt2 = objectInputStream.readInt();
        for (int i12 = 0; i12 < readInt2; i12++) {
            Object readObject2 = objectInputStream.readObject();
            Object readObject3 = objectInputStream.readObject();
            Collection collection = (Collection) f10.get(readObject2);
            Objects.requireNonNull(collection);
            collection.add(readObject3);
        }
        G(f10);
    }

    public static <K, V> void Y(b<K, V> bVar, b<K, V> bVar2) {
        bVar.k(bVar2);
        bVar2.j(bVar);
    }

    public static <K, V> void a0(d<K, V> dVar, d<K, V> dVar2) {
        dVar.c(dVar2);
        dVar2.d(dVar);
    }

    @v2.c
    private void b0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : v()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override
    public Set<V> x() {
        return C12526h2.g(this.f65787k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return super.Z(obj, iterable);
    }

    @Override
    @I2.a
    public Set c(@CheckForNull Object obj) {
        return super.c(obj);
    }

    @Override
    public void clear() {
        super.clear();
        b<K, V> bVar = this.f65788l;
        Y(bVar, bVar);
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return super.containsKey(obj);
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((H1<K, V>) obj, iterable);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.g0(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set y(@InterfaceC12518f2 Object obj) {
        return super.y((H1<K, V>) obj);
    }

    @Override
    public Iterator<Map.Entry<K, V>> h() {
        return new a();
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public Iterator<V> i() {
        return Q1.O0(h());
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
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
    public Set<K> keySet() {
        return super.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public boolean put(@InterfaceC12518f2 Object obj, @InterfaceC12518f2 Object obj2) {
        return super.put(obj, obj2);
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    @Override
    @I2.a
    public boolean w(S1 s12) {
        return super.w(s12);
    }

    @Override
    public Collection<V> y(@InterfaceC12518f2 K k10) {
        return new c(k10, this.f65787k);
    }

    @Override
    @I2.a
    public Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return super.d((H1<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public Set<Map.Entry<K, V>> v() {
        return super.v();
    }
}
