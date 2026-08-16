package com.google.common.collect;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.collect.V1;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public abstract class AbstractC12549n1<E> extends AbstractC12553o1<E> implements V1<E> {

    @CheckForNull
    @J2.b
    public transient AbstractC12521g1<E> f66738c;

    @CheckForNull
    @J2.b
    public transient AbstractC12564r1<V1.a<E>> f66739d;

    public class a extends e3<E> {

        public int f66740b;

        @CheckForNull
        public E f66741c;

        public final Iterator f66742d;

        public a(AbstractC12549n1 abstractC12549n1, Iterator it) {
            this.f66742d = it;
        }

        @Override
        public boolean hasNext() {
            return this.f66740b > 0 || this.f66742d.hasNext();
        }

        @Override
        public E next() {
            if (this.f66740b <= 0) {
                V1.a aVar = (V1.a) this.f66742d.next();
                this.f66741c = (E) aVar.getElement();
                this.f66740b = aVar.getCount();
            }
            this.f66740b--;
            E e10 = this.f66741c;
            Objects.requireNonNull(e10);
            return e10;
        }
    }

    public static class b<E> extends AbstractC12505c1.b<E> {

        @CheckForNull
        public C12510d2<E> f66743b;

        public boolean f66744c;

        public boolean f66745d;

        public b() {
            this(4);
        }

        @CheckForNull
        public static <T> C12510d2<T> n(Iterable<T> iterable) {
            if (iterable instanceof C12569s2) {
                return ((C12569s2) iterable).f66860e;
            }
            if (iterable instanceof AbstractC12515f) {
                return ((AbstractC12515f) iterable).f66612d;
            }
            return null;
        }

        @Override
        @I2.a
        public b<E> g(E e10) {
            return k(e10, 1);
        }

        @Override
        @I2.a
        public b<E> b(E... eArr) {
            super.b(eArr);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @I2.a
        public b<E> c(Iterable<? extends E> iterable) {
            Objects.requireNonNull(this.f66743b);
            if (iterable instanceof V1) {
                V1 d10 = W1.d(iterable);
                C12510d2 n10 = n(d10);
                if (n10 != null) {
                    C12510d2<E> c12510d2 = this.f66743b;
                    c12510d2.e(Math.max(c12510d2.D(), n10.D()));
                    for (int f10 = n10.f(); f10 >= 0; f10 = n10.t(f10)) {
                        k(n10.j(f10), n10.l(f10));
                    }
                } else {
                    Set<V1.a<E>> entrySet = d10.entrySet();
                    C12510d2<E> c12510d22 = this.f66743b;
                    c12510d22.e(Math.max(c12510d22.D(), entrySet.size()));
                    for (V1.a<E> aVar : d10.entrySet()) {
                        k(aVar.getElement(), aVar.getCount());
                    }
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        @Override
        @I2.a
        public b<E> d(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        @I2.a
        public b<E> k(E e10, int i10) {
            Objects.requireNonNull(this.f66743b);
            if (i10 == 0) {
                return this;
            }
            if (this.f66744c) {
                this.f66743b = new C12510d2<>(this.f66743b);
                this.f66745d = false;
            }
            this.f66744c = false;
            w2.H.E(e10);
            C12510d2<E> c12510d2 = this.f66743b;
            c12510d2.v(e10, i10 + c12510d2.g(e10));
            return this;
        }

        @Override
        public AbstractC12549n1<E> e() {
            Objects.requireNonNull(this.f66743b);
            if (this.f66743b.D() == 0) {
                return AbstractC12549n1.x();
            }
            if (this.f66745d) {
                this.f66743b = new C12510d2<>(this.f66743b);
                this.f66745d = false;
            }
            this.f66744c = true;
            return new C12569s2(this.f66743b);
        }

        @I2.a
        public b<E> m(E e10, int i10) {
            Objects.requireNonNull(this.f66743b);
            if (i10 == 0 && !this.f66745d) {
                this.f66743b = new C12514e2(this.f66743b);
                this.f66745d = true;
            } else if (this.f66744c) {
                this.f66743b = new C12510d2<>(this.f66743b);
                this.f66745d = false;
            }
            this.f66744c = false;
            w2.H.E(e10);
            if (i10 == 0) {
                this.f66743b.w(e10);
            } else {
                this.f66743b.v(w2.H.E(e10), i10);
            }
            return this;
        }

        public b(int i10) {
            this.f66744c = false;
            this.f66745d = false;
            this.f66743b = C12510d2.d(i10);
        }

        public b(boolean z10) {
            this.f66744c = false;
            this.f66745d = false;
            this.f66743b = null;
        }
    }

    public final class c extends A1<V1.a<E>> {

        public static final long f66746h = 0;

        public c() {
        }

        @Override
        public V1.a<E> get(int i10) {
            return AbstractC12549n1.this.v(i10);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof V1.a)) {
                return false;
            }
            V1.a aVar = (V1.a) obj;
            return aVar.getCount() > 0 && AbstractC12549n1.this.Ad(aVar.getElement()) == aVar.getCount();
        }

        @Override
        public boolean h() {
            return AbstractC12549n1.this.h();
        }

        @Override
        public int hashCode() {
            return AbstractC12549n1.this.hashCode();
        }

        @Override
        @v2.c
        public Object j() {
            return new d(AbstractC12549n1.this);
        }

        @Override
        public int size() {
            return AbstractC12549n1.this.S1().size();
        }

        public c(AbstractC12549n1 abstractC12549n1, a aVar) {
            this();
        }
    }

    @v2.c
    public static class d<E> implements Serializable {

        public final AbstractC12549n1<E> f66748b;

        public d(AbstractC12549n1<E> abstractC12549n1) {
            this.f66748b = abstractC12549n1;
        }

        public Object a() {
            return this.f66748b.entrySet();
        }
    }

    public static <E> AbstractC12549n1<E> A(E e10, E e11, E e12) {
        return l(e10, e11, e12);
    }

    public static <E> AbstractC12549n1<E> B(E e10, E e11, E e12, E e13) {
        return l(e10, e11, e12, e13);
    }

    public static <E> AbstractC12549n1<E> C(E e10, E e11, E e12, E e13, E e14) {
        return l(e10, e11, e12, e13, e14);
    }

    public static <E> AbstractC12549n1<E> D(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        return new b().g(e10).g(e11).g(e12).g(e13).g(e14).g(e15).b(eArr).e();
    }

    public static <E> b<E> k() {
        return new b<>();
    }

    public static <E> AbstractC12549n1<E> l(E... eArr) {
        return new b().b(eArr).e();
    }

    public static <E> AbstractC12549n1<E> m(Collection<? extends V1.a<? extends E>> collection) {
        b bVar = new b(collection.size());
        for (V1.a<? extends E> aVar : collection) {
            bVar.k(aVar.getElement(), aVar.getCount());
        }
        return bVar.e();
    }

    public static <E> AbstractC12549n1<E> n(Iterable<? extends E> iterable) {
        if (iterable instanceof AbstractC12549n1) {
            AbstractC12549n1<E> abstractC12549n1 = (AbstractC12549n1) iterable;
            if (!abstractC12549n1.h()) {
                return abstractC12549n1;
            }
        }
        b bVar = new b(W1.l(iterable));
        bVar.c(iterable);
        return bVar.e();
    }

    public static <E> AbstractC12549n1<E> o(Iterator<? extends E> it) {
        return new b().d(it).e();
    }

    public static <E> AbstractC12549n1<E> p(E[] eArr) {
        return l(eArr);
    }

    private AbstractC12564r1<V1.a<E>> r() {
        return isEmpty() ? AbstractC12564r1.z() : new c(this, null);
    }

    public static <E> AbstractC12549n1<E> x() {
        return C12569s2.f66859h;
    }

    public static <E> AbstractC12549n1<E> y(E e10) {
        return l(e10);
    }

    public static <E> AbstractC12549n1<E> z(E e10, E e11) {
        return l(e10, e11);
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final int P9(E e10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12521g1<E> a() {
        AbstractC12521g1<E> abstractC12521g1 = this.f66738c;
        if (abstractC12521g1 != null) {
            return abstractC12521g1;
        }
        AbstractC12521g1<E> a10 = super.a();
        this.f66738c = a10;
        return a10;
    }

    @Override
    @v2.c
    public int b(Object[] objArr, int i10) {
        e3<V1.a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            V1.a<E> next = it.next();
            Arrays.fill(objArr, i10, next.getCount() + i10, next.getElement());
            i10 += next.getCount();
        }
        return i10;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return Ad(obj) > 0;
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean e7(E e10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return W1.i(this, obj);
    }

    @Override
    public int hashCode() {
        return D2.k(entrySet());
    }

    @Override
    public e3<E> iterator() {
        return new a(this, entrySet().iterator());
    }

    @Override
    @v2.c
    public abstract Object j();

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final int pc(@CheckForNull Object obj, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract AbstractC12564r1<E> S1();

    @Override
    public String toString() {
        return entrySet().toString();
    }

    @Override
    public AbstractC12564r1<V1.a<E>> entrySet() {
        AbstractC12564r1<V1.a<E>> abstractC12564r1 = this.f66739d;
        if (abstractC12564r1 != null) {
            return abstractC12564r1;
        }
        AbstractC12564r1<V1.a<E>> r10 = r();
        this.f66739d = r10;
        return r10;
    }

    public abstract V1.a<E> v(int i10);

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final int y6(E e10, int i10) {
        throw new UnsupportedOperationException();
    }
}
