package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@I2.f("Use ImmutableList.of or another implementation")
@X
@v2.b(emulated = true)
public abstract class AbstractC12505c1<E> extends AbstractCollection<E> implements Serializable {

    public static final Object[] f66477b = new Object[0];

    public static abstract class a<E> extends b<E> {

        public Object[] f66478b;

        public int f66479c;

        public boolean f66480d;

        public a(int i10) {
            B.b(i10, "initialCapacity");
            this.f66478b = new Object[i10];
            this.f66479c = 0;
        }

        @Override
        @I2.a
        public b<E> b(E... eArr) {
            h(eArr, eArr.length);
            return this;
        }

        @Override
        @I2.a
        public b<E> c(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                i(this.f66479c + collection.size());
                if (collection instanceof AbstractC12505c1) {
                    this.f66479c = ((AbstractC12505c1) collection).b(this.f66478b, this.f66479c);
                    return this;
                }
            }
            super.c(iterable);
            return this;
        }

        @Override
        @I2.a
        public a<E> g(E e10) {
            w2.H.E(e10);
            i(this.f66479c + 1);
            Object[] objArr = this.f66478b;
            int i10 = this.f66479c;
            this.f66479c = i10 + 1;
            objArr[i10] = e10;
            return this;
        }

        public final void h(Object[] objArr, int i10) {
            C12506c2.c(objArr, i10);
            i(this.f66479c + i10);
            System.arraycopy(objArr, 0, this.f66478b, this.f66479c, i10);
            this.f66479c += i10;
        }

        public final void i(int i10) {
            Object[] objArr = this.f66478b;
            if (objArr.length < i10) {
                this.f66478b = Arrays.copyOf(objArr, b.f(objArr.length, i10));
                this.f66480d = false;
            } else if (this.f66480d) {
                this.f66478b = (Object[]) objArr.clone();
                this.f66480d = false;
            }
        }
    }

    @I2.f
    public static abstract class b<E> {

        public static final int f66481a = 4;

        public static int f(int i10, int i11) {
            if (i11 < 0) {
                throw new AssertionError((Object) "cannot store more than MAX_VALUE elements");
            }
            int i12 = i10 + (i10 >> 1) + 1;
            if (i12 < i11) {
                i12 = Integer.highestOneBit(i11 - 1) << 1;
            }
            if (i12 < 0) {
                return Integer.MAX_VALUE;
            }
            return i12;
        }

        @I2.a
        public abstract b<E> g(E e10);

        @I2.a
        public b<E> b(E... eArr) {
            for (E e10 : eArr) {
                g(e10);
            }
            return this;
        }

        @I2.a
        public b<E> c(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        @I2.a
        public b<E> d(Iterator<? extends E> it) {
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        public abstract AbstractC12505c1<E> e();
    }

    public AbstractC12521g1<E> a() {
        return isEmpty() ? AbstractC12521g1.x() : AbstractC12521g1.k(toArray());
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @I2.a
    public int b(Object[] objArr, int i10) {
        e3<E> it = iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return i10;
    }

    @CheckForNull
    public Object[] c() {
        return null;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract boolean contains(@CheckForNull Object obj);

    public int d() {
        throw new UnsupportedOperationException();
    }

    public int g() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean h();

    @Override
    public abstract e3<E> iterator();

    public Object j() {
        return new AbstractC12521g1.d(toArray());
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object[] toArray() {
        return toArray(f66477b);
    }

    @Override
    @I2.a
    public final <T> T[] toArray(T[] tArr) {
        w2.H.E(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] c10 = c();
            if (c10 != null) {
                return (T[]) C12526h2.b(c10, g(), d(), tArr);
            }
            tArr = (T[]) C12506c2.j(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        b(tArr, 0);
        return tArr;
    }
}
