package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class C12550n2<C extends Comparable> extends O<C> {

    public static final long f66749k = 0;

    public final C12534j2<C> f66750j;

    public class a extends AbstractC12539l<C> {

        public final C f66751c;

        public a(Comparable comparable) {
            super(comparable);
            this.f66751c = (C) C12550n2.this.last();
        }

        @Override
        @CheckForNull
        public C a(C c10) {
            if (C12550n2.W0(c10, this.f66751c)) {
                return null;
            }
            return C12550n2.this.f65894i.g(c10);
        }
    }

    public class b extends AbstractC12539l<C> {

        public final C f66753c;

        public b(Comparable comparable) {
            super(comparable);
            this.f66753c = (C) C12550n2.this.first();
        }

        @Override
        @CheckForNull
        public C a(C c10) {
            if (C12550n2.W0(c10, this.f66753c)) {
                return null;
            }
            return C12550n2.this.f65894i.i(c10);
        }
    }

    public class c extends Z0<C> {
        public c() {
        }

        @Override
        public AbstractC12588x1<C> Q() {
            return C12550n2.this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public C get(int i10) {
            w2.H.C(i10, size());
            C12550n2 c12550n2 = C12550n2.this;
            return (C) c12550n2.f65894i.h(c12550n2.first(), i10);
        }
    }

    @v2.c
    public static final class d<C extends Comparable> implements Serializable {

        public final C12534j2<C> f66756b;

        public final W<C> f66757c;

        public d(C12534j2 c12534j2, W w10, a aVar) {
            this(c12534j2, w10);
        }

        public final Object a() {
            return new C12550n2(this.f66756b, this.f66757c);
        }

        public d(C12534j2<C> c12534j2, W<C> w10) {
            this.f66756b = c12534j2;
            this.f66757c = w10;
        }
    }

    public C12550n2(C12534j2<C> c12534j2, W<C> w10) {
        super(w10);
        this.f66750j = c12534j2;
    }

    public static boolean W0(Comparable<?> comparable, @CheckForNull Comparable<?> comparable2) {
        return comparable2 != null && C12534j2.h(comparable, comparable2) == 0;
    }

    @Override
    public O<C> f0(C c10, boolean z10) {
        return Y0(C12534j2.I(c10, EnumC12586x.b(z10)));
    }

    @Override
    public O<C> I0(O<C> o10) {
        w2.H.E(o10);
        w2.H.d(this.f65894i.equals(o10.f65894i));
        if (o10.isEmpty()) {
            return o10;
        }
        Comparable comparable = (Comparable) Ordering.A().s(first(), (Comparable) o10.first());
        Comparable comparable2 = (Comparable) Ordering.A().x(last(), (Comparable) o10.last());
        return comparable.compareTo(comparable2) <= 0 ? O.E0(C12534j2.f(comparable, comparable2), this.f65894i) : new Y(this.f65894i);
    }

    @Override
    public C12534j2<C> J0() {
        EnumC12586x enumC12586x = EnumC12586x.CLOSED;
        return M0(enumC12586x, enumC12586x);
    }

    @Override
    public C12534j2<C> M0(EnumC12586x enumC12586x, EnumC12586x enumC12586x2) {
        return C12534j2.k(this.f66750j.f66693b.s(enumC12586x, this.f65894i), this.f66750j.f66694c.u(enumC12586x2, this.f65894i));
    }

    @Override
    public O<C> t0(C c10, boolean z10, C c11, boolean z11) {
        return (c10.compareTo(c11) != 0 || z10 || z11) ? Y0(C12534j2.C(c10, EnumC12586x.b(z10), c11, EnumC12586x.b(z11))) : new Y(this.f65894i);
    }

    @Override
    public O<C> w0(C c10, boolean z10) {
        return Y0(C12534j2.l(c10, EnumC12586x.b(z10)));
    }

    @Override
    public C first() {
        C o10 = this.f66750j.f66693b.o(this.f65894i);
        Objects.requireNonNull(o10);
        return o10;
    }

    public final O<C> Y0(C12534j2<C> c12534j2) {
        return this.f66750j.u(c12534j2) ? O.E0(this.f66750j.s(c12534j2), this.f65894i) : new Y(this.f65894i);
    }

    @Override
    public C last() {
        C k10 = this.f66750j.f66694c.k(this.f65894i);
        Objects.requireNonNull(k10);
        return k10;
    }

    @Override
    @v2.c
    public e3<C> descendingIterator() {
        return new b(last());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.f66750j.i((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return C.b(this, collection);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12550n2) {
            C12550n2 c12550n2 = (C12550n2) obj;
            if (this.f65894i.equals(c12550n2.f65894i)) {
                return first().equals(c12550n2.first()) && last().equals(c12550n2.last());
            }
        }
        return super.equals(obj);
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public int hashCode() {
        return D2.k(this);
    }

    @Override
    public e3<C> iterator() {
        return new a(first());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @v2.c
    public int indexOf(@CheckForNull Object obj) {
        if (!contains(obj)) {
            return -1;
        }
        W<C> w10 = this.f65894i;
        C first = first();
        Objects.requireNonNull(obj);
        return (int) w10.b(first, (Comparable) obj);
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    @v2.c
    public Object j() {
        return new d(this.f66750j, this.f65894i, null);
    }

    @Override
    public int size() {
        long b10 = this.f65894i.b(first(), last());
        if (b10 >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) b10) + 1;
    }

    @Override
    public AbstractC12521g1<C> x() {
        return this.f65894i.f66321b ? new c() : super.x();
    }
}
