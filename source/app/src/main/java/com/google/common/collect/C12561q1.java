package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.I2;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@X
@InterfaceC15800a
public final class C12561q1<C extends Comparable> extends AbstractC12535k<C> implements Serializable {

    public static final C12561q1<Comparable<?>> f66792d = new C12561q1<>(AbstractC12521g1.x());

    public static final C12561q1<Comparable<?>> f66793e = new C12561q1<>(AbstractC12521g1.y(C12534j2.a()));

    public final transient AbstractC12521g1<C12534j2<C>> f66794b;

    @CheckForNull
    @J2.b
    public transient C12561q1<C> f66795c;

    public class a extends AbstractC12521g1<C12534j2<C>> {

        public final int f66796d;

        public final int f66797e;

        public final C12534j2 f66798f;

        public a(int i10, int i11, C12534j2 c12534j2) {
            this.f66796d = i10;
            this.f66797e = i11;
            this.f66798f = c12534j2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public C12534j2<C> get(int i10) {
            w2.H.C(i10, this.f66796d);
            return (i10 == 0 || i10 == this.f66796d + (-1)) ? ((C12534j2) C12561q1.this.f66794b.get(i10 + this.f66797e)).s(this.f66798f) : (C12534j2) C12561q1.this.f66794b.get(i10 + this.f66797e);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return this.f66796d;
        }
    }

    public final class b extends AbstractC12588x1<C> {

        public final W<C> f66800i;

        @CheckForNull
        public transient Integer f66801j;

        public class a extends AbstractC12503c<C> {

            public final Iterator<C12534j2<C>> f66803d;

            public Iterator<C> f66804e = E1.u();

            public a() {
                this.f66803d = C12561q1.this.f66794b.iterator();
            }

            @Override
            @CheckForNull
            public C a() {
                while (!this.f66804e.hasNext()) {
                    if (!this.f66803d.hasNext()) {
                        return (C) b();
                    }
                    this.f66804e = O.E0(this.f66803d.next(), b.this.f66800i).iterator();
                }
                return this.f66804e.next();
            }
        }

        public class C1006b extends AbstractC12503c<C> {

            public final Iterator<C12534j2<C>> f66806d;

            public Iterator<C> f66807e = E1.u();

            public C1006b() {
                this.f66806d = C12561q1.this.f66794b.L().iterator();
            }

            @Override
            @CheckForNull
            public C a() {
                while (!this.f66807e.hasNext()) {
                    if (!this.f66806d.hasNext()) {
                        return (C) b();
                    }
                    this.f66807e = O.E0(this.f66806d.next(), b.this.f66800i).descendingIterator();
                }
                return this.f66807e.next();
            }
        }

        public b(W<C> w10) {
            super(Ordering.A());
            this.f66800i = w10;
        }

        @Override
        public AbstractC12588x1<C> f0(C c10, boolean z10) {
            return C0(C12534j2.I(c10, EnumC12586x.b(z10)));
        }

        public AbstractC12588x1<C> C0(C12534j2<C> c12534j2) {
            return C12561q1.this.k(c12534j2).v(this.f66800i);
        }

        @Override
        public AbstractC12588x1<C> t0(C c10, boolean z10, C c11, boolean z11) {
            return (z10 || z11 || C12534j2.h(c10, c11) != 0) ? C0(C12534j2.C(c10, EnumC12586x.b(z10), c11, EnumC12586x.b(z11))) : AbstractC12588x1.h0();
        }

        @Override
        public AbstractC12588x1<C> w0(C c10, boolean z10) {
            return C0(C12534j2.l(c10, EnumC12586x.b(z10)));
        }

        @Override
        public AbstractC12588x1<C> Z() {
            return new U(this);
        }

