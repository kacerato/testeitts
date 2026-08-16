package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.c
public class D<K, V> extends AbstractMap<K, V> implements Serializable {

    public static final Object f65624k = new Object();

    @v2.d
    public static final double f65625l = 0.001d;

    public static final int f65626m = 9;

    @CheckForNull
    public transient Object f65627b;

    @v2.d
    @CheckForNull
    public transient int[] f65628c;

    @v2.d
    @CheckForNull
    public transient Object[] f65629d;

    @v2.d
    @CheckForNull
    public transient Object[] f65630e;

    public transient int f65631f;

    public transient int f65632g;

    @CheckForNull
    public transient Set<K> f65633h;

    @CheckForNull
    public transient Set<Map.Entry<K, V>> f65634i;

    @CheckForNull
    public transient Collection<V> f65635j;

    public class a extends D<K, V>.e<K> {
        public a() {
            super(D.this, null);
        }

        @Override
        @InterfaceC12518f2
        public K b(int i10) {
            return (K) D.this.K(i10);
        }
    }

    public class b extends D<K, V>.e<Map.Entry<K, V>> {
        public b() {
            super(D.this, null);
        }

        @Override
        public Map.Entry<K, V> b(int i10) {
            return new g(i10);
        }
    }

    public class c extends D<K, V>.e<V> {
        public c() {
            super(D.this, null);
        }

        @Override
        @InterfaceC12518f2
        public V b(int i10) {
            return (V) D.this.d0(i10);
        }
    }

    public class d extends AbstractSet<Map.Entry<K, V>> {
        public d() {
        }

        @Override
        public void clear() {
            D.this.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            Map<K, V> z10 = D.this.z();
            if (z10 != null) {
                return z10.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int H10 = D.this.H(entry.getKey());
            return H10 != -1 && w2.B.a(D.this.d0(H10), entry.getValue());
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return D.this.B();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            Map<K, V> z10 = D.this.z();
            if (z10 != null) {
                return z10.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (D.this.N()) {
                return false;
            }
            int E10 = D.this.E();
            int f10 = F.f(entry.getKey(), entry.getValue(), E10, D.this.T(), D.this.Q(), D.this.R(), D.this.U());
            if (f10 == -1) {
                return false;
            }
            D.this.M(f10, E10);
            D.e(D.this);
            D.this.F();
            return true;
        }

        @Override
        public int size() {
            return D.this.size();
        }
    }

    public class f extends AbstractSet<K> {
        public f() {
        }

        @Override
        public void clear() {
            D.this.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return D.this.containsKey(obj);
        }

        @Override
        public Iterator<K> iterator() {
            return D.this.L();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            Map<K, V> z10 = D.this.z();
            return z10 != null ? z10.o().remove(obj) : D.this.P(obj) != D.f65624k;
        }

        @Override
        public int size() {
            return D.this.size();
        }
    }

    public final class g extends AbstractC12519g<K, V> {

        @InterfaceC12518f2
        public final K f65645b;

        public int f65646c;

        public g(int i10) {
            this.f65645b = (K) D.this.K(i10);
            this.f65646c = i10;
        }

        public final void e() {
            int i10 = this.f65646c;
            if (i10 == -1 || i10 >= D.this.size() || !w2.B.a(this.f65645b, D.this.K(this.f65646c))) {
                this.f65646c = D.this.H(this.f65645b);
            }
        }

        @Override
        @InterfaceC12518f2
        public K getKey() {
            return this.f65645b;
        }

        @Override
        @InterfaceC12518f2
        public V getValue() {
            Map<K, V> z10 = D.this.z();
            if (z10 != null) {
                return (V) Z1.a(z10.get(this.f65645b));
            }
            e();
            int i10 = this.f65646c;
            return i10 == -1 ? (V) Z1.b() : (V) D.this.d0(i10);
        }

        @Override
        @InterfaceC12518f2
        public V setValue(@InterfaceC12518f2 V v10) {
            Map<K, V> z10 = D.this.z();
            if (z10 != null) {
                return (V) Z1.a(z10.put(this.f65645b, v10));
            }
            e();
            int i10 = this.f65646c;
            if (i10 == -1) {
                D.this.put(this.f65645b, v10);
                return (V) Z1.b();
            }
            V v11 = (V) D.this.d0(i10);
            D.this.b0(this.f65646c, v10);
            return v11;
        }
    }

    public class h extends AbstractCollection<V> {
        public h() {
        }

        @Override
        public void clear() {
            D.this.clear();
        }

        @Override
        public Iterator<V> iterator() {
            return D.this.e0();
        }

        @Override
        public int size() {
            return D.this.size();
        }
    }

    public D() {
        I(3);
    }

    public static int e(D d10) {
        int i10 = d10.f65632g;
        d10.f65632g = i10 - 1;
        return i10;
    }

    public static <K, V> D<K, V> s() {
        return new D<>();
    }

    public static <K, V> D<K, V> y(int i10) {
        return new D<>(i10);
    }

    public final int A(int i10) {
        return Q()[i10];
    }

    public Iterator<Map.Entry<K, V>> B() {
        Map<K, V> z10 = z();
        return z10 != null ? z10.entrySet().iterator() : new b();
    }

    public int C() {
        return isEmpty() ? -1 : 0;
    }

    public int D(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f65632g) {
            return i11;
        }
        return -1;
    }

