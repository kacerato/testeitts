package F2;

import com.google.common.collect.AbstractC12521g1;
import java.util.List;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import s3.C15229a;
import s3.EnumC15230b;
import w2.AbstractC15885e;
import w2.C;
import w2.C15883c;
import w2.H;
import w2.M;
import w2.y;

@v2.b(emulated = true)
@a
@I2.j
public final class f {

    public static final AbstractC15885e f6315e = AbstractC15885e.d(".\u3002\uff0e\uff61");

    public static final M f6316f = M.h('.');

    public static final y f6317g = y.o('.');

    public static final int f6318h = -1;

    public static final int f6319i = 127;

    public static final int f6320j = 253;

    public static final int f6321k = 63;

    public static final AbstractC15885e f6322l;

    public static final AbstractC15885e f6323m;

    public static final AbstractC15885e f6324n;

    public static final AbstractC15885e f6325o;

    public final String f6326a;

    public final AbstractC12521g1<String> f6327b;

    public final int f6328c;

    public final int f6329d;

    static {
        AbstractC15885e d10 = AbstractC15885e.d("-_");
        f6322l = d10;
        AbstractC15885e m10 = AbstractC15885e.m('0', '9');
        f6323m = m10;
        AbstractC15885e I10 = AbstractC15885e.m('a', 'z').I(AbstractC15885e.m(IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'Z'));
        f6324n = I10;
        f6325o = m10.I(I10).I(d10);
    }

    public f(String str) {
        String g10 = C15883c.g(f6315e.N(str, '.'));
        g10 = g10.endsWith(".") ? g10.substring(0, g10.length() - 1) : g10;
        H.u(g10.length() <= 253, "Domain name too long: '%s':", g10);
        this.f6326a = g10;
        AbstractC12521g1<String> p10 = AbstractC12521g1.p(f6316f.n(g10));
        this.f6327b = p10;
        H.u(p10.size() <= 127, "Domain has too many parts: '%s'", g10);
        H.u(x(p10), "Not a valid domain name: '%s'", g10);
        this.f6328c = c(C.a());
        this.f6329d = c(C.f(EnumC15230b.REGISTRY));
    }

    @I2.a
    public static f d(String str) {
        return new f((String) H.E(str));
    }

    public static boolean n(String str) {
        try {
            d(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static boolean o(C<EnumC15230b> c10, C<EnumC15230b> c11) {
        return c10.e() ? c10.equals(c11) : c11.e();
    }

    public static boolean p(C<EnumC15230b> c10, String str) {
        List<String> o10 = f6316f.f(2).o(str);
        return o10.size() == 2 && o(c10, C.c(C15229a.f109184b.get(o10.get(1))));
    }

    public static boolean w(String str, boolean z10) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (!f6325o.C(AbstractC15885e.f().P(str))) {
                return false;
            }
            AbstractC15885e abstractC15885e = f6322l;
            if (!abstractC15885e.B(str.charAt(0)) && !abstractC15885e.B(str.charAt(str.length() - 1))) {
                return (z10 && f6323m.B(str.charAt(0))) ? false : true;
            }
        }
        return false;
    }

    public static boolean x(List<String> list) {
        int size = list.size() - 1;
        if (!w(list.get(size), true)) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!w(list.get(i10), false)) {
                return false;
            }
        }
        return true;
    }

    public final f a(int i10) {
        y yVar = f6317g;
        AbstractC12521g1<String> abstractC12521g1 = this.f6327b;
        return d(yVar.k(abstractC12521g1.subList(i10, abstractC12521g1.size())));
    }

    public f b(String str) {
        String str2 = (String) H.E(str);
        String str3 = this.f6326a;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str3).length());
        sb2.append(str2);
        sb2.append(".");
        sb2.append(str3);
        return d(sb2.toString());
    }

    public final int c(C<EnumC15230b> c10) {
        int size = this.f6327b.size();
        for (int i10 = 0; i10 < size; i10++) {
            String k10 = f6317g.k(this.f6327b.subList(i10, size));
            if (o(c10, C.c(C15229a.f109183a.get(k10)))) {
                return i10;
            }
            if (C15229a.f109185c.containsKey(k10)) {
                return i10 + 1;
            }
            if (p(c10, k10)) {
                return i10;
            }
        }
        return -1;
    }

    public boolean e() {
        return this.f6327b.size() > 1;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            return this.f6326a.equals(((f) obj).f6326a);
        }
        return false;
    }

    public boolean f() {
        return this.f6328c != -1;
    }

    public boolean g() {
        return this.f6329d != -1;
    }

    public boolean h() {
        return this.f6328c == 0;
    }

    public int hashCode() {
        return this.f6326a.hashCode();
    }

    public boolean i() {
        return this.f6329d == 0;
    }

    public boolean j() {
        return this.f6329d == 1;
    }

    public boolean k() {
        return this.f6328c == 1;
    }

    public boolean l() {
        return this.f6328c > 0;
    }

    public boolean m() {
        return this.f6329d > 0;
    }

    public f q() {
        H.x0(e(), "Domain '%s' has no parent", this.f6326a);
        return a(1);
    }

    public AbstractC12521g1<String> r() {
        return this.f6327b;
    }

    @CheckForNull
    public f s() {
        if (f()) {
            return a(this.f6328c);
        }
        return null;
    }

    @CheckForNull
    public f t() {
        if (g()) {
            return a(this.f6329d);
        }
        return null;
    }

    public String toString() {
        return this.f6326a;
    }

    public f u() {
        if (j()) {
            return this;
        }
        H.x0(m(), "Not under a registry suffix: %s", this.f6326a);
        return a(this.f6329d - 1);
    }

    public f v() {
        if (k()) {
            return this;
        }
        H.x0(l(), "Not under a public suffix: %s", this.f6326a);
        return a(this.f6328c - 1);
    }
}
