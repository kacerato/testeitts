package com.google.common.collect;

import com.google.common.collect.AbstractC12505c1;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true, serializable = true)
public abstract class AbstractC12564r1<E> extends AbstractC12505c1<E> implements Set<E> {

    public static final int f66822d = 1073741824;

    public static final double f66823e = 0.7d;

    public static final int f66824f = 751619276;

    @q3.h
    @CheckForNull
    @J2.b
    public transient AbstractC12521g1<E> f66825c;

    public static class a<E> extends AbstractC12505c1.a<E> {

        @v2.d
        @CheckForNull
        public Object[] f66826e;

        public int f66827f;

        public a() {
            super(4);
        }

        @Override
        @I2.a
        public a<E> g(E e10) {
            w2.H.E(e10);
            if (this.f66826e != null && AbstractC12564r1.o(this.f66479c) <= this.f66826e.length) {
                n(e10);
                return this;
            }
            this.f66826e = null;
            super.g(e10);
            return this;
        }

        @Override
        @I2.a
        public a<E> b(E... eArr) {
            if (this.f66826e != null) {
                for (E e10 : eArr) {
                    g(e10);
                }
            } else {
                super.b(eArr);
            }
            return this;
        }

        @Override
        @I2.a
        public a<E> c(Iterable<? extends E> iterable) {
            w2.H.E(iterable);
            if (this.f66826e != null) {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    g(it.next());
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        @Override
        @I2.a
        public a<E> d(Iterator<? extends E> it) {
            w2.H.E(it);
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        public final void n(E e10) {
            Objects.requireNonNull(this.f66826e);
            int length = this.f66826e.length - 1;
            int hashCode = e10.hashCode();
            int c10 = Y0.c(hashCode);
            while (true) {
                int i10 = c10 & length;
                Object[] objArr = this.f66826e;
                Object obj = objArr[i10];
                if (obj == null) {
                    objArr[i10] = e10;
                    this.f66827f += hashCode;
                    super.g(e10);
                    return;
                } else if (obj.equals(e10)) {
                    return;
                } else {
                    c10 = i10 + 1;
                }
            }
        }

        @Override
        public AbstractC12564r1<E> e() {
            AbstractC12564r1<E> p10;
            int i10 = this.f66479c;
            if (i10 == 0) {
                return AbstractC12564r1.z();
            }
            if (i10 == 1) {
                Object obj = this.f66478b[0];
                Objects.requireNonNull(obj);
                return AbstractC12564r1.A(obj);
            }
            if (this.f66826e == null || AbstractC12564r1.o(i10) != this.f66826e.length) {
                p10 = AbstractC12564r1.p(this.f66479c, this.f66478b);
                this.f66479c = p10.size();
            } else {
                Object[] copyOf = AbstractC12564r1.G(this.f66479c, this.f66478b.length) ? Arrays.copyOf(this.f66478b, this.f66479c) : this.f66478b;
                p10 = new C12573t2<>(copyOf, this.f66827f, this.f66826e, r5.length - 1, this.f66479c);
            }
            this.f66480d = true;
            this.f66826e = null;
            return p10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @I2.a
        public a<E> p(a<E> aVar) {
            if (this.f66826e != null) {
                for (int i10 = 0; i10 < aVar.f66479c; i10++) {
                    Object obj = aVar.f66478b[i10];
                    Objects.requireNonNull(obj);
                    g(obj);
                }
            } else {
                h(aVar.f66478b, aVar.f66479c);
            }
            return this;
        }

        public a(int i10) {
            super(i10);
            this.f66826e = new Object[AbstractC12564r1.o(i10)];
        }
    }

    public static class b implements Serializable {

        public static final long f66828c = 0;

        public final Object[] f66829b;

        public b(Object[] objArr) {
            this.f66829b = objArr;
        }

        public Object a() {
            return AbstractC12564r1.v(this.f66829b);
        }
    }

    public static <E> AbstractC12564r1<E> A(E e10) {
        return new E2(e10);
    }

    public static <E> AbstractC12564r1<E> B(E e10, E e11) {
        return p(2, e10, e11);
    }

    public static <E> AbstractC12564r1<E> C(E e10, E e11, E e12) {
        return p(3, e10, e11, e12);
    }

    public static <E> AbstractC12564r1<E> D(E e10, E e11, E e12, E e13) {
        return p(4, e10, e11, e12, e13);
    }

    public static <E> AbstractC12564r1<E> E(E e10, E e11, E e12, E e13, E e14) {
        return p(5, e10, e11, e12, e13, e14);
    }

    @SafeVarargs
    public static <E> AbstractC12564r1<E> F(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        w2.H.e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return p(length, objArr);
    }

    public static boolean G(int i10, int i11) {
        return i10 < (i11 >> 1) + (i11 >> 2);
    }

    public static <E> a<E> m() {
        return new a<>();
    }

    @InterfaceC15800a
    public static <E> a<E> n(int i10) {
        B.b(i10, "expectedSize");
        return new a<>(i10);
    }

    @v2.d
    public static int o(int i10) {
        int max = Math.max(i10, 2);
        if (max >= 751619276) {
            w2.H.e(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    public static <E> AbstractC12564r1<E> p(int i10, Object... objArr) {
        if (i10 == 0) {
            return z();
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return A(obj);
        }
        int o10 = o(i10);
        Object[] objArr2 = new Object[o10];
        int i11 = o10 - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object a10 = C12506c2.a(objArr[i14], i14);
            int hashCode = a10.hashCode();
            int c10 = Y0.c(hashCode);
            while (true) {
                int i15 = c10 & i11;
                Object obj2 = objArr2[i15];
                if (obj2 == null) {
                    objArr[i13] = a10;
                    objArr2[i15] = a10;
                    i12 += hashCode;
                    i13++;
                    break;
                }
                if (obj2.equals(a10)) {
                    break;
                }
                c10++;
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new E2(obj3);
        }
        if (o(i13) < o10 / 2) {
            return p(i13, objArr);
        }
        if (G(i13, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new C12573t2(objArr, i12, objArr2, i11, i13);
    }

    public static <E> AbstractC12564r1<E> r(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? s((Collection) iterable) : u(iterable.iterator());
    }

    public static <E> AbstractC12564r1<E> s(Collection<? extends E> collection) {
        if ((collection instanceof AbstractC12564r1) && !(collection instanceof SortedSet)) {
            AbstractC12564r1<E> abstractC12564r1 = (AbstractC12564r1) collection;
            if (!abstractC12564r1.h()) {
                return abstractC12564r1;
            }
        }
        Object[] array = collection.toArray();
        return p(array.length, array);
    }

    public static <E> AbstractC12564r1<E> u(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return z();
        }
        E next = it.next();
        return !it.hasNext() ? A(next) : new a().g(next).d(it).e();
    }

    public static <E> AbstractC12564r1<E> v(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? p(eArr.length, (Object[]) eArr.clone()) : A(eArr[0]) : z();
    }

    public static <E> AbstractC12564r1<E> z() {
        return C12573t2.f66882m;
    }

    @Override
    public AbstractC12521g1<E> a() {
        AbstractC12521g1<E> abstractC12521g1 = this.f66825c;
        if (abstractC12521g1 != null) {
            return abstractC12521g1;
        }
        AbstractC12521g1<E> x10 = x();
        this.f66825c = x10;
        return x10;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC12564r1) && y() && ((AbstractC12564r1) obj).y() && hashCode() != obj.hashCode()) {
            return false;
        }
        return D2.g(this, obj);
    }

    @Override
    public int hashCode() {
        return D2.k(this);
    }

    @Override
    public abstract e3<E> iterator();

    @Override
    public Object j() {
        return new b(toArray());
    }

    public AbstractC12521g1<E> x() {
        return AbstractC12521g1.k(toArray());
    }

    public boolean y() {
        return false;
    }
}