    public final int E() {
        return (1 << (this.f65631f & 31)) - 1;
    }

    public void F() {
        this.f65631f += 32;
    }

    public final int H(@CheckForNull Object obj) {
        if (N()) {
            return -1;
        }
        int d10 = Y0.d(obj);
        int E10 = E();
        int h10 = F.h(T(), d10 & E10);
        if (h10 == 0) {
            return -1;
        }
        int b10 = F.b(d10, E10);
        do {
            int i10 = h10 - 1;
            int A10 = A(i10);
            if (F.b(A10, E10) == b10 && w2.B.a(obj, K(i10))) {
                return i10;
            }
            h10 = F.c(A10, E10);
        } while (h10 != 0);
        return -1;
    }

    public void I(int i10) {
        w2.H.e(i10 >= 0, "Expected size must be >= 0");
        this.f65631f = com.google.common.primitives.l.g(i10, 1, 1073741823);
    }

    public void J(int i10, @InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10, int i11, int i12) {
        Y(i10, F.d(i11, 0, i12));
        a0(i10, k10);
        b0(i10, v10);
    }

    public final K K(int i10) {
        return (K) R()[i10];
    }

    public Iterator<K> L() {
        Map<K, V> z10 = z();
        return z10 != null ? z10.o().iterator() : new a();
    }

    public void M(int i10, int i11) {
        Object T10 = T();
        int[] Q10 = Q();
        Object[] R10 = R();
        Object[] U10 = U();
        int size = size();
        int i12 = size - 1;
        if (i10 >= i12) {
            R10[i10] = null;
            U10[i10] = null;
            Q10[i10] = 0;
            return;
        }
        Object obj = R10[i12];
        R10[i10] = obj;
        U10[i10] = U10[i12];
        R10[i12] = null;
        U10[i12] = null;
        Q10[i10] = Q10[i12];
        Q10[i12] = 0;
        int d10 = Y0.d(obj) & i11;
        int h10 = F.h(T10, d10);
        if (h10 == size) {
            F.i(T10, d10, i10 + 1);
            return;
        }
        while (true) {
            int i13 = h10 - 1;
            int i14 = Q10[i13];
            int c10 = F.c(i14, i11);
            if (c10 == size) {
                Q10[i13] = F.d(i14, i10 + 1, i11);
                return;
            }
            h10 = c10;
        }
    }

