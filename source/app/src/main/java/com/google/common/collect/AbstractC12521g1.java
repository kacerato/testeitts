package com.google.common.collect;

import com.google.common.collect.AbstractC12505c1;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true, serializable = true)
public abstract class AbstractC12521g1<E> extends AbstractC12505c1<E> implements List<E>, RandomAccess {

    public static final f3<Object> f66638c = new b(C12562q2.f66817f, 0);

    public static final class a<E> extends AbstractC12505c1.a<E> {
        public a() {
            this(4);
        }

        @Override
        @I2.a
        public a<E> g(E e10) {
            super.g(e10);
            return this;
        }

        @Override
        @I2.a
        public a<E> b(E... eArr) {
            super.b(eArr);
            return this;
        }

        @Override
        @I2.a
        public a<E> c(Iterable<? extends E> iterable) {
            super.c(iterable);
            return this;
        }

        @Override
        @I2.a
        public a<E> d(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        @Override
        public AbstractC12521g1<E> e() {
            this.f66480d = true;
            return AbstractC12521g1.l(this.f66478b, this.f66479c);
        }

        @I2.a
        public a<E> o(a<E> aVar) {
            h(aVar.f66478b, aVar.f66479c);
            return this;
        }

        public a(int i10) {
            super(i10);
        }
    }

    public static class b<E> extends AbstractC12499b<E> {

        public final AbstractC12521g1<E> f66639d;

        public b(AbstractC12521g1<E> abstractC12521g1, int i10) {
            super(abstractC12521g1.size(), i10);
            this.f66639d = abstractC12521g1;
        }

        @Override
        public E a(int i10) {
            return this.f66639d.get(i10);
        }
    }

    public static class c<E> extends AbstractC12521g1<E> {

        public final transient AbstractC12521g1<E> f66640d;

        public c(AbstractC12521g1<E> abstractC12521g1) {
            this.f66640d = abstractC12521g1;
        }

        @Override
        public AbstractC12521g1<E> L() {
            return this.f66640d;
        }

        @Override
        public AbstractC12521g1<E> subList(int i10, int i11) {
            w2.H.f0(i10, i11, size());
            return this.f66640d.subList(R(i11), R(i10)).L();
        }

        public final int Q(int i10) {
            return (size() - 1) - i10;
        }

        public final int R(int i10) {
            return size() - i10;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f66640d.contains(obj);
        }

        @Override
        public E get(int i10) {
            w2.H.C(i10, size());
            return this.f66640d.get(Q(i10));
        }

        @Override
        public boolean h() {
            return this.f66640d.h();
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int lastIndexOf = this.f66640d.lastIndexOf(obj);
            if (lastIndexOf >= 0) {
                return Q(lastIndexOf);
            }
            return -1;
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int indexOf = this.f66640d.indexOf(obj);
            if (indexOf >= 0) {
                return Q(indexOf);
            }
            return -1;
        }

        @Override
        public ListIterator listIterator() {
            return super.listIterator();
        }

        @Override
        public int size() {
            return this.f66640d.size();
        }

        @Override
        public ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }
    }

    public static class d implements Serializable {

        public static final long f66641c = 0;

        public final Object[] f66642b;

        public d(Object[] objArr) {
            this.f66642b = objArr;
        }

        public Object a() {
            return AbstractC12521g1.u(this.f66642b);
        }
    }

    public class e extends AbstractC12521g1<E> {

        public final transient int f66643d;

        public final transient int f66644e;

        public e(int i10, int i11) {
            this.f66643d = i10;
            this.f66644e = i11;
        }

        @Override
        public AbstractC12521g1<E> subList(int i10, int i11) {
            w2.H.f0(i10, i11, this.f66644e);
            AbstractC12521g1 abstractC12521g1 = AbstractC12521g1.this;
            int i12 = this.f66643d;
            return abstractC12521g1.subList(i10 + i12, i11 + i12);
        }

        @Override
        @CheckForNull
        public Object[] c() {
            return AbstractC12521g1.this.c();
        }

        @Override
        public int d() {
            return AbstractC12521g1.this.g() + this.f66643d + this.f66644e;
        }

        @Override
        public int g() {
            return AbstractC12521g1.this.g() + this.f66643d;
        }

        @Override
        public E get(int i10) {
            w2.H.C(i10, this.f66644e);
            return AbstractC12521g1.this.get(i10 + this.f66643d);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public ListIterator listIterator() {
            return super.listIterator();
        }

        @Override
        public int size() {
            return this.f66644e;
        }

        @Override
        public ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }
    }

    public static <E> AbstractC12521g1<E> A(E e10, E e11, E e12) {
        return o(e10, e11, e12);
    }

    public static <E> AbstractC12521g1<E> B(E e10, E e11, E e12, E e13) {
        return o(e10, e11, e12, e13);
    }

