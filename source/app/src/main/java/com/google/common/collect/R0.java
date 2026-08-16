package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

@X
@v2.b(serializable = true)
public final class R0<T> implements Serializable {

    public final Comparator<? super T> f66096b;

    public final boolean f66097c;

    @CheckForNull
    public final T f66098d;

    public final EnumC12586x f66099e;

    public final boolean f66100f;

    @CheckForNull
    public final T f66101g;

    public final EnumC12586x f66102h;

    @CheckForNull
    public transient R0<T> f66103i;

    public R0(Comparator<? super T> comparator, boolean z10, @CheckForNull T t10, EnumC12586x enumC12586x, boolean z11, @CheckForNull T t11, EnumC12586x enumC12586x2) {
        this.f66096b = (Comparator) w2.H.E(comparator);
        this.f66097c = z10;
        this.f66100f = z11;
        this.f66098d = t10;
        this.f66099e = (EnumC12586x) w2.H.E(enumC12586x);
        this.f66101g = t11;
        this.f66102h = (EnumC12586x) w2.H.E(enumC12586x2);
        if (z10) {
            comparator.compare((Object) Z1.a(t10), (Object) Z1.a(t10));
        }
        if (z11) {
            comparator.compare((Object) Z1.a(t11), (Object) Z1.a(t11));
        }
        if (z10 && z11) {
            int compare = comparator.compare((Object) Z1.a(t10), (Object) Z1.a(t11));
            w2.H.y(compare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t10, t11);
            if (compare == 0) {
                EnumC12586x enumC12586x3 = EnumC12586x.OPEN;
                w2.H.d((enumC12586x == enumC12586x3 && enumC12586x2 == enumC12586x3) ? false : true);
            }
        }
    }

    public static <T> R0<T> a(Comparator<? super T> comparator) {
        EnumC12586x enumC12586x = EnumC12586x.OPEN;
        return new R0<>(comparator, false, null, enumC12586x, false, null, enumC12586x);
    }

    public static <T> R0<T> d(Comparator<? super T> comparator, @InterfaceC12518f2 T t10, EnumC12586x enumC12586x) {
        return new R0<>(comparator, true, t10, enumC12586x, false, null, EnumC12586x.OPEN);
    }

    public static <T extends Comparable> R0<T> e(C12534j2<T> c12534j2) {
        return new R0<>(Ordering.A(), c12534j2.q(), c12534j2.q() ? c12534j2.z() : null, c12534j2.q() ? c12534j2.y() : EnumC12586x.OPEN, c12534j2.r(), c12534j2.r() ? c12534j2.L() : null, c12534j2.r() ? c12534j2.K() : EnumC12586x.OPEN);
    }

    public static <T> R0<T> n(Comparator<? super T> comparator, @InterfaceC12518f2 T t10, EnumC12586x enumC12586x, @InterfaceC12518f2 T t11, EnumC12586x enumC12586x2) {
        return new R0<>(comparator, true, t10, enumC12586x, true, t11, enumC12586x2);
    }

    public static <T> R0<T> r(Comparator<? super T> comparator, @InterfaceC12518f2 T t10, EnumC12586x enumC12586x) {
        return new R0<>(comparator, false, null, EnumC12586x.OPEN, true, t10, enumC12586x);
    }

    public Comparator<? super T> b() {
        return this.f66096b;
    }

