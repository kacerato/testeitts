package org.bouncycastle.cms;

import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import hi.C13486b;
import hi.C13496h;
import hi.C13505q;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.C14549x;
import oh.InterfaceC14516g;
import yh.InterfaceC16192a;

public class U {

    public static final U f100642a = new U();

    public static final Map f100643b = new HashMap();

    static {
        a(Sh.d.f23334a0, "DSA");
        a(Sh.d.f23336b0, "DSA");
        a(Sh.d.f23338c0, "DSA");
        a(Sh.d.f23340d0, "DSA");
        a(Sh.d.f23342e0, "DSA");
        a(Sh.d.f23344f0, "DSA");
        a(Sh.d.f23346g0, "DSA");
        a(Sh.d.f23348h0, "DSA");
        a(Wh.b.f27786j, "DSA");
        a(Wh.b.f27777a, KeyProperties.KEY_ALGORITHM_RSA);
        a(Wh.b.f27779c, KeyProperties.KEY_ALGORITHM_RSA);
        a(Wh.b.f27778b, KeyProperties.KEY_ALGORITHM_RSA);
        a(Wh.b.f27787k, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29018I0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29022J0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29026K0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29030L0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29059U0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29049R0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29051S0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29055T0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Sh.d.f23358m0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Sh.d.f23360n0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Sh.d.f23362o0, KeyProperties.KEY_ALGORITHM_RSA);
        a(Sh.d.f23364p0, KeyProperties.KEY_ALGORITHM_RSA);
        a(ki.r.f95301E5, "ECDSA");
        a(ki.r.f95309K5, "ECDSA");
        a(ki.r.f95311L5, "ECDSA");
        a(ki.r.f95313M5, "ECDSA");
        a(ki.r.f95315N5, "ECDSA");
        a(Sh.d.f23350i0, "ECDSA");
        a(Sh.d.f23352j0, "ECDSA");
        a(Sh.d.f23354k0, "ECDSA");
        a(Sh.d.f23356l0, "ECDSA");
        a(ki.r.f95350t6, "DSA");
        a(Ah.h.f642s, "ECDSA");
        a(Ah.h.f643t, "ECDSA");
        a(Ah.h.f644u, "ECDSA");
        a(Ah.h.f645v, "ECDSA");
        a(Ah.h.f646w, "ECDSA");
        a(Ah.h.f635l, KeyProperties.KEY_ALGORITHM_RSA);
        a(Ah.h.f636m, KeyProperties.KEY_ALGORITHM_RSA);
        a(Ah.h.f637n, "RSAandMGF1");
        a(Ah.h.f638o, "RSAandMGF1");
        a(ki.r.f95349s6, "DSA");
        a(Xh.t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        a(InterfaceC3890b.f33239e, KeyProperties.KEY_ALGORITHM_RSA);
        a(hi.E0.f90637W4, KeyProperties.KEY_ALGORITHM_RSA);
        a(Xh.t.f29045Q0, "RSAandMGF1");
        a(InterfaceC16192a.f130280l, "GOST3410");
        a(InterfaceC16192a.f130281m, "ECGOST3410");
        a(new C14549x("1.3.6.1.4.1.5849.1.6.2"), "ECGOST3410");
        a(new C14549x("1.3.6.1.4.1.5849.1.1.5"), "GOST3410");
        a(Yh.a.f30584g, "ECGOST3410-2012-256");
        a(Yh.a.f30585h, "ECGOST3410-2012-512");
        a(InterfaceC16192a.f130283o, "ECGOST3410");
        a(InterfaceC16192a.f130282n, "GOST3410");
        a(Yh.a.f30586i, "ECGOST3410-2012-256");
        a(Yh.a.f30587j, "ECGOST3410-2012-512");
    }

    public static void a(C14549x c14549x, String str) {
        f100643b.put(c14549x.J(), str);
    }

    public C13486b b(C13486b c13486b, Qk.o oVar) {
        InterfaceC14516g x10 = c13486b.x();
        return (x10 == null || oh.A0.f98776c.z(x10)) ? oVar.b(c13486b.u()) : c13486b;
    }

    public org.bouncycastle.util.t c(oh.G g10) {
        if (g10 == null) {
            return new org.bouncycastle.util.e(new ArrayList());
        }
        ArrayList arrayList = new ArrayList(g10.size());
        Enumeration I10 = g10.I();
        while (I10.hasMoreElements()) {
            oh.B r10 = ((InterfaceC14516g) I10.nextElement()).r();
            if (r10 instanceof oh.M) {
                oh.M m10 = (oh.M) r10;
                if (m10.g() == 1 || m10.g() == 2) {
                    arrayList.add(new C14143e(C13496h.v(m10.M(false, 16))));
                }
            }
        }
        return new org.bouncycastle.util.e(arrayList);
    }

    public org.bouncycastle.util.t d(oh.G g10) {
        if (g10 == null) {
            return new org.bouncycastle.util.e(new ArrayList());
        }
        ArrayList arrayList = new ArrayList(g10.size());
        Enumeration I10 = g10.I();
        while (I10.hasMoreElements()) {
            oh.B r10 = ((InterfaceC14516g) I10.nextElement()).r();
            if (r10 instanceof oh.E) {
                arrayList.add(new C14145g(hi.r.u(r10)));
            }
        }
        return new org.bouncycastle.util.e(arrayList);
    }

    public org.bouncycastle.util.t e(oh.G g10) {
        if (g10 == null) {
            return new org.bouncycastle.util.e(new ArrayList());
        }
        ArrayList arrayList = new ArrayList(g10.size());
        Enumeration I10 = g10.I();
        while (I10.hasMoreElements()) {
            oh.B r10 = ((InterfaceC14516g) I10.nextElement()).r();
            if (r10 instanceof oh.E) {
                arrayList.add(new C14146h(C13505q.v(r10)));
            }
        }
        return new org.bouncycastle.util.e(arrayList);
    }

    public String f(String str) {
        String str2 = (String) f100643b.get(str);
        return str2 != null ? str2 : str;
    }

    public org.bouncycastle.util.t g(C14549x c14549x, oh.G g10) {
        if (g10 == null) {
            return new org.bouncycastle.util.e(new ArrayList());
        }
        ArrayList arrayList = new ArrayList(g10.size());
        Enumeration I10 = g10.I();
        while (I10.hasMoreElements()) {
            oh.B r10 = ((InterfaceC14516g) I10.nextElement()).r();
            if (r10 instanceof oh.M) {
                oh.M R10 = oh.M.R(r10);
                if (R10.p(1)) {
                    uh.M x10 = uh.M.x(R10, false);
                    if (c14549x.A(x10.v())) {
                        arrayList.add(x10.u());
                    }
                }
            }
        }
        return new org.bouncycastle.util.e(arrayList);
    }

    public void h(C14549x c14549x, String str) {
        a(c14549x, str);
    }
}