    public static <E> AbstractC12521g1<E> C(E e10, E e11, E e12, E e13, E e14) {
        return o(e10, e11, e12, e13, e14);
    }

    public static <E> AbstractC12521g1<E> D(E e10, E e11, E e12, E e13, E e14, E e15) {
        return o(e10, e11, e12, e13, e14, e15);
    }

    public static <E> AbstractC12521g1<E> E(E e10, E e11, E e12, E e13, E e14, E e15, E e16) {
        return o(e10, e11, e12, e13, e14, e15, e16);
    }

    public static <E> AbstractC12521g1<E> F(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17) {
        return o(e10, e11, e12, e13, e14, e15, e16, e17);
    }

    public static <E> AbstractC12521g1<E> G(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18) {
        return o(e10, e11, e12, e13, e14, e15, e16, e17, e18);
    }

    public static <E> AbstractC12521g1<E> H(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19) {
        return o(e10, e11, e12, e13, e14, e15, e16, e17, e18, e19);
    }

    public static <E> AbstractC12521g1<E> I(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20) {
        return o(e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20);
    }

    @SafeVarargs
    public static <E> AbstractC12521g1<E> J(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E e21, E... eArr) {
        w2.H.e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        objArr[6] = e16;
        objArr[7] = e17;
        objArr[8] = e18;
        objArr[9] = e19;
        objArr[10] = e20;
        objArr[11] = e21;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return o(objArr);
    }

    private void K(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> AbstractC12521g1<E> M(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) D1.R(iterable, new Comparable[0]);
        C12506c2.b(comparableArr);
        Arrays.sort(comparableArr);
        return k(comparableArr);
    }

    public static <E> AbstractC12521g1<E> N(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        w2.H.E(comparator);
        Object[] P10 = D1.P(iterable);
        C12506c2.b(P10);
        Arrays.sort(P10, comparator);
        return k(P10);
    }

    public static <E> AbstractC12521g1<E> k(Object[] objArr) {
        return l(objArr, objArr.length);
    }

    public static <E> AbstractC12521g1<E> l(Object[] objArr, int i10) {
        return i10 == 0 ? x() : new C12562q2(objArr, i10);
    }

    public static <E> a<E> m() {
        return new a<>();
    }

    @InterfaceC15800a
    public static <E> a<E> n(int i10) {
        B.b(i10, "expectedSize");
        return new a<>(i10);
    }

    public static <E> AbstractC12521g1<E> o(Object... objArr) {
        return k(C12506c2.b(objArr));
    }

    public static <E> AbstractC12521g1<E> p(Iterable<? extends E> iterable) {
        w2.H.E(iterable);
        return iterable instanceof Collection ? r((Collection) iterable) : s(iterable.iterator());
    }

    public static <E> AbstractC12521g1<E> r(Collection<? extends E> collection) {
        if (!(collection instanceof AbstractC12505c1)) {
            return o(collection.toArray());
        }
        AbstractC12521g1<E> a10 = ((AbstractC12505c1) collection).a();
        return a10.h() ? k(a10.toArray()) : a10;
    }

    public static <E> AbstractC12521g1<E> s(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return x();
        }
        E next = it.next();
        return !it.hasNext() ? y(next) : new a().a(next).d(it).e();
    }

    public static <E> AbstractC12521g1<E> u(E[] eArr) {
        return eArr.length == 0 ? x() : o((Object[]) eArr.clone());
    }

    public static <E> AbstractC12521g1<E> x() {
        return (AbstractC12521g1<E>) C12562q2.f66817f;
    }

    public static <E> AbstractC12521g1<E> y(E e10) {
        return o(e10);
    }

    public static <E> AbstractC12521g1<E> z(E e10, E e11) {
        return o(e10, e11);
    }

    public AbstractC12521g1<E> L() {
        return size() <= 1 ? this : new c(this);
    }

    @Override
    public AbstractC12521g1<E> subList(int i10, int i11) {
        w2.H.f0(i10, i11, size());
        int i12 = i11 - i10;
        return i12 == size() ? this : i12 == 0 ? x() : P(i10, i11);
    }

    public AbstractC12521g1<E> P(int i10, int i11) {
        return new e(i10, i11 - i10);
    }

    @Override
    @I2.l(replacement = "this")
    @Deprecated
    public final AbstractC12521g1<E> a() {
        return this;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int b(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return M1.j(this, obj);
    }

    @Override
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~((i10 * 31) + get(i11).hashCode()));
        }
        return i10;
    }

    @Override
    public e3<E> iterator() {
        return listIterator();
    }

    public int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        return M1.l(this, obj);
    }

    @Override
    public Object j() {
        return new d(toArray());
    }

    public int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        return M1.n(this, obj);
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public f3<E> listIterator() {
        return listIterator(0);
    }

    @Override
    public f3<E> listIterator(int i10) {
        w2.H.d0(i10, size());
        return isEmpty() ? (f3<E>) f66638c : new b(this, i10);
    }
}
