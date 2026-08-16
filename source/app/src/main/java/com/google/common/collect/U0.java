package com.google.common.collect;

import com.google.common.collect.AbstractC12505c1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class U0<K, V> extends AbstractMap<K, V> implements InterfaceC12582w<K, V>, Serializable {

    public static final int f66240r = -1;

    public static final int f66241s = -2;

    public transient K[] f66242b;

    public transient V[] f66243c;

    public transient int f66244d;

    public transient int f66245e;

    public transient int[] f66246f;

    public transient int[] f66247g;

    public transient int[] f66248h;

    public transient int[] f66249i;

    public transient int f66250j;

    public transient int f66251k;

    public transient int[] f66252l;

    public transient int[] f66253m;

    public transient Set<K> f66254n;

    public transient Set<V> f66255o;

    public transient Set<Map.Entry<K, V>> f66256p;

    @q3.h
    @CheckForNull
    @J2.b
    public transient InterfaceC12582w<V, K> f66257q;

    public final class a extends AbstractC12519g<K, V> {

        @InterfaceC12518f2
        public final K f66258b;

        public int f66259c;

        public a(int i10) {
            this.f66258b = (K) Z1.a(U0.this.f66242b[i10]);
            this.f66259c = i10;
        }

        public void e() {
            int i10 = this.f66259c;
            if (i10 != -1) {
                U0 u02 = U0.this;
                if (i10 <= u02.f66244d && w2.B.a(u02.f66242b[i10], this.f66258b)) {
                    return;
                }
            }
            this.f66259c = U0.this.r(this.f66258b);
        }

        @Override
        @InterfaceC12518f2
        public K getKey() {
            return this.f66258b;
        }

        @Override
        @InterfaceC12518f2
        public V getValue() {
            e();
            int i10 = this.f66259c;
            return i10 == -1 ? (V) Z1.b() : (V) Z1.a(U0.this.f66243c[i10]);
        }

        @Override
        @InterfaceC12518f2
        public V setValue(@InterfaceC12518f2 V v10) {
            e();
            int i10 = this.f66259c;
            if (i10 == -1) {
                U0.this.put(this.f66258b, v10);
                return (V) Z1.b();
            }
            V v11 = (V) Z1.a(U0.this.f66243c[i10]);
            if (w2.B.a(v11, v10)) {
                return v10;
            }
            U0.this.L(this.f66259c, v10, false);
            return v11;
        }
    }

    public static final class b<K, V> extends AbstractC12519g<V, K> {

        public final U0<K, V> f66261b;

        @InterfaceC12518f2
        public final V f66262c;

        public int f66263d;

        public b(U0<K, V> u02, int i10) {
            this.f66261b = u02;
            this.f66262c = (V) Z1.a(u02.f66243c[i10]);
            this.f66263d = i10;
        }

        private void e() {
            int i10 = this.f66263d;
            if (i10 != -1) {
                U0<K, V> u02 = this.f66261b;
                if (i10 <= u02.f66244d && w2.B.a(this.f66262c, u02.f66243c[i10])) {
                    return;
                }
            }
            this.f66263d = this.f66261b.u(this.f66262c);
        }

        @Override
        @InterfaceC12518f2
        public V getKey() {
            return this.f66262c;
        }

        @Override
        @InterfaceC12518f2
        public K getValue() {
            e();
            int i10 = this.f66263d;
            return i10 == -1 ? (K) Z1.b() : (K) Z1.a(this.f66261b.f66242b[i10]);
        }

        @Override
        @InterfaceC12518f2
        public K setValue(@InterfaceC12518f2 K k10) {
            e();
            int i10 = this.f66263d;
            if (i10 == -1) {
                this.f66261b.C(this.f66262c, k10, false);
                return (K) Z1.b();
            }
            K k11 = (K) Z1.a(this.f66261b.f66242b[i10]);
            if (w2.B.a(k11, k10)) {
                return k10;
            }
            this.f66261b.K(this.f66263d, k10, false);
            return k11;
        }
    }

    public final class c extends h<K, V, Map.Entry<K, V>> {
        public c() {
            super(U0.this);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int r10 = U0.this.r(key);
            return r10 != -1 && w2.B.a(value, U0.this.f66243c[r10]);
        }

        @Override
        public Map.Entry<K, V> j(int i10) {
            return new a(i10);
        }

        @Override
        @I2.a
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int d10 = Y0.d(key);
            int s10 = U0.this.s(key, d10);
            if (s10 == -1 || !w2.B.a(value, U0.this.f66243c[s10])) {
                return false;
            }
            U0.this.H(s10, d10);
            return true;
        }
    }

    public static class d<K, V> extends AbstractMap<V, K> implements InterfaceC12582w<V, K>, Serializable {

        public final U0<K, V> f66265b;

        public transient Set<Map.Entry<V, K>> f66266c;

        public d(U0<K, V> u02) {
            this.f66265b = u02;
        }

        @v2.c("serialization")
        private void a(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f66265b.f66257q = this;
        }

        @Override
        public InterfaceC12582w<K, V> A8() {
            return this.f66265b;
        }

        @Override
        @I2.a
        @CheckForNull
        public K U6(@InterfaceC12518f2 V v10, @InterfaceC12518f2 K k10) {
            return this.f66265b.C(v10, k10, true);
        }

        @Override
        public void clear() {
            this.f66265b.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66265b.containsValue(obj);
        }

        @Override
        public boolean containsValue(@CheckForNull Object obj) {
            return this.f66265b.containsKey(obj);
        }

        @Override
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.f66266c;
            if (set != null) {
                return set;
            }
            e eVar = new e(this.f66265b);
            this.f66266c = eVar;
            return eVar;
        }

        @Override
        @CheckForNull
        public K get(@CheckForNull Object obj) {
            return this.f66265b.w(obj);
        }

        @Override
        public Set<V> o() {
            return this.f66265b.values();
        }

        @Override
        @I2.a
        @CheckForNull
        public K put(@InterfaceC12518f2 V v10, @InterfaceC12518f2 K k10) {
            return this.f66265b.C(v10, k10, false);
        }

        @Override
        @I2.a
        @CheckForNull
        public K remove(@CheckForNull Object obj) {
            return this.f66265b.J(obj);
        }

        @Override
        public int size() {
            return this.f66265b.f66244d;
        }

        @Override
        public Set<K> values() {
            return this.f66265b.o();
        }
    }

    public static class e<K, V> extends h<K, V, Map.Entry<V, K>> {
        public e(U0<K, V> u02) {
            super(u02);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int u10 = this.f66269b.u(key);
            return u10 != -1 && w2.B.a(this.f66269b.f66242b[u10], value);
        }

        @Override
        public Map.Entry<V, K> j(int i10) {
            return new b(this.f66269b, i10);
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int d10 = Y0.d(key);
            int v10 = this.f66269b.v(key, d10);
            if (v10 == -1 || !w2.B.a(this.f66269b.f66242b[v10], value)) {
                return false;
            }
            this.f66269b.I(v10, d10);
            return true;
        }
    }

    public final class f extends h<K, V, K> {
        public f() {
            super(U0.this);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return U0.this.containsKey(obj);
        }

        @Override
        @InterfaceC12518f2
        public K j(int i10) {
            return (K) Z1.a(U0.this.f66242b[i10]);
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            int d10 = Y0.d(obj);
            int s10 = U0.this.s(obj, d10);
            if (s10 == -1) {
                return false;
            }
            U0.this.H(s10, d10);
            return true;
        }
    }

    public final class g extends h<K, V, V> {
        public g() {
            super(U0.this);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return U0.this.containsValue(obj);
        }

        @Override
        @InterfaceC12518f2
        public V j(int i10) {
            return (V) Z1.a(U0.this.f66243c[i10]);
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            int d10 = Y0.d(obj);
            int v10 = U0.this.v(obj, d10);
            if (v10 == -1) {
                return false;
            }
            U0.this.I(v10, d10);
            return true;
        }
    }

    public static abstract class h<K, V, T> extends AbstractSet<T> {

        public final U0<K, V> f66269b;

        public class a implements Iterator<T> {

            public int f66270b;

            public int f66271c = -1;

            public int f66272d;

            public int f66273e;

            public a() {
                this.f66270b = h.this.f66269b.f66250j;
                U0<K, V> u02 = h.this.f66269b;
                this.f66272d = u02.f66245e;
                this.f66273e = u02.f66244d;
            }

            public final void a() {
                if (h.this.f66269b.f66245e != this.f66272d) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                a();
                return this.f66270b != -2 && this.f66273e > 0;
            }

            @Override
            @InterfaceC12518f2
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                T t10 = (T) h.this.j(this.f66270b);
                this.f66271c = this.f66270b;
                this.f66270b = h.this.f66269b.f66253m[this.f66270b];
                this.f66273e--;
                return t10;
            }

            @Override
            public void remove() {
                a();
                B.e(this.f66271c != -1);
                h.this.f66269b.E(this.f66271c);
                int i10 = this.f66270b;
                U0<K, V> u02 = h.this.f66269b;
                if (i10 == u02.f66244d) {
                    this.f66270b = this.f66271c;
                }
                this.f66271c = -1;
                this.f66272d = u02.f66245e;
            }
        }

        public h(U0<K, V> u02) {
            this.f66269b = u02;
        }

        @Override
        public void clear() {
            this.f66269b.clear();
        }

        @Override
        public Iterator<T> iterator() {
            return new a();
        }

        @InterfaceC12518f2
        public abstract T j(int i10);

        @Override
        public int size() {
            return this.f66269b.f66244d;
        }
    }

    public U0(int i10) {
        x(i10);
    }

    @v2.c
    private void D(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int h10 = B2.h(objectInputStream);
        x(16);
        B2.c(this, objectInputStream, h10);
    }

    @v2.c
    private void N(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        B2.i(this, objectOutputStream);
    }

    public static <K, V> U0<K, V> i() {
        return j(16);
    }

    public static <K, V> U0<K, V> j(int i10) {
        return new U0<>(i10);
    }

    public static <K, V> U0<K, V> k(Map<? extends K, ? extends V> map) {
        U0<K, V> j10 = j(map.size());
        j10.putAll(map);
        return j10;
    }

    public static int[] l(int i10) {
        int[] iArr = new int[i10];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    public static int[] p(int[] iArr, int i10) {
        int length = iArr.length;
        int[] copyOf = Arrays.copyOf(iArr, i10);
        Arrays.fill(copyOf, length, i10, -1);
        return copyOf;
    }

    public final void A(int i10, int i11) {
        int i12;
        int i13;
        if (i10 == i11) {
            return;
        }
        int i14 = this.f66252l[i10];
        int i15 = this.f66253m[i10];
        M(i14, i11);
        M(i11, i15);
        K[] kArr = this.f66242b;
        K k10 = kArr[i10];
        V[] vArr = this.f66243c;
        V v10 = vArr[i10];
        kArr[i11] = k10;
        vArr[i11] = v10;
        int f10 = f(Y0.d(k10));
        int[] iArr = this.f66246f;
        int i16 = iArr[f10];
        if (i16 == i10) {
            iArr[f10] = i11;
        } else {
            int i17 = this.f66248h[i16];
            while (true) {
                i12 = i16;
                i16 = i17;
                if (i16 == i10) {
                    break;
                } else {
                    i17 = this.f66248h[i16];
                }
            }
            this.f66248h[i12] = i11;
        }
        int[] iArr2 = this.f66248h;
        iArr2[i11] = iArr2[i10];
        iArr2[i10] = -1;
        int f11 = f(Y0.d(v10));
        int[] iArr3 = this.f66247g;
        int i18 = iArr3[f11];
        if (i18 == i10) {
            iArr3[f11] = i11;
        } else {
            int i19 = this.f66249i[i18];
            while (true) {
                i13 = i18;
                i18 = i19;
                if (i18 == i10) {
                    break;
                } else {
                    i19 = this.f66249i[i18];
                }
            }
            this.f66249i[i13] = i11;
        }
        int[] iArr4 = this.f66249i;
        iArr4[i11] = iArr4[i10];
        iArr4[i10] = -1;
    }

    @Override
    public InterfaceC12582w<V, K> A8() {
        InterfaceC12582w<V, K> interfaceC12582w = this.f66257q;
        if (interfaceC12582w != null) {
            return interfaceC12582w;
        }
        d dVar = new d(this);
        this.f66257q = dVar;
        return dVar;
    }

    @CheckForNull
    public V B(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10, boolean z10) {
        int d10 = Y0.d(k10);
        int s10 = s(k10, d10);
        if (s10 != -1) {
            V v11 = this.f66243c[s10];
            if (w2.B.a(v11, v10)) {
                return v10;
            }
            L(s10, v10, z10);
            return v11;
        }
        int d11 = Y0.d(v10);
        int v12 = v(v10, d11);
        if (!z10) {
            w2.H.u(v12 == -1, "Value already present: %s", v10);
        } else if (v12 != -1) {
            I(v12, d11);
        }
        o(this.f66244d + 1);
        K[] kArr = this.f66242b;
        int i10 = this.f66244d;
        kArr[i10] = k10;
        this.f66243c[i10] = v10;
        y(i10, d10);
        z(this.f66244d, d11);
        M(this.f66251k, this.f66244d);
        M(this.f66244d, -2);
        this.f66244d++;
        this.f66245e++;
        return null;
    }

    @I2.a
    @CheckForNull
    public K C(@InterfaceC12518f2 V v10, @InterfaceC12518f2 K k10, boolean z10) {
        int d10 = Y0.d(v10);
        int v11 = v(v10, d10);
        if (v11 != -1) {
            K k11 = this.f66242b[v11];
            if (w2.B.a(k11, k10)) {
                return k10;
            }
            K(v11, k10, z10);
            return k11;
        }
        int i10 = this.f66251k;
        int d11 = Y0.d(k10);
        int s10 = s(k10, d11);
        if (!z10) {
            w2.H.u(s10 == -1, "Key already present: %s", k10);
        } else if (s10 != -1) {
            i10 = this.f66252l[s10];
            H(s10, d11);
        }
        o(this.f66244d + 1);
        K[] kArr = this.f66242b;
        int i11 = this.f66244d;
        kArr[i11] = k10;
        this.f66243c[i11] = v10;
        y(i11, d11);
        z(this.f66244d, d10);
        int i12 = i10 == -2 ? this.f66250j : this.f66253m[i10];
        M(i10, this.f66244d);
        M(this.f66244d, i12);
        this.f66244d++;
        this.f66245e++;
        return null;
    }

    public void E(int i10) {
        H(i10, Y0.d(this.f66242b[i10]));
    }

    public final void F(int i10, int i11, int i12) {
        w2.H.d(i10 != -1);
        m(i10, i11);
        n(i10, i12);
        M(this.f66252l[i10], this.f66253m[i10]);
        A(this.f66244d - 1, i10);
        K[] kArr = this.f66242b;
        int i13 = this.f66244d;
        kArr[i13 - 1] = null;
        this.f66243c[i13 - 1] = null;
        this.f66244d = i13 - 1;
        this.f66245e++;
    }

    public void H(int i10, int i11) {
        F(i10, i11, Y0.d(this.f66243c[i10]));
    }

    public void I(int i10, int i11) {
        F(i10, Y0.d(this.f66242b[i10]), i11);
    }

    @CheckForNull
    public K J(@CheckForNull Object obj) {
        int d10 = Y0.d(obj);
        int v10 = v(obj, d10);
        if (v10 == -1) {
            return null;
        }
        K k10 = this.f66242b[v10];
        I(v10, d10);
        return k10;
    }

    public final void K(int i10, @InterfaceC12518f2 K k10, boolean z10) {
        int i11;
        w2.H.d(i10 != -1);
        int d10 = Y0.d(k10);
        int s10 = s(k10, d10);
        int i12 = this.f66251k;
        if (s10 == -1) {
            i11 = -2;
        } else {
            if (!z10) {
                String valueOf = String.valueOf(k10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 28);
                sb2.append("Key already present in map: ");
                sb2.append(valueOf);
                throw new IllegalArgumentException(sb2.toString());
            }
            i12 = this.f66252l[s10];
            i11 = this.f66253m[s10];
            H(s10, d10);
            if (i10 == this.f66244d) {
                i10 = s10;
            }
        }
        if (i12 == i10) {
            i12 = this.f66252l[i10];
        } else if (i12 == this.f66244d) {
            i12 = s10;
        }
        if (i11 == i10) {
            s10 = this.f66253m[i10];
        } else if (i11 != this.f66244d) {
            s10 = i11;
        }
        M(this.f66252l[i10], this.f66253m[i10]);
        m(i10, Y0.d(this.f66242b[i10]));
        this.f66242b[i10] = k10;
        y(i10, Y0.d(k10));
        M(i12, i10);
        M(i10, s10);
    }

    public final void L(int i10, @InterfaceC12518f2 V v10, boolean z10) {
        w2.H.d(i10 != -1);
        int d10 = Y0.d(v10);
        int v11 = v(v10, d10);
        if (v11 != -1) {
            if (!z10) {
                String valueOf = String.valueOf(v10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 30);
                sb2.append("Value already present in map: ");
                sb2.append(valueOf);
                throw new IllegalArgumentException(sb2.toString());
            }
            I(v11, d10);
            if (i10 == this.f66244d) {
                i10 = v11;
            }
        }
        n(i10, Y0.d(this.f66243c[i10]));
        this.f66243c[i10] = v10;
        z(i10, d10);
    }

    public final void M(int i10, int i11) {
        if (i10 == -2) {
            this.f66250j = i11;
        } else {
            this.f66253m[i10] = i11;
        }
        if (i11 == -2) {
            this.f66251k = i10;
        } else {
            this.f66252l[i11] = i10;
        }
    }

    @Override
    @I2.a
    @CheckForNull
    public V U6(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return B(k10, v10, true);
    }

    @Override
    public void clear() {
        Arrays.fill(this.f66242b, 0, this.f66244d, (Object) null);
        Arrays.fill(this.f66243c, 0, this.f66244d, (Object) null);
        Arrays.fill(this.f66246f, -1);
        Arrays.fill(this.f66247g, -1);
        Arrays.fill(this.f66248h, 0, this.f66244d, -1);
        Arrays.fill(this.f66249i, 0, this.f66244d, -1);
        Arrays.fill(this.f66252l, 0, this.f66244d, -1);
        Arrays.fill(this.f66253m, 0, this.f66244d, -1);
        this.f66244d = 0;
        this.f66250j = -2;
        this.f66251k = -2;
        this.f66245e++;
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return r(obj) != -1;
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return u(obj) != -1;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f66256p;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.f66256p = cVar;
        return cVar;
    }

    public final int f(int i10) {
        return i10 & (this.f66246f.length - 1);
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        int r10 = r(obj);
        if (r10 == -1) {
            return null;
        }
        return this.f66243c[r10];
    }

    @Override
    public Set<K> o() {
        Set<K> set = this.f66254n;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.f66254n = fVar;
        return fVar;
    }

    public final void m(int i10, int i11) {
        w2.H.d(i10 != -1);
        int f10 = f(i11);
        int[] iArr = this.f66246f;
        int i12 = iArr[f10];
        if (i12 == i10) {
            int[] iArr2 = this.f66248h;
            iArr[f10] = iArr2[i10];
            iArr2[i10] = -1;
            return;
        }
        int i13 = this.f66248h[i12];
        while (true) {
            int i14 = i12;
            i12 = i13;
            if (i12 == -1) {
                String valueOf = String.valueOf(this.f66242b[i10]);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
                sb2.append("Expected to find entry with key ");
                sb2.append(valueOf);
                throw new AssertionError((Object) sb2.toString());
            }
            if (i12 == i10) {
                int[] iArr3 = this.f66248h;
                iArr3[i14] = iArr3[i10];
                iArr3[i10] = -1;
                return;
            }
            i13 = this.f66248h[i12];
        }
    }

    public final void n(int i10, int i11) {
        w2.H.d(i10 != -1);
        int f10 = f(i11);
        int[] iArr = this.f66247g;
        int i12 = iArr[f10];
        if (i12 == i10) {
            int[] iArr2 = this.f66249i;
            iArr[f10] = iArr2[i10];
            iArr2[i10] = -1;
            return;
        }
        int i13 = this.f66249i[i12];
        while (true) {
            int i14 = i12;
            i12 = i13;
            if (i12 == -1) {
                String valueOf = String.valueOf(this.f66243c[i10]);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 34);
                sb2.append("Expected to find entry with value ");
                sb2.append(valueOf);
                throw new AssertionError((Object) sb2.toString());
            }
            if (i12 == i10) {
                int[] iArr3 = this.f66249i;
                iArr3[i14] = iArr3[i10];
                iArr3[i10] = -1;
                return;
            }
            i13 = this.f66249i[i12];
        }
    }

    public final void o(int i10) {
        int[] iArr = this.f66248h;
        if (iArr.length < i10) {
            int f10 = AbstractC12505c1.b.f(iArr.length, i10);
            this.f66242b = (K[]) Arrays.copyOf(this.f66242b, f10);
            this.f66243c = (V[]) Arrays.copyOf(this.f66243c, f10);
            this.f66248h = p(this.f66248h, f10);
            this.f66249i = p(this.f66249i, f10);
            this.f66252l = p(this.f66252l, f10);
            this.f66253m = p(this.f66253m, f10);
        }
        if (this.f66246f.length < i10) {
            int a10 = Y0.a(i10, 1.0d);
            this.f66246f = l(a10);
            this.f66247g = l(a10);
            for (int i11 = 0; i11 < this.f66244d; i11++) {
                int f11 = f(Y0.d(this.f66242b[i11]));
                int[] iArr2 = this.f66248h;
                int[] iArr3 = this.f66246f;
                iArr2[i11] = iArr3[f11];
                iArr3[f11] = i11;
                int f12 = f(Y0.d(this.f66243c[i11]));
                int[] iArr4 = this.f66249i;
                int[] iArr5 = this.f66247g;
                iArr4[i11] = iArr5[f12];
                iArr5[f12] = i11;
            }
        }
    }

    @Override
    @I2.a
    @CheckForNull
    public V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return B(k10, v10, false);
    }

    public int q(@CheckForNull Object obj, int i10, int[] iArr, int[] iArr2, Object[] objArr) {
        int i11 = iArr[f(i10)];
        while (i11 != -1) {
            if (w2.B.a(objArr[i11], obj)) {
                return i11;
            }
            i11 = iArr2[i11];
        }
        return -1;
    }

    public int r(@CheckForNull Object obj) {
        return s(obj, Y0.d(obj));
    }

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        int d10 = Y0.d(obj);
        int s10 = s(obj, d10);
        if (s10 == -1) {
            return null;
        }
        V v10 = this.f66243c[s10];
        H(s10, d10);
        return v10;
    }

    public int s(@CheckForNull Object obj, int i10) {
        return q(obj, i10, this.f66246f, this.f66248h, this.f66242b);
    }

    @Override
    public int size() {
        return this.f66244d;
    }

    public int u(@CheckForNull Object obj) {
        return v(obj, Y0.d(obj));
    }

    public int v(@CheckForNull Object obj, int i10) {
        return q(obj, i10, this.f66247g, this.f66249i, this.f66243c);
    }

    @CheckForNull
    public K w(@CheckForNull Object obj) {
        int u10 = u(obj);
        if (u10 == -1) {
            return null;
        }
        return this.f66242b[u10];
    }

    public void x(int i10) {
        B.b(i10, "expectedSize");
        int a10 = Y0.a(i10, 1.0d);
        this.f66244d = 0;
        this.f66242b = (K[]) new Object[i10];
        this.f66243c = (V[]) new Object[i10];
        this.f66246f = l(a10);
        this.f66247g = l(a10);
        this.f66248h = l(i10);
        this.f66249i = l(i10);
        this.f66250j = -2;
        this.f66251k = -2;
        this.f66252l = l(i10);
        this.f66253m = l(i10);
    }

    public final void y(int i10, int i11) {
        w2.H.d(i10 != -1);
        int f10 = f(i11);
        int[] iArr = this.f66248h;
        int[] iArr2 = this.f66246f;
        iArr[i10] = iArr2[f10];
        iArr2[f10] = i10;
    }

    public final void z(int i10, int i11) {
        w2.H.d(i10 != -1);
        int f10 = f(i11);
        int[] iArr = this.f66249i;
        int[] iArr2 = this.f66247g;
        iArr[i10] = iArr2[f10];
        iArr2[f10] = i10;
    }

    @Override
    public Set<V> values() {
        Set<V> set = this.f66255o;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.f66255o = gVar;
        return gVar;
    }
}
