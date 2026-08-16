package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.c
public class E<E> extends AbstractSet<E> implements Serializable {

    @v2.d
    public static final double f65709g = 0.001d;

    public static final int f65710h = 9;

    @CheckForNull
    public transient Object f65711b;

    @CheckForNull
    public transient int[] f65712c;

    @v2.d
    @CheckForNull
    public transient Object[] f65713d;

    public transient int f65714e;

    public transient int f65715f;

    public class a implements Iterator<E> {

        public int f65716b;

        public int f65717c;

        public int f65718d = -1;

        public a() {
            this.f65716b = E.this.f65714e;
            this.f65717c = E.this.r();
        }

        public final void a() {
            if (E.this.f65714e != this.f65716b) {
                throw new ConcurrentModificationException();
            }
        }

        public void b() {
            this.f65716b += 32;
        }

        @Override
        public boolean hasNext() {
            return this.f65717c >= 0;
        }

        @Override
        @InterfaceC12518f2
        public E next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i10 = this.f65717c;
            this.f65718d = i10;
            E e10 = (E) E.this.o(i10);
            this.f65717c = E.this.s(this.f65717c);
            return e10;
        }

        @Override
        public void remove() {
            a();
            B.e(this.f65718d >= 0);
            b();
            E e10 = E.this;
            e10.remove(e10.o(this.f65718d));
            this.f65717c = E.this.e(this.f65717c, this.f65718d);
            this.f65718d = -1;
        }
    }

    public E() {
        w(3);
    }

    public static <E> E<E> i() {
        return new E<>();
    }

    public static <E> E<E> j(Collection<? extends E> collection) {
        E<E> m10 = m(collection.size());
        m10.addAll(collection);
        return m10;
    }

    @SafeVarargs
    public static <E> E<E> k(E... eArr) {
        E<E> m10 = m(eArr.length);
        Collections.addAll(m10, eArr);
        return m10;
    }

    public static <E> E<E> m(int i10) {
        return new E<>(i10);
    }

    @v2.d
    public boolean A() {
        return this.f65711b == null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb2 = new StringBuilder(25);
            sb2.append("Invalid size: ");
            sb2.append(readInt);
            throw new InvalidObjectException(sb2.toString());
        }
        w(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            add(objectInputStream.readObject());
        }
    }

    public final Object[] C() {
        Object[] objArr = this.f65713d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final int[] D() {
        int[] iArr = this.f65712c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object E() {
        Object obj = this.f65711b;
        Objects.requireNonNull(obj);
        return obj;
    }

    public void F(int i10) {
        this.f65712c = Arrays.copyOf(D(), i10);
        this.f65713d = Arrays.copyOf(C(), i10);
    }

    public final void G(int i10) {
        int min;
        int length = D().length;
        if (i10 <= length || (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        F(min);
    }

    @I2.a
    public final int H(int i10, int i11, int i12, int i13) {
        Object a10 = F.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            F.i(a10, i12 & i14, i13 + 1);
        }
        Object E10 = E();
        int[] D10 = D();
        for (int i15 = 0; i15 <= i10; i15++) {
            int h10 = F.h(E10, i15);
            while (h10 != 0) {
                int i16 = h10 - 1;
                int i17 = D10[i16];
                int b10 = F.b(i17, i10) | i15;
                int i18 = b10 & i14;
                int h11 = F.h(a10, i18);
                F.i(a10, i18, h10);
                D10[i16] = F.d(b10, h11, i14);
                h10 = F.c(i17, i10);
            }
        }
        this.f65711b = a10;
        K(i14);
        return i14;
    }

    public final void I(int i10, E e10) {
        C()[i10] = e10;
    }

    public final void J(int i10, int i11) {
        D()[i10] = i11;
    }

    public final void K(int i10) {
        this.f65714e = F.d(this.f65714e, 32 - Integer.numberOfLeadingZeros(i10), 31);
    }

    public void L() {
        if (A()) {
            return;
        }
        Set<E> n10 = n();
        if (n10 != null) {
            Set<E> l10 = l(size());
            l10.addAll(n10);
            this.f65711b = l10;
            return;
        }
        int i10 = this.f65715f;
        if (i10 < D().length) {
            F(i10);
        }
        int j10 = F.j(i10);
        int u10 = u();
        if (j10 < u10) {
            H(u10, j10, 0, 0);
        }
    }

    public final void M(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    @Override
    @I2.a
    public boolean add(@InterfaceC12518f2 E e10) {
        if (A()) {
            g();
        }
        Set<E> n10 = n();
        if (n10 != null) {
            return n10.add(e10);
        }
        int[] D10 = D();
        Object[] C10 = C();
        int i10 = this.f65715f;
        int i11 = i10 + 1;
        int d10 = Y0.d(e10);
        int u10 = u();
        int i12 = d10 & u10;
        int h10 = F.h(E(), i12);
        if (h10 != 0) {
            int b10 = F.b(d10, u10);
            int i13 = 0;
            while (true) {
                int i14 = h10 - 1;
                int i15 = D10[i14];
                if (F.b(i15, u10) == b10 && w2.B.a(e10, C10[i14])) {
                    return false;
                }
                int c10 = F.c(i15, u10);
                i13++;
                if (c10 != 0) {
                    h10 = c10;
                } else {
                    if (i13 >= 9) {
                        return h().add(e10);
                    }
                    if (i11 > u10) {
                        u10 = H(u10, F.e(u10), d10, i10);
                    } else {
                        D10[i14] = F.d(i15, i11, u10);
                    }
                }
            }
        } else if (i11 > u10) {
            u10 = H(u10, F.e(u10), d10, i10);
        } else {
            F.i(E(), i12, i11);
        }
        G(i11);
        x(i10, e10, d10, u10);
        this.f65715f = i11;
        v();
        return true;
    }

    @Override
    public void clear() {
        if (A()) {
            return;
        }
        v();
        Set<E> n10 = n();
        if (n10 != null) {
            this.f65714e = com.google.common.primitives.l.g(size(), 3, 1073741823);
            n10.clear();
            this.f65711b = null;
            this.f65715f = 0;
            return;
        }
        Arrays.fill(C(), 0, this.f65715f, (Object) null);
        F.g(E());
        Arrays.fill(D(), 0, this.f65715f, 0);
        this.f65715f = 0;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        if (A()) {
            return false;
        }
        Set<E> n10 = n();
        if (n10 != null) {
            return n10.contains(obj);
        }
        int d10 = Y0.d(obj);
        int u10 = u();
        int h10 = F.h(E(), d10 & u10);
        if (h10 == 0) {
            return false;
        }
        int b10 = F.b(d10, u10);
        do {
            int i10 = h10 - 1;
            int p10 = p(i10);
            if (F.b(p10, u10) == b10 && w2.B.a(obj, o(i10))) {
                return true;
            }
            h10 = F.c(p10, u10);
        } while (h10 != 0);
        return false;
    }

    public int e(int i10, int i11) {
        return i10 - 1;
    }

    @I2.a
    public int g() {
        w2.H.h0(A(), "Arrays already allocated");
        int i10 = this.f65714e;
        int j10 = F.j(i10);
        this.f65711b = F.a(j10);
        K(j10 - 1);
        this.f65712c = new int[i10];
        this.f65713d = new Object[i10];
        return i10;
    }

    @I2.a
    @v2.d
    public Set<E> h() {
        Set<E> l10 = l(u() + 1);
        int r10 = r();
        while (r10 >= 0) {
            l10.add(o(r10));
            r10 = s(r10);
        }
        this.f65711b = l10;
        this.f65712c = null;
        this.f65713d = null;
        v();
        return l10;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Iterator<E> iterator() {
        Set<E> n10 = n();
        return n10 != null ? n10.iterator() : new a();
    }

    public final Set<E> l(int i10) {
        return new LinkedHashSet(i10, 1.0f);
    }

    @v2.d
    @CheckForNull
    public Set<E> n() {
        Object obj = this.f65711b;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public final E o(int i10) {
        return (E) C()[i10];
    }

    public final int p(int i10) {
        return D()[i10];
    }

    public int r() {
        return isEmpty() ? -1 : 0;
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj) {
        if (A()) {
            return false;
        }
        Set<E> n10 = n();
        if (n10 != null) {
            return n10.remove(obj);
        }
        int u10 = u();
        int f10 = F.f(obj, null, u10, E(), D(), C(), null);
        if (f10 == -1) {
            return false;
        }
        z(f10, u10);
        this.f65715f--;
        v();
        return true;
    }

    public int s(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f65715f) {
            return i11;
        }
        return -1;
    }

    @Override
    public int size() {
        Set<E> n10 = n();
        return n10 != null ? n10.size() : this.f65715f;
    }

    @Override
    public Object[] toArray() {
        if (A()) {
            return new Object[0];
        }
        Set<E> n10 = n();
        return n10 != null ? n10.toArray() : Arrays.copyOf(C(), this.f65715f);
    }

    public final int u() {
        return (1 << (this.f65714e & 31)) - 1;
    }

    public void v() {
        this.f65714e += 32;
    }

    public void w(int i10) {
        w2.H.e(i10 >= 0, "Expected size must be >= 0");
        this.f65714e = com.google.common.primitives.l.g(i10, 1, 1073741823);
    }

    public void x(int i10, @InterfaceC12518f2 E e10, int i11, int i12) {
        J(i10, F.d(i11, 0, i12));
        I(i10, e10);
    }

    @v2.d
    public boolean y() {
        return n() != null;
    }

    public void z(int i10, int i11) {
        Object E10 = E();
        int[] D10 = D();
        Object[] C10 = C();
        int size = size();
        int i12 = size - 1;
        if (i10 >= i12) {
            C10[i10] = null;
            D10[i10] = 0;
            return;
        }
        Object obj = C10[i12];
        C10[i10] = obj;
        C10[i12] = null;
        D10[i10] = D10[i12];
        D10[i12] = 0;
        int d10 = Y0.d(obj) & i11;
        int h10 = F.h(E10, d10);
        if (h10 == size) {
            F.i(E10, d10, i10 + 1);
            return;
        }
        while (true) {
            int i13 = h10 - 1;
            int i14 = D10[i13];
            int c10 = F.c(i14, i11);
            if (c10 == size) {
                D10[i13] = F.d(i14, i10 + 1, i11);
                return;
            }
            h10 = c10;
        }
    }

    public E(int i10) {
        w(i10);
    }

    @Override
    @I2.a
    public <T> T[] toArray(T[] tArr) {
        if (A()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        Set<E> n10 = n();
        if (n10 != null) {
            return (T[]) n10.toArray(tArr);
        }
        return (T[]) C12506c2.n(C(), 0, this.f65715f, tArr);
    }
}
