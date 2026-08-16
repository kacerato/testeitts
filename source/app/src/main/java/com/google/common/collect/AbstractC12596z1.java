package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.S2;
import com.google.common.collect.T2;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12596z1<R, C, V> extends AbstractC12559q<R, C, V> implements Serializable {

    @I2.f
    public static final class a<R, C, V> {

        public final List<S2.a<R, C, V>> f66948a = M1.q();

        @CheckForNull
        public Comparator<? super R> f66949b;

        @CheckForNull
        public Comparator<? super C> f66950c;

        public AbstractC12596z1<R, C, V> a() {
            return b();
        }

        public AbstractC12596z1<R, C, V> b() {
            int size = this.f66948a.size();
            return size != 0 ? size != 1 ? AbstractC12589x2.H(this.f66948a, this.f66949b, this.f66950c) : new F2((S2.a) D1.z(this.f66948a)) : AbstractC12596z1.s();
        }

        @I2.a
        public a<R, C, V> c(a<R, C, V> aVar) {
            this.f66948a.addAll(aVar.f66948a);
            return this;
        }

        @I2.a
        public a<R, C, V> d(Comparator<? super C> comparator) {
            this.f66950c = (Comparator) w2.H.F(comparator, "columnComparator");
            return this;
        }

        @I2.a
        public a<R, C, V> e(Comparator<? super R> comparator) {
            this.f66949b = (Comparator) w2.H.F(comparator, "rowComparator");
            return this;
        }

        @I2.a
        public a<R, C, V> f(S2.a<? extends R, ? extends C, ? extends V> aVar) {
            if (aVar instanceof T2.c) {
                w2.H.F(aVar.b(), "row");
                w2.H.F(aVar.a(), "column");
                w2.H.F(aVar.getValue(), "value");
                this.f66948a.add(aVar);
            } else {
                g(aVar.b(), aVar.a(), aVar.getValue());
            }
            return this;
        }

        @I2.a
        public a<R, C, V> g(R r10, C c10, V v10) {
            this.f66948a.add(AbstractC12596z1.i(r10, c10, v10));
            return this;
        }

        @I2.a
        public a<R, C, V> h(S2<? extends R, ? extends C, ? extends V> s22) {
            Iterator<S2.a<? extends R, ? extends C, ? extends V>> it = s22.c0().iterator();
            while (it.hasNext()) {
                f(it.next());
            }
            return this;
        }
    }

    public static final class b implements Serializable {

        public static final long f66951g = 0;

        public final Object[] f66952b;

        public final Object[] f66953c;

        public final Object[] f66954d;

        public final int[] f66955e;

        public final int[] f66956f;

        public b(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.f66952b = objArr;
            this.f66953c = objArr2;
            this.f66954d = objArr3;
            this.f66955e = iArr;
            this.f66956f = iArr2;
        }

        public static b a(AbstractC12596z1<?, ?, ?> abstractC12596z1, int[] iArr, int[] iArr2) {
            return new b(abstractC12596z1.x().toArray(), abstractC12596z1.d0().toArray(), abstractC12596z1.values().toArray(), iArr, iArr2);
        }

        public Object b() {
            Object[] objArr = this.f66954d;
            if (objArr.length == 0) {
                return AbstractC12596z1.s();
            }
            int i10 = 0;
            if (objArr.length == 1) {
                return AbstractC12596z1.v(this.f66952b[0], this.f66953c[0], objArr[0]);
            }
            AbstractC12521g1.a aVar = new AbstractC12521g1.a(objArr.length);
            while (true) {
                Object[] objArr2 = this.f66954d;
                if (i10 >= objArr2.length) {
                    return AbstractC12589x2.J(aVar.e(), AbstractC12564r1.v(this.f66952b), AbstractC12564r1.v(this.f66953c));
                }
                aVar.a(AbstractC12596z1.i(this.f66952b[this.f66955e[i10]], this.f66953c[this.f66956f[i10]], objArr2[i10]));
                i10++;
            }
        }
    }

    public static <R, C, V> a<R, C, V> f() {
        return new a<>();
    }

    public static <R, C, V> S2.a<R, C, V> i(R r10, C c10, V v10) {
        return T2.c(w2.H.F(r10, "rowKey"), w2.H.F(c10, "columnKey"), w2.H.F(v10, "value"));
    }

    public static <R, C, V> AbstractC12596z1<R, C, V> n(S2<? extends R, ? extends C, ? extends V> s22) {
        return s22 instanceof AbstractC12596z1 ? (AbstractC12596z1) s22 : o(s22.c0());
    }

    public static <R, C, V> AbstractC12596z1<R, C, V> o(Iterable<? extends S2.a<? extends R, ? extends C, ? extends V>> iterable) {
        a f10 = f();
        Iterator<? extends S2.a<? extends R, ? extends C, ? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            f10.f(it.next());
        }
        return f10.a();
    }

    public static <R, C, V> AbstractC12596z1<R, C, V> s() {
        return (AbstractC12596z1<R, C, V>) O2.f65904h;
    }

    public static <R, C, V> AbstractC12596z1<R, C, V> v(R r10, C c10, V v10) {
        return new F2(r10, c10, v10);
    }

    @Override
    public AbstractC12505c1<V> values() {
        return (AbstractC12505c1) super.values();
    }

    public final Object D() {
        return q();
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final V L(R r10, C c10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return e(obj, obj2) != null;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void Y(S2<? extends R, ? extends C, ? extends V> s22) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override
    public final Iterator<V> d() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    @CheckForNull
    public Object e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.e(obj, obj2);
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return super.e0(obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        return super.g(obj);
    }

    @Override
    public final e3<S2.a<R, C, V>> a() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public AbstractC12564r1<S2.a<R, C, V>> c0() {
        return (AbstractC12564r1) super.c0();
    }

    @Override
    public AbstractC12529i1<R, V> B(C c10) {
        w2.H.F(c10, "columnKey");
        return (AbstractC12529i1) w2.z.a((AbstractC12529i1) A().get(c10), AbstractC12529i1.y());
    }

    @Override
    public AbstractC12564r1<C> d0() {
        return A().o();
    }

    @Override
    public abstract AbstractC12529i1<C, Map<R, V>> A();

    @Override
    public abstract AbstractC12564r1<S2.a<R, C, V>> b();

    public abstract b q();

    @Override
    public abstract AbstractC12505c1<V> c();

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public AbstractC12529i1<C, V> i0(R r10) {
        w2.H.F(r10, "rowKey");
        return (AbstractC12529i1) w2.z.a((AbstractC12529i1) u().get(r10), AbstractC12529i1.y());
    }

    @Override
    public AbstractC12564r1<R> x() {
        return u().o();
    }

    @Override
    public abstract AbstractC12529i1<R, Map<C, V>> u();
}
