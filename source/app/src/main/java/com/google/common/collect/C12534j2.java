package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import w2.InterfaceC15902t;

@X
@v2.b
public final class C12534j2<C extends Comparable> extends AbstractC12538k2 implements w2.I<C>, Serializable {

    public static final C12534j2<Comparable> f66691d = new C12534j2<>(Q.c(), Q.a());

    public static final long f66692e = 0;

    public final Q<C> f66693b;

    public final Q<C> f66694c;

    public static class a {

        public static final int[] f66695a;

        static {
            int[] iArr = new int[EnumC12586x.values().length];
            f66695a = iArr;
            try {
                iArr[EnumC12586x.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66695a[EnumC12586x.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class b implements InterfaceC15902t<C12534j2, Q> {

        public static final b f66696b = new b();

        @Override
        public Q apply(C12534j2 c12534j2) {
            return c12534j2.f66693b;
        }
    }

    public static class c extends Ordering<C12534j2<?>> implements Serializable {

        public static final Ordering<C12534j2<?>> f66697d = new c();

        public static final long f66698e = 0;

        @Override
        public int compare(C12534j2<?> c12534j2, C12534j2<?> c12534j22) {
            return K.n().i(c12534j2.f66693b, c12534j22.f66693b).i(c12534j2.f66694c, c12534j22.f66694c).m();
        }
    }

    public static class d implements InterfaceC15902t<C12534j2, Q> {

        public static final d f66699b = new d();

        @Override
        public Q apply(C12534j2 c12534j2) {
            return c12534j2.f66694c;
        }
    }

    public C12534j2(Q<C> q10, Q<C> q11) {
        this.f66693b = (Q) w2.H.E(q10);
        this.f66694c = (Q) w2.H.E(q11);
        if (q10.compareTo(q11) > 0 || q10 == Q.a() || q11 == Q.c()) {
            String valueOf = String.valueOf(H(q10, q11));
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid range: ".concat(valueOf) : new String("Invalid range: "));
        }
    }

    public static <C extends Comparable<?>> C12534j2<C> A(C c10, C c11) {
        return k(Q.b(c10), Q.d(c11));
    }

    public static <C extends Comparable<?>> C12534j2<C> B(C c10, C c11) {
        return k(Q.b(c10), Q.b(c11));
    }

    public static <C extends Comparable<?>> C12534j2<C> C(C c10, EnumC12586x enumC12586x, C c11, EnumC12586x enumC12586x2) {
        w2.H.E(enumC12586x);
        w2.H.E(enumC12586x2);
        EnumC12586x enumC12586x3 = EnumC12586x.OPEN;
        return k(enumC12586x == enumC12586x3 ? Q.b(c10) : Q.d(c10), enumC12586x2 == enumC12586x3 ? Q.d(c11) : Q.b(c11));
    }

    public static <C extends Comparable<?>> Ordering<C12534j2<C>> D() {
        return (Ordering<C12534j2<C>>) c.f66697d;
    }

    public static <C extends Comparable<?>> C12534j2<C> F(C c10) {
        return f(c10, c10);
    }

    public static String H(Q<?> q10, Q<?> q11) {
        StringBuilder sb2 = new StringBuilder(16);
        q10.h(sb2);
        sb2.append(ClasspathEntry.DOT_DOT);
        q11.i(sb2);
        return sb2.toString();
    }

    public static <C extends Comparable<?>> C12534j2<C> I(C c10, EnumC12586x enumC12586x) {
        int i10 = a.f66695a[enumC12586x.ordinal()];
        if (i10 == 1) {
            return w(c10);
        }
        if (i10 == 2) {
            return d(c10);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> InterfaceC15902t<C12534j2<C>, Q<C>> J() {
        return d.f66699b;
    }

    public static <C extends Comparable<?>> C12534j2<C> a() {
        return (C12534j2<C>) f66691d;
    }

    public static <C extends Comparable<?>> C12534j2<C> c(C c10) {
        return k(Q.d(c10), Q.a());
    }

    public static <C extends Comparable<?>> C12534j2<C> d(C c10) {
        return k(Q.c(), Q.b(c10));
    }

    public static <C extends Comparable<?>> C12534j2<C> f(C c10, C c11) {
        return k(Q.d(c10), Q.b(c11));
    }

    public static <C extends Comparable<?>> C12534j2<C> g(C c10, C c11) {
        return k(Q.d(c10), Q.d(c11));
    }

    public static int h(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static <C extends Comparable<?>> C12534j2<C> k(Q<C> q10, Q<C> q11) {
        return new C12534j2<>(q10, q11);
    }

    public static <C extends Comparable<?>> C12534j2<C> l(C c10, EnumC12586x enumC12586x) {
        int i10 = a.f66695a[enumC12586x.ordinal()];
        if (i10 == 1) {
            return p(c10);
        }
        if (i10 == 2) {
            return c(c10);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> C12534j2<C> m(Iterable<C> iterable) {
        w2.H.E(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.A().equals(comparator) || comparator == null) {
                return f((Comparable) sortedSet.first(), (Comparable) sortedSet.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) w2.H.E(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) w2.H.E(it.next());
            comparable = (Comparable) Ordering.A().x(comparable, comparable3);
            comparable2 = (Comparable) Ordering.A().s(comparable2, comparable3);
        }
        return f(comparable, comparable2);
    }

    public static <C extends Comparable<?>> C12534j2<C> p(C c10) {
        return k(Q.b(c10), Q.a());
    }

    public static <C extends Comparable<?>> C12534j2<C> w(C c10) {
        return k(Q.c(), Q.d(c10));
    }

    public static <C extends Comparable<?>> InterfaceC15902t<C12534j2<C>, Q<C>> x() {
        return b.f66696b;
    }

    public Object E() {
        return equals(f66691d) ? a() : this;
    }

    public C12534j2<C> G(C12534j2<C> c12534j2) {
        int compareTo = this.f66693b.compareTo(c12534j2.f66693b);
        int compareTo2 = this.f66694c.compareTo(c12534j2.f66694c);
        if (compareTo <= 0 && compareTo2 >= 0) {
            return this;
        }
        if (compareTo < 0 || compareTo2 > 0) {
            return k(compareTo <= 0 ? this.f66693b : c12534j2.f66693b, compareTo2 >= 0 ? this.f66694c : c12534j2.f66694c);
        }
        return c12534j2;
    }

    public EnumC12586x K() {
        return this.f66694c.r();
    }

    public C L() {
        return this.f66694c.j();
    }

    @Override
    @Deprecated
    public boolean apply(C c10) {
        return i(c10);
    }

    public C12534j2<C> e(W<C> w10) {
        w2.H.E(w10);
        Q<C> e10 = this.f66693b.e(w10);
        Q<C> e11 = this.f66694c.e(w10);
        return (e10 == this.f66693b && e11 == this.f66694c) ? this : k(e10, e11);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof C12534j2)) {
            return false;
        }
        C12534j2 c12534j2 = (C12534j2) obj;
        return this.f66693b.equals(c12534j2.f66693b) && this.f66694c.equals(c12534j2.f66694c);
    }

    public int hashCode() {
        return (this.f66693b.hashCode() * 31) + this.f66694c.hashCode();
    }

    public boolean i(C c10) {
        w2.H.E(c10);
        return this.f66693b.m(c10) && !this.f66694c.m(c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean j(Iterable<? extends C> iterable) {
        if (D1.C(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.A().equals(comparator) || comparator == null) {
                return i((Comparable) sortedSet.first()) && i((Comparable) sortedSet.last());
            }
        }
        Iterator<? extends C> it = iterable.iterator();
        while (it.hasNext()) {
            if (!i(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean n(C12534j2<C> c12534j2) {
        return this.f66693b.compareTo(c12534j2.f66693b) <= 0 && this.f66694c.compareTo(c12534j2.f66694c) >= 0;
    }

    public C12534j2<C> o(C12534j2<C> c12534j2) {
        if (this.f66693b.compareTo(c12534j2.f66694c) >= 0 || c12534j2.f66693b.compareTo(this.f66694c) >= 0) {
            boolean z10 = this.f66693b.compareTo(c12534j2.f66693b) < 0;
            C12534j2<C> c12534j22 = z10 ? this : c12534j2;
            if (!z10) {
                c12534j2 = this;
            }
            return k(c12534j22.f66694c, c12534j2.f66693b);
        }
        String valueOf = String.valueOf(this);
        String valueOf2 = String.valueOf(c12534j2);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 39 + valueOf2.length());
        sb2.append("Ranges have a nonempty intersection: ");
        sb2.append(valueOf);
        sb2.append(", ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public boolean q() {
        return this.f66693b != Q.c();
    }

    public boolean r() {
        return this.f66694c != Q.a();
    }

    public C12534j2<C> s(C12534j2<C> c12534j2) {
        int compareTo = this.f66693b.compareTo(c12534j2.f66693b);
        int compareTo2 = this.f66694c.compareTo(c12534j2.f66694c);
        if (compareTo >= 0 && compareTo2 <= 0) {
            return this;
        }
        if (compareTo <= 0 && compareTo2 >= 0) {
            return c12534j2;
        }
        Q<C> q10 = compareTo >= 0 ? this.f66693b : c12534j2.f66693b;
        Q<C> q11 = compareTo2 <= 0 ? this.f66694c : c12534j2.f66694c;
        w2.H.y(q10.compareTo(q11) <= 0, "intersection is undefined for disconnected ranges %s and %s", this, c12534j2);
        return k(q10, q11);
    }

    public String toString() {
        return H(this.f66693b, this.f66694c);
    }

    public boolean u(C12534j2<C> c12534j2) {
        return this.f66693b.compareTo(c12534j2.f66694c) <= 0 && c12534j2.f66693b.compareTo(this.f66694c) <= 0;
    }

    public boolean v() {
        return this.f66693b.equals(this.f66694c);
    }

    public EnumC12586x y() {
        return this.f66693b.q();
    }

    public C z() {
        return this.f66693b.j();
    }
}