    public boolean c(@InterfaceC12518f2 T t10) {
        return (q(t10) || p(t10)) ? false : true;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof R0)) {
            return false;
        }
        R0 r02 = (R0) obj;
        return this.f66096b.equals(r02.f66096b) && this.f66097c == r02.f66097c && this.f66100f == r02.f66100f && f().equals(r02.f()) && h().equals(r02.h()) && w2.B.a(g(), r02.g()) && w2.B.a(i(), r02.i());
    }

    public EnumC12586x f() {
        return this.f66099e;
    }

    @CheckForNull
    public T g() {
        return this.f66098d;
    }

    public EnumC12586x h() {
        return this.f66102h;
    }

    public int hashCode() {
        return w2.B.b(this.f66096b, g(), f(), i(), h());
    }

    @CheckForNull
    public T i() {
        return this.f66101g;
    }

    public boolean j() {
        return this.f66097c;
    }

    public boolean k() {
        return this.f66100f;
    }

    public R0<T> l(R0<T> r02) {
        int compare;
        int compare2;
        T t10;
        EnumC12586x enumC12586x;
        EnumC12586x enumC12586x2;
        int compare3;
        EnumC12586x enumC12586x3;
        w2.H.E(r02);
        w2.H.d(this.f66096b.equals(r02.f66096b));
        boolean z10 = this.f66097c;
        T g10 = g();
        EnumC12586x f10 = f();
        if (!j()) {
            z10 = r02.f66097c;
            g10 = r02.g();
            f10 = r02.f();
        } else if (r02.j() && ((compare = this.f66096b.compare(g(), r02.g())) < 0 || (compare == 0 && r02.f() == EnumC12586x.OPEN))) {
            g10 = r02.g();
            f10 = r02.f();
        }
        boolean z11 = z10;
        boolean z12 = this.f66100f;
        T i10 = i();
        EnumC12586x h10 = h();
        if (!k()) {
            z12 = r02.f66100f;
            i10 = r02.i();
            h10 = r02.h();
        } else if (r02.k() && ((compare2 = this.f66096b.compare(i(), r02.i())) > 0 || (compare2 == 0 && r02.h() == EnumC12586x.OPEN))) {
            i10 = r02.i();
            h10 = r02.h();
        }
        boolean z13 = z12;
        T t11 = i10;
        if (z11 && z13 && ((compare3 = this.f66096b.compare(g10, t11)) > 0 || (compare3 == 0 && f10 == (enumC12586x3 = EnumC12586x.OPEN) && h10 == enumC12586x3))) {
            enumC12586x = EnumC12586x.OPEN;
            enumC12586x2 = EnumC12586x.CLOSED;
            t10 = t11;
        } else {
            t10 = g10;
            enumC12586x = f10;
            enumC12586x2 = h10;
        }
        return new R0<>(this.f66096b, z11, t10, enumC12586x, z13, t11, enumC12586x2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean m() {
        return (k() && q(Z1.a(i()))) || (j() && p(Z1.a(g())));
    }

    public R0<T> o() {
        R0<T> r02 = this.f66103i;
        if (r02 != null) {
            return r02;
        }
        R0<T> r03 = new R0<>(Ordering.i(this.f66096b).F(), this.f66100f, i(), h(), this.f66097c, g(), f());
        r03.f66103i = this;
        this.f66103i = r03;
        return r03;
    }

    public boolean p(@InterfaceC12518f2 T t10) {
        if (!k()) {
            return false;
        }
        int compare = this.f66096b.compare(t10, Z1.a(i()));
        return ((compare == 0) & (h() == EnumC12586x.OPEN)) | (compare > 0);
    }

    public boolean q(@InterfaceC12518f2 T t10) {
        if (!j()) {
            return false;
        }
        int compare = this.f66096b.compare(t10, Z1.a(g()));
        return ((compare == 0) & (f() == EnumC12586x.OPEN)) | (compare < 0);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f66096b);
        EnumC12586x enumC12586x = this.f66099e;
        EnumC12586x enumC12586x2 = EnumC12586x.CLOSED;
        char c10 = enumC12586x == enumC12586x2 ? '[' : '(';
        String valueOf2 = String.valueOf(this.f66097c ? this.f66098d : "-\u221e");
        String valueOf3 = String.valueOf(this.f66100f ? this.f66101g : "\u221e");
        char c11 = this.f66102h == enumC12586x2 ? JavaElement.JEM_TYPE_PARAMETER : ')';
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 4 + valueOf2.length() + valueOf3.length());
        sb2.append(valueOf);
        sb2.append(b3.s.f32937c);
        sb2.append(c10);
        sb2.append(valueOf2);
        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append(valueOf3);
        sb2.append(c11);
        return sb2.toString();
    }
}