    @v2.d
    public boolean N() {
        return this.f65627b == null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb2 = new StringBuilder(25);
            sb2.append("Invalid size: ");
            sb2.append(readInt);
            throw new InvalidObjectException(sb2.toString());
        }
        I(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    public final Object P(@CheckForNull Object obj) {
        if (N()) {
            return f65624k;
        }
        int E10 = E();
        int f10 = F.f(obj, null, E10, T(), Q(), R(), null);
        if (f10 == -1) {
            return f65624k;
        }
        V d02 = d0(f10);
        M(f10, E10);
        this.f65632g--;
        F();
        return d02;
    }

    public final int[] Q() {
        int[] iArr = this.f65628c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] R() {
        Object[] objArr = this.f65629d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object T() {
        Object obj = this.f65627b;
        Objects.requireNonNull(obj);
        return obj;
    }

    public final Object[] U() {
        Object[] objArr = this.f65630e;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public void V(int i10) {
        this.f65628c = Arrays.copyOf(Q(), i10);
        this.f65629d = Arrays.copyOf(R(), i10);
        this.f65630e = Arrays.copyOf(U(), i10);
    }

    public final void W(int i10) {
        int min;
        int length = Q().length;
        if (i10 <= length || (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        V(min);
    }

    @I2.a
    public final int X(int i10, int i11, int i12, int i13) {
        Object a10 = F.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            F.i(a10, i12 & i14, i13 + 1);
        }
        Object T10 = T();
        int[] Q10 = Q();
        for (int i15 = 0; i15 <= i10; i15++) {
            int h10 = F.h(T10, i15);
            while (h10 != 0) {
                int i16 = h10 - 1;
                int i17 = Q10[i16];
                int b10 = F.b(i17, i10) | i15;
                int i18 = b10 & i14;
                int h11 = F.h(a10, i18);
                F.i(a10, i18, h10);
                Q10[i16] = F.d(b10, h11, i14);
                h10 = F.c(i17, i10);
            }
        }
        this.f65627b = a10;
        Z(i14);
        return i14;
    }

    public final void Y(int i10, int i11) {
        Q()[i10] = i11;
    }

    public final void Z(int i10) {
        this.f65631f = F.d(this.f65631f, 32 - Integer.numberOfLeadingZeros(i10), 31);
    }

    public final void a0(int i10, K k10) {
        R()[i10] = k10;
    }

    public final void b0(int i10, V v10) {
        U()[i10] = v10;
    }

    public void c0() {
        if (N()) {
            return;
        }
        Map<K, V> z10 = z();
        if (z10 != null) {
            Map<K, V> v10 = v(size());
            v10.putAll(z10);
            this.f65627b = v10;
            return;
        }
        int i10 = this.f65632g;
        if (i10 < Q().length) {
            V(i10);
        }
        int j10 = F.j(i10);
        int E10 = E();
        if (j10 < E10) {
            X(E10, j10, 0, 0);
        }
    }

    @Override
    public void clear() {
        if (N()) {
            return;
        }
        F();
        Map<K, V> z10 = z();
        if (z10 != null) {
            this.f65631f = com.google.common.primitives.l.g(size(), 3, 1073741823);
            z10.clear();
            this.f65627b = null;
            this.f65632g = 0;
            return;
        }
        Arrays.fill(R(), 0, this.f65632g, (Object) null);
        Arrays.fill(U(), 0, this.f65632g, (Object) null);
        F.g(T());
        Arrays.fill(Q(), 0, this.f65632g, 0);
        this.f65632g = 0;
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        Map<K, V> z10 = z();
        return z10 != null ? z10.containsKey(obj) : H(obj) != -1;
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        Map<K, V> z10 = z();
        if (z10 != null) {
            return z10.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.f65632g; i10++) {
            if (w2.B.a(obj, d0(i10))) {
                return true;
            }
        }
        return false;
    }

    public final V d0(int i10) {
        return (V) U()[i10];
    }

    public Iterator<V> e0() {
        Map<K, V> z10 = z();
        return z10 != null ? z10.values().iterator() : new c();
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f65634i;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> u10 = u();
        this.f65634i = u10;
        return u10;
    }

    public final void f0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> B10 = B();
        while (B10.hasNext()) {
            Map.Entry<K, V> next = B10.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        Map<K, V> z10 = z();
        if (z10 != null) {
            return z10.get(obj);
        }
        int H10 = H(obj);
        if (H10 == -1) {
            return null;
        }
        o(H10);
        return d0(H10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Set<K> o() {
        Set<K> set = this.f65633h;
        if (set != null) {
            return set;
        }
        Set<K> w10 = w();
        this.f65633h = w10;
        return w10;
    }

    public void o(int i10) {
    }

    public int p(int i10, int i11) {
        return i10 - 1;
    }

    @Override
    @I2.a
    @CheckForNull
    public V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        int X10;
        int i10;
        if (N()) {
            q();
        }
        Map<K, V> z10 = z();
        if (z10 != null) {
            return z10.put(k10, v10);
        }
        int[] Q10 = Q();
        Object[] R10 = R();
        Object[] U10 = U();
        int i11 = this.f65632g;
        int i12 = i11 + 1;
        int d10 = Y0.d(k10);
        int E10 = E();
        int i13 = d10 & E10;
        int h10 = F.h(T(), i13);
        if (h10 != 0) {
            int b10 = F.b(d10, E10);
            int i14 = 0;
            while (true) {
                int i15 = h10 - 1;
                int i16 = Q10[i15];
                if (F.b(i16, E10) == b10 && w2.B.a(k10, R10[i15])) {
                    V v11 = (V) U10[i15];
                    U10[i15] = v10;
                    o(i15);
                    return v11;
                }
                int c10 = F.c(i16, E10);
                i14++;
                if (c10 != 0) {
                    h10 = c10;
                } else {
                    if (i14 >= 9) {
                        return r().put(k10, v10);
                    }
                    if (i12 > E10) {
                        X10 = X(E10, F.e(E10), d10, i11);
                    } else {
                        Q10[i15] = F.d(i16, i12, E10);
                    }
                }
            }
        } else if (i12 > E10) {
            X10 = X(E10, F.e(E10), d10, i11);
            i10 = X10;
        } else {
            F.i(T(), i13, i12);
            i10 = E10;
        }
        W(i12);
        J(i11, k10, v10, d10, i10);
        this.f65632g = i12;
        F();
        return null;
    }

    @I2.a
    public int q() {
        w2.H.h0(N(), "Arrays already allocated");
        int i10 = this.f65631f;
        int j10 = F.j(i10);
        this.f65627b = F.a(j10);
        Z(j10 - 1);
        this.f65628c = new int[i10];
        this.f65629d = new Object[i10];
        this.f65630e = new Object[i10];
        return i10;
    }

    @I2.a
    @v2.d
    public Map<K, V> r() {
        Map<K, V> v10 = v(E() + 1);
        int C10 = C();
        while (C10 >= 0) {
            v10.put(K(C10), d0(C10));
            C10 = D(C10);
        }
        this.f65627b = v10;
        this.f65628c = null;
        this.f65629d = null;
        this.f65630e = null;
        F();
        return v10;
    }

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        Map<K, V> z10 = z();
        if (z10 != null) {
            return z10.remove(obj);
        }
        V v10 = (V) P(obj);
        if (v10 == f65624k) {
            return null;
        }
        return v10;
    }

    @Override
    public int size() {
        Map<K, V> z10 = z();
        return z10 != null ? z10.size() : this.f65632g;
    }

    public Set<Map.Entry<K, V>> u() {
        return new d();
    }

    public Map<K, V> v(int i10) {
        return new LinkedHashMap(i10, 1.0f);
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.f65635j;
        if (collection != null) {
            return collection;
        }
        Collection<V> x10 = x();
        this.f65635j = x10;
        return x10;
    }

    public Set<K> w() {
        return new f();
    }

    public Collection<V> x() {
        return new h();
    }

    @v2.d
    @CheckForNull
    public Map<K, V> z() {
        Object obj = this.f65627b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public D(int i10) {
        I(i10);
    }

    public abstract class e<T> implements Iterator<T> {

        public int f65640b;

        public int f65641c;

        public int f65642d;

        public e() {
            this.f65640b = D.this.f65631f;
            this.f65641c = D.this.C();
            this.f65642d = -1;
        }

        public final void a() {
            if (D.this.f65631f != this.f65640b) {
                throw new ConcurrentModificationException();
            }
        }

        @InterfaceC12518f2
        public abstract T b(int i10);

        public void d() {
            this.f65640b += 32;
        }

        @Override
        public boolean hasNext() {
            return this.f65641c >= 0;
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i10 = this.f65641c;
            this.f65642d = i10;
            T b10 = b(i10);
            this.f65641c = D.this.D(this.f65641c);
            return b10;
        }

        @Override
        public void remove() {
            a();
            B.e(this.f65642d >= 0);
            d();
            D d10 = D.this;
            d10.remove(d10.K(this.f65642d));
            this.f65641c = D.this.p(this.f65641c, this.f65642d);
            this.f65642d = -1;
        }

        public e(D d10, a aVar) {
            this();
        }
    }
}
