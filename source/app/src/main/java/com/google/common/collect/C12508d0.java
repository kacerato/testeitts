package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class C12508d0<E extends Enum<E>> extends AbstractC12527i<E> implements Serializable {

    @v2.c
    public static final long f66517i = 0;

    public transient Class<E> f66518d;

    public transient E[] f66519e;

    public transient int[] f66520f;

    public transient int f66521g;

    public transient long f66522h;

    public class a extends C12508d0<E>.c<E> {
        public a() {
            super();
        }

        @Override
        public E a(int i10) {
            return (E) C12508d0.this.f66519e[i10];
        }
    }

    public class b extends C12508d0<E>.c<V1.a<E>> {

        public class a extends W1.f<E> {

            public final int f66525b;

            public a(int i10) {
                this.f66525b = i10;
            }

            @Override
            public E getElement() {
                return (E) C12508d0.this.f66519e[this.f66525b];
            }

            @Override
            public int getCount() {
                return C12508d0.this.f66520f[this.f66525b];
            }
        }

        public b() {
            super();
        }

        @Override
        public V1.a<E> a(int i10) {
            return new a(i10);
        }
    }

    public abstract class c<T> implements Iterator<T> {

        public int f66527b = 0;

        public int f66528c = -1;

        public c() {
        }

        public abstract T a(int i10);

        @Override
        public boolean hasNext() {
            while (this.f66527b < C12508d0.this.f66519e.length) {
                int[] iArr = C12508d0.this.f66520f;
                int i10 = this.f66527b;
                if (iArr[i10] > 0) {
                    return true;
                }
                this.f66527b = i10 + 1;
            }
            return false;
        }

        @Override
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T a10 = a(this.f66527b);
            int i10 = this.f66527b;
            this.f66528c = i10;
            this.f66527b = i10 + 1;
            return a10;
        }

        @Override
        public void remove() {
            B.e(this.f66528c >= 0);
            if (C12508d0.this.f66520f[this.f66528c] > 0) {
                C12508d0.j(C12508d0.this);
                C12508d0.k(C12508d0.this, r0.f66520f[this.f66528c]);
                C12508d0.this.f66520f[this.f66528c] = 0;
            }
            this.f66528c = -1;
        }
    }

    public C12508d0(Class<E> cls) {
        this.f66518d = cls;
        w2.H.d(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.f66519e = enumConstants;
        this.f66520f = new int[enumConstants.length];
    }

    public static int j(C12508d0 c12508d0) {
        int i10 = c12508d0.f66521g;
        c12508d0.f66521g = i10 - 1;
        return i10;
    }

    public static long k(C12508d0 c12508d0, long j10) {
        long j11 = c12508d0.f66522h - j10;
        c12508d0.f66522h = j11;
        return j11;
    }

    public static <E extends Enum<E>> C12508d0<E> n(Class<E> cls) {
        return new C12508d0<>(cls);
    }

    public static <E extends Enum<E>> C12508d0<E> o(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        w2.H.e(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        C12508d0<E> c12508d0 = new C12508d0<>(it.next().getDeclaringClass());
        D1.a(c12508d0, iterable);
        return c12508d0;
    }

    public static <E extends Enum<E>> C12508d0<E> p(Iterable<E> iterable, Class<E> cls) {
        C12508d0<E> n10 = n(cls);
        D1.a(n10, iterable);
        return n10;
    }

    @v2.c
    private void s(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.f66518d = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.f66519e = enumConstants;
        this.f66520f = new int[enumConstants.length];
        B2.f(this, objectInputStream);
    }

    @v2.c
    private void v(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f66518d);
        B2.k(this, objectOutputStream);
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        if (obj == null || !r(obj)) {
            return 0;
        }
        return this.f66520f[((Enum) obj).ordinal()];
    }

    @Override
    public Set S1() {
        return super.S1();
    }

    @Override
    public int c() {
        return this.f66521g;
    }

    @Override
    public void clear() {
        Arrays.fill(this.f66520f, 0);
        this.f66522h = 0L;
        this.f66521g = 0;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override
    public Iterator<E> d() {
        return new a();
    }

    @Override
    @I2.a
    public boolean e7(@InterfaceC12518f2 Object obj, int i10, int i11) {
        return super.e7(obj, i10, i11);
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public Iterator<V1.a<E>> g() {
        return new b();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return W1.n(this);
    }

    @Override
    @I2.a
    public int y6(E e10, int i10) {
        m(e10);
        B.b(i10, "occurrences");
        if (i10 == 0) {
            return Ad(e10);
        }
        int ordinal = e10.ordinal();
        int i11 = this.f66520f[ordinal];
        long j10 = i10;
        long j11 = i11 + j10;
        w2.H.p(j11 <= 2147483647L, "too many occurrences: %s", j11);
        this.f66520f[ordinal] = (int) j11;
        if (i11 == 0) {
            this.f66521g++;
        }
        this.f66522h += j10;
        return i11;
    }

    public final void m(Object obj) {
        w2.H.E(obj);
        if (r(obj)) {
            return;
        }
        String valueOf = String.valueOf(this.f66518d);
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
        sb2.append("Expected an ");
        sb2.append(valueOf);
        sb2.append(" but got ");
        sb2.append(valueOf2);
        throw new ClassCastException(sb2.toString());
    }

    @Override
    @I2.a
    public int pc(@CheckForNull Object obj, int i10) {
        if (obj == null || !r(obj)) {
            return 0;
        }
        Enum r12 = (Enum) obj;
        B.b(i10, "occurrences");
        if (i10 == 0) {
            return Ad(obj);
        }
        int ordinal = r12.ordinal();
        int[] iArr = this.f66520f;
        int i11 = iArr[ordinal];
        if (i11 == 0) {
            return 0;
        }
        if (i11 <= i10) {
            iArr[ordinal] = 0;
            this.f66521g--;
            this.f66522h -= i11;
        } else {
            iArr[ordinal] = i11 - i10;
            this.f66522h -= i10;
        }
        return i11;
    }

    public final boolean r(@CheckForNull Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r52 = (Enum) obj;
        int ordinal = r52.ordinal();
        E[] eArr = this.f66519e;
        return ordinal < eArr.length && eArr[ordinal] == r52;
    }

    @Override
    public int size() {
        return com.google.common.primitives.l.x(this.f66522h);
    }

    @Override
    @I2.a
    public int P9(E e10, int i10) {
        m(e10);
        B.b(i10, oc.c.f98682m);
        int ordinal = e10.ordinal();
        int[] iArr = this.f66520f;
        int i11 = iArr[ordinal];
        iArr[ordinal] = i10;
        this.f66522h += i10 - i11;
        if (i11 == 0 && i10 > 0) {
            this.f66521g++;
        } else if (i11 > 0 && i10 == 0) {
            this.f66521g--;
        }
        return i11;
    }
}