        @Override
        @v2.c("NavigableSet")
        public e3<C> descendingIterator() {
            return new C1006b();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return C12561q1.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        @Override
        public boolean h() {
            return C12561q1.this.f66794b.h();
        }

        @Override
        public e3<C> iterator() {
            return new a();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public int indexOf(@CheckForNull Object obj) {
            if (!contains(obj)) {
                return -1;
            }
            Objects.requireNonNull(obj);
            Comparable comparable = (Comparable) obj;
            e3 it = C12561q1.this.f66794b.iterator();
            long j10 = 0;
            while (it.hasNext()) {
                if (((C12534j2) it.next()).i(comparable)) {
                    return com.google.common.primitives.l.x(j10 + O.E0(r3, this.f66800i).indexOf(comparable));
                }
                j10 += O.E0(r3, this.f66800i).size();
            }
            throw new AssertionError((Object) "impossible");
        }

        @Override
        public Object j() {
            return new c(C12561q1.this.f66794b, this.f66800i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public int size() {
            Integer num = this.f66801j;
            if (num == null) {
                e3 it = C12561q1.this.f66794b.iterator();
                long j10 = 0;
                while (it.hasNext()) {
                    j10 += O.E0((C12534j2) it.next(), this.f66800i).size();
                    if (j10 >= 2147483647L) {
                        break;
                    }
                }
                num = Integer.valueOf(com.google.common.primitives.l.x(j10));
                this.f66801j = num;
            }
            return num.intValue();
        }

        @Override
        public String toString() {
            return C12561q1.this.f66794b.toString();
        }
    }

    public static class c<C extends Comparable> implements Serializable {

        public final AbstractC12521g1<C12534j2<C>> f66809b;

        public final W<C> f66810c;

        public c(AbstractC12521g1<C12534j2<C>> abstractC12521g1, W<C> w10) {
            this.f66809b = abstractC12521g1;
            this.f66810c = w10;
        }

        public Object a() {
            return new C12561q1(this.f66809b).v(this.f66810c);
        }
    }

    public static class d<C extends Comparable<?>> {

        public final List<C12534j2<C>> f66811a = M1.q();

        @I2.a
        public d<C> a(C12534j2<C> c12534j2) {
            w2.H.u(!c12534j2.v(), "range must not be empty, but was %s", c12534j2);
            this.f66811a.add(c12534j2);
            return this;
        }

        @I2.a
        public d<C> b(InterfaceC12546m2<C> interfaceC12546m2) {
            return c(interfaceC12546m2.m());
        }

        @I2.a
        public d<C> c(Iterable<C12534j2<C>> iterable) {
            Iterator<C12534j2<C>> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public C12561q1<C> d() {
            AbstractC12521g1.a aVar = new AbstractC12521g1.a(this.f66811a.size());
            Collections.sort(this.f66811a, C12534j2.D());
            InterfaceC12522g2 T10 = E1.T(this.f66811a.iterator());
            while (T10.hasNext()) {
                C12534j2 c12534j2 = (C12534j2) T10.next();
                while (T10.hasNext()) {
                    C12534j2<C> c12534j22 = (C12534j2) T10.peek();
                    if (c12534j2.u(c12534j22)) {
                        w2.H.y(c12534j2.s(c12534j22).v(), "Overlapping ranges not permitted but found %s overlapping %s", c12534j2, c12534j22);
                        c12534j2 = c12534j2.G((C12534j2) T10.next());
                    }
                }
                aVar.a(c12534j2);
            }
            AbstractC12521g1 e10 = aVar.e();
            return e10.isEmpty() ? C12561q1.E() : (e10.size() == 1 && ((C12534j2) D1.z(e10)).equals(C12534j2.a())) ? C12561q1.r() : new C12561q1<>(e10);
        }

        @I2.a
        public d<C> e(d<C> dVar) {
            c(dVar.f66811a);
            return this;
        }
    }

    public final class e extends AbstractC12521g1<C12534j2<C>> {

        public final boolean f66812d;

        public final boolean f66813e;

        public final int f66814f;

        /* JADX WARN: Multi-variable type inference failed */
        public e() {
            boolean q10 = ((C12534j2) C12561q1.this.f66794b.get(0)).q();
            this.f66812d = q10;
            boolean r10 = ((C12534j2) D1.w(C12561q1.this.f66794b)).r();
            this.f66813e = r10;
            int size = C12561q1.this.f66794b.size();
            size = q10 ? size : size - 1;
            this.f66814f = r10 ? size + 1 : size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public C12534j2<C> get(int i10) {
            w2.H.C(i10, this.f66814f);
            return C12534j2.k(this.f66812d ? i10 == 0 ? Q.c() : ((C12534j2) C12561q1.this.f66794b.get(i10 - 1)).f66694c : ((C12534j2) C12561q1.this.f66794b.get(i10)).f66694c, (this.f66813e && i10 == this.f66814f + (-1)) ? Q.a() : ((C12534j2) C12561q1.this.f66794b.get(i10 + (!this.f66812d ? 1 : 0))).f66693b);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return this.f66814f;
        }
    }

    public static final class f<C extends Comparable> implements Serializable {

        public final AbstractC12521g1<C12534j2<C>> f66816b;

        public f(AbstractC12521g1<C12534j2<C>> abstractC12521g1) {
            this.f66816b = abstractC12521g1;
        }

        public Object a() {
            return this.f66816b.isEmpty() ? C12561q1.E() : this.f66816b.equals(AbstractC12521g1.y(C12534j2.a())) ? C12561q1.r() : new C12561q1(this.f66816b);
        }
    }

    public C12561q1(AbstractC12521g1<C12534j2<C>> abstractC12521g1) {
        this.f66794b = abstractC12521g1;
    }

    public static <C extends Comparable> C12561q1<C> E() {
        return f66792d;
    }

    public static <C extends Comparable> C12561q1<C> F(C12534j2<C> c12534j2) {
        w2.H.E(c12534j2);
        return c12534j2.v() ? E() : c12534j2.equals(C12534j2.a()) ? r() : new C12561q1<>(AbstractC12521g1.y(c12534j2));
    }

    public static <C extends Comparable<?>> C12561q1<C> I(Iterable<C12534j2<C>> iterable) {
        return y(c3.u(iterable));
    }

    public static <C extends Comparable> C12561q1<C> r() {
        return f66793e;
    }

    public static <C extends Comparable<?>> d<C> w() {
        return new d<>();
    }

    public static <C extends Comparable> C12561q1<C> y(InterfaceC12546m2<C> interfaceC12546m2) {
        w2.H.E(interfaceC12546m2);
        if (interfaceC12546m2.isEmpty()) {
            return E();
        }
        if (interfaceC12546m2.i(C12534j2.a())) {
            return r();
        }
        if (interfaceC12546m2 instanceof C12561q1) {
            C12561q1<C> c12561q1 = (C12561q1) interfaceC12546m2;
            if (!c12561q1.D()) {
                return c12561q1;
            }
        }
        return new C12561q1<>(AbstractC12521g1.r(interfaceC12546m2.m()));
    }

    public static <C extends Comparable<?>> C12561q1<C> z(Iterable<C12534j2<C>> iterable) {
        return new d().c(iterable).d();
    }

    public C12561q1<C> A(InterfaceC12546m2<C> interfaceC12546m2) {
        c3 s10 = c3.s(this);
        s10.n(interfaceC12546m2);
        return y(s10);
    }

    public final AbstractC12521g1<C12534j2<C>> B(C12534j2<C> c12534j2) {
        if (this.f66794b.isEmpty() || c12534j2.v()) {
            return AbstractC12521g1.x();
        }
        if (c12534j2.n(c())) {
            return this.f66794b;
        }
        int c10 = c12534j2.q() ? I2.c(this.f66794b, C12534j2.J(), c12534j2.f66693b, I2.c.FIRST_AFTER, I2.b.NEXT_HIGHER) : 0;
        int c11 = (c12534j2.r() ? I2.c(this.f66794b, C12534j2.x(), c12534j2.f66694c, I2.c.FIRST_PRESENT, I2.b.NEXT_HIGHER) : this.f66794b.size()) - c10;
        return c11 == 0 ? AbstractC12521g1.x() : new a(c11, c10, c12534j2);
    }

    public C12561q1<C> C(InterfaceC12546m2<C> interfaceC12546m2) {
        c3 s10 = c3.s(this);
        s10.n(interfaceC12546m2.d());
        return y(s10);
    }

    public boolean D() {
        return this.f66794b.h();
    }

    @Override
    public C12561q1<C> k(C12534j2<C> c12534j2) {
        if (!isEmpty()) {
            C12534j2<C> c10 = c();
            if (c12534j2.n(c10)) {
                return this;
            }
            if (c12534j2.u(c10)) {
                return new C12561q1<>(B(c12534j2));
            }
        }
        return E();
    }

    public C12561q1<C> H(InterfaceC12546m2<C> interfaceC12546m2) {
        return I(D1.f(m(), interfaceC12546m2.m()));
    }

    public Object J() {
        return new f(this.f66794b);
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void a(C12534j2<C> c12534j2) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void b(Iterable<C12534j2<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    public C12534j2<C> c() {
        if (this.f66794b.isEmpty()) {
            throw new NoSuchElementException();
        }
        return C12534j2.k(this.f66794b.get(0).f66693b, this.f66794b.get(r1.size() - 1).f66694c);
    }

    @Override
    public void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override
    public boolean e(C12534j2<C> c12534j2) {
        int d10 = I2.d(this.f66794b, C12534j2.x(), c12534j2.f66693b, Ordering.A(), I2.c.ANY_PRESENT, I2.b.NEXT_HIGHER);
        if (d10 < this.f66794b.size() && this.f66794b.get(d10).u(c12534j2) && !this.f66794b.get(d10).s(c12534j2).v()) {
            return true;
        }
        if (d10 > 0) {
            int i10 = d10 - 1;
            if (this.f66794b.get(i10).u(c12534j2) && !this.f66794b.get(i10).s(c12534j2).v()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void f(Iterable<C12534j2<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean g(InterfaceC12546m2 interfaceC12546m2) {
        return super.g(interfaceC12546m2);
    }

    @Override
    @CheckForNull
    public C12534j2<C> h(C c10) {
        int d10 = I2.d(this.f66794b, C12534j2.x(), Q.d(c10), Ordering.A(), I2.c.ANY_PRESENT, I2.b.NEXT_LOWER);
        if (d10 == -1) {
            return null;
        }
        C12534j2<C> c12534j2 = this.f66794b.get(d10);
        if (c12534j2.i(c10)) {
            return c12534j2;
        }
        return null;
    }

    @Override
    public boolean i(C12534j2<C> c12534j2) {
        int d10 = I2.d(this.f66794b, C12534j2.x(), c12534j2.f66693b, Ordering.A(), I2.c.ANY_PRESENT, I2.b.NEXT_LOWER);
        return d10 != -1 && this.f66794b.get(d10).n(c12534j2);
    }

    @Override
    public boolean isEmpty() {
        return this.f66794b.isEmpty();
    }

    @Override
    public boolean j(Iterable iterable) {
        return super.j(iterable);
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void n(InterfaceC12546m2<C> interfaceC12546m2) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void o(C12534j2<C> c12534j2) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void p(InterfaceC12546m2<C> interfaceC12546m2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12564r1<C12534j2<C>> l() {
        return this.f66794b.isEmpty() ? AbstractC12564r1.z() : new C12581v2(this.f66794b.L(), C12534j2.D().F());
    }

    @Override
    public AbstractC12564r1<C12534j2<C>> m() {
        return this.f66794b.isEmpty() ? AbstractC12564r1.z() : new C12581v2(this.f66794b, C12534j2.D());
    }

    public AbstractC12588x1<C> v(W<C> w10) {
        w2.H.E(w10);
        if (isEmpty()) {
            return AbstractC12588x1.h0();
        }
        C12534j2<C> e10 = c().e(w10);
        if (!e10.q()) {
            throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
        }
        if (!e10.r()) {
            try {
                w10.e();
            } catch (NoSuchElementException unused) {
                throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
            }
        }
        return new b(w10);
    }

    @Override
    public C12561q1<C> d() {
        C12561q1<C> c12561q1 = this.f66795c;
        if (c12561q1 != null) {
            return c12561q1;
        }
        if (this.f66794b.isEmpty()) {
            C12561q1<C> r10 = r();
            this.f66795c = r10;
            return r10;
        }
        if (this.f66794b.size() == 1 && this.f66794b.get(0).equals(C12534j2.a())) {
            C12561q1<C> E10 = E();
            this.f66795c = E10;
            return E10;
        }
        C12561q1<C> c12561q12 = new C12561q1<>(new e(), this);
        this.f66795c = c12561q12;
        return c12561q12;
    }

    public C12561q1(AbstractC12521g1<C12534j2<C>> abstractC12521g1, C12561q1<C> c12561q1) {
        this.f66794b = abstractC12521g1;
        this.f66795c = c12561q1;
    }
}
