package com.google.common.collect;

import com.google.common.primitives.C12598a;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import yd.C16181m;

@X
@v2.b
public abstract class Q<C extends Comparable> implements Comparable<Q<C>>, Serializable {

    public static final long f65985c = 0;

    public final C f65986b;

    public static class a {

        public static final int[] f65987a;

        static {
            int[] iArr = new int[EnumC12586x.values().length];
            f65987a = iArr;
            try {
                iArr[EnumC12586x.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f65987a[EnumC12586x.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class b extends Q<Comparable<?>> {

        public static final b f65988d = new b();

        public static final long f65989e = 0;

        public b() {
            super("");
        }

        @Override
        public int compareTo(Q<Comparable<?>> q10) {
            return q10 == this ? 0 : 1;
        }

        @Override
        public void h(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override
        public void i(StringBuilder sb2) {
            sb2.append("+\u221e)");
        }

        @Override
        public Comparable<?> j() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        public Comparable<?> k(W<Comparable<?>> w10) {
            return w10.e();
        }

        @Override
        public boolean m(Comparable<?> comparable) {
            return false;
        }

        @Override
        public Comparable<?> o(W<Comparable<?>> w10) {
            throw new AssertionError();
        }

        @Override
        public EnumC12586x q() {
            throw new AssertionError((Object) "this statement should be unreachable");
        }

        @Override
        public EnumC12586x r() {
            throw new IllegalStateException();
        }

        @Override
        public Q<Comparable<?>> s(EnumC12586x enumC12586x, W<Comparable<?>> w10) {
            throw new AssertionError((Object) "this statement should be unreachable");
        }

        public String toString() {
            return "+\u221e";
        }

        @Override
        public Q<Comparable<?>> u(EnumC12586x enumC12586x, W<Comparable<?>> w10) {
            throw new IllegalStateException();
        }

        public final Object w() {
            return f65988d;
        }
    }

    public static final class c<C extends Comparable> extends Q<C> {

        public static final long f65990d = 0;

        public c(C c10) {
            super((Comparable) w2.H.E(c10));
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Q) obj);
        }

        @Override
        public Q<C> e(W<C> w10) {
            C o10 = o(w10);
            return o10 != null ? Q.d(o10) : Q.a();
        }

        @Override
        public void h(StringBuilder sb2) {
            sb2.append('(');
            sb2.append((Object) this.f65986b);
        }

        @Override
        public int hashCode() {
            return ~this.f65986b.hashCode();
        }

        @Override
        public void i(StringBuilder sb2) {
            sb2.append((Object) this.f65986b);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }

        @Override
        public C k(W<C> w10) {
            return this.f65986b;
        }

        @Override
        public boolean m(C c10) {
            return C12534j2.h(this.f65986b, c10) < 0;
        }

        @Override
        @CheckForNull
        public C o(W<C> w10) {
            return w10.g(this.f65986b);
        }

        @Override
        public EnumC12586x q() {
            return EnumC12586x.OPEN;
        }

        @Override
        public EnumC12586x r() {
            return EnumC12586x.CLOSED;
        }

        @Override
        public Q<C> s(EnumC12586x enumC12586x, W<C> w10) {
            int i10 = a.f65987a[enumC12586x.ordinal()];
            if (i10 == 1) {
                C g10 = w10.g(this.f65986b);
                return g10 == null ? Q.c() : Q.d(g10);
            }
            if (i10 == 2) {
                return this;
            }
            throw new AssertionError();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f65986b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2);
            sb2.append("/");
            sb2.append(valueOf);
            sb2.append(C16181m.f130232i);
            return sb2.toString();
        }

        @Override
        public Q<C> u(EnumC12586x enumC12586x, W<C> w10) {
            int i10 = a.f65987a[enumC12586x.ordinal()];
            if (i10 == 1) {
                return this;
            }
            if (i10 != 2) {
                throw new AssertionError();
            }
            C g10 = w10.g(this.f65986b);
            return g10 == null ? Q.a() : Q.d(g10);
        }
    }

    public static final class d extends Q<Comparable<?>> {

        public static final d f65991d = new d();

        public static final long f65992e = 0;

        public d() {
            super("");
        }

        private Object w() {
            return f65991d;
        }

        @Override
        public Q<Comparable<?>> e(W<Comparable<?>> w10) {
            try {
                return Q.d(w10.f());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override
        public int compareTo(Q<Comparable<?>> q10) {
            return q10 == this ? 0 : -1;
        }

        @Override
        public void h(StringBuilder sb2) {
            sb2.append("(-\u221e");
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override
        public void i(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override
        public Comparable<?> j() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        public Comparable<?> k(W<Comparable<?>> w10) {
            throw new AssertionError();
        }

        @Override
        public boolean m(Comparable<?> comparable) {
            return true;
        }

        @Override
        public Comparable<?> o(W<Comparable<?>> w10) {
            return w10.f();
        }

        @Override
        public EnumC12586x q() {
            throw new IllegalStateException();
        }

        @Override
        public EnumC12586x r() {
            throw new AssertionError((Object) "this statement should be unreachable");
        }

        @Override
        public Q<Comparable<?>> s(EnumC12586x enumC12586x, W<Comparable<?>> w10) {
            throw new IllegalStateException();
        }

        public String toString() {
            return "-\u221e";
        }

        @Override
        public Q<Comparable<?>> u(EnumC12586x enumC12586x, W<Comparable<?>> w10) {
            throw new AssertionError((Object) "this statement should be unreachable");
        }
    }

    public static final class e<C extends Comparable> extends Q<C> {

        public static final long f65993d = 0;

        public e(C c10) {
            super((Comparable) w2.H.E(c10));
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Q) obj);
        }

        @Override
        public void h(StringBuilder sb2) {
            sb2.append('[');
            sb2.append((Object) this.f65986b);
        }

        @Override
        public int hashCode() {
            return this.f65986b.hashCode();
        }

        @Override
        public void i(StringBuilder sb2) {
            sb2.append((Object) this.f65986b);
            sb2.append(')');
        }

        @Override
        @CheckForNull
        public C k(W<C> w10) {
            return w10.i(this.f65986b);
        }

        @Override
        public boolean m(C c10) {
            return C12534j2.h(this.f65986b, c10) <= 0;
        }

        @Override
        public C o(W<C> w10) {
            return this.f65986b;
        }

        @Override
        public EnumC12586x q() {
            return EnumC12586x.CLOSED;
        }

        @Override
        public EnumC12586x r() {
            return EnumC12586x.OPEN;
        }

        @Override
        public Q<C> s(EnumC12586x enumC12586x, W<C> w10) {
            int i10 = a.f65987a[enumC12586x.ordinal()];
            if (i10 == 1) {
                return this;
            }
            if (i10 != 2) {
                throw new AssertionError();
            }
            C i11 = w10.i(this.f65986b);
            return i11 == null ? Q.c() : new c(i11);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f65986b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2);
            sb2.append(C16181m.f130232i);
            sb2.append(valueOf);
            sb2.append("/");
            return sb2.toString();
        }

        @Override
        public Q<C> u(EnumC12586x enumC12586x, W<C> w10) {
            int i10 = a.f65987a[enumC12586x.ordinal()];
            if (i10 == 1) {
                C i11 = w10.i(this.f65986b);
                return i11 == null ? Q.a() : new c(i11);
            }
            if (i10 == 2) {
                return this;
            }
            throw new AssertionError();
        }
    }

    public Q(C c10) {
        this.f65986b = c10;
    }

    public static <C extends Comparable> Q<C> a() {
        return b.f65988d;
    }

    public static <C extends Comparable> Q<C> b(C c10) {
        return new c(c10);
    }

    public static <C extends Comparable> Q<C> c() {
        return d.f65991d;
    }

    public static <C extends Comparable> Q<C> d(C c10) {
        return new e(c10);
    }

    public Q<C> e(W<C> w10) {
        return this;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Q)) {
            return false;
        }
        try {
            return compareTo((Q) obj) == 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override
    public int compareTo(Q<C> q10) {
        if (q10 == c()) {
            return 1;
        }
        if (q10 == a()) {
            return -1;
        }
        int h10 = C12534j2.h(this.f65986b, q10.f65986b);
        return h10 != 0 ? h10 : C12598a.d(this instanceof c, q10 instanceof c);
    }

    public abstract void h(StringBuilder sb2);

    public abstract int hashCode();

    public abstract void i(StringBuilder sb2);

    public C j() {
        return this.f65986b;
    }

    @CheckForNull
    public abstract C k(W<C> w10);

    public abstract boolean m(C c10);

    @CheckForNull
    public abstract C o(W<C> w10);

    public abstract EnumC12586x q();

    public abstract EnumC12586x r();

    public abstract Q<C> s(EnumC12586x enumC12586x, W<C> w10);

    public abstract Q<C> u(EnumC12586x enumC12586x, W<C> w10);
}
