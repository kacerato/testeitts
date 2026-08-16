package ph;

import em.h;
import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import jk.AbstractC13875e;
import jk.B;
import ki.l;
import ki.m;
import ki.n;
import oh.C14549x;
import org.bouncycastle.util.w;

public class C15000a {

    public static m f103968a = new C1954a();

    public static final Hashtable f103969b = new Hashtable();

    public static final Hashtable f103970c = new Hashtable();

    public static final Hashtable f103971d = new Hashtable();

    public class C1954a extends m {
        @Override
        public AbstractC13875e a() {
            return C15000a.e(new AbstractC13875e.f(C15000a.g("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C03"), C15000a.g("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C00"), C15000a.g("EE353FCA5428A9300D4ABA754A44C00FDFEC0C9AE4B1A1803075ED967B7BB73F"), C15000a.g("F1FD178C0B3AD58F10126DE8CE42435B53DC67E140D2BF941FFDD459C6D655E1"), BigInteger.valueOf(1L), true));
        }

        @Override
        public l b() {
            AbstractC13875e a10 = a();
            return new l(a10, C15000a.d(a10, "04B6B3D4C356C139EB31183D4749D423958C27D2DCAF98B70164C97A2DD98F5CFF6142E0F7C8B204911F9271F0F3ECEF8C2701C307E8E4C9E183115A1554062CFB"), a10.A(), a10.s(), null);
        }
    }

    static {
        f("FRP256v1", b.f103972a, f103968a);
    }

    public static n d(AbstractC13875e abstractC13875e, String str) {
        n nVar = new n(abstractC13875e, h.d(str));
        B.c(nVar.u());
        return nVar;
    }

    public static AbstractC13875e e(AbstractC13875e abstractC13875e) {
        return abstractC13875e;
    }

    public static void f(String str, C14549x c14549x, m mVar) {
        f103969b.put(w.l(str), c14549x);
        f103971d.put(c14549x, str);
        f103970c.put(c14549x, mVar);
    }

    public static BigInteger g(String str) {
        return new BigInteger(1, h.d(str));
    }

    public static l h(String str) {
        C14549x n10 = n(str);
        if (n10 == null) {
            return null;
        }
        return j(n10);
    }

    public static m i(String str) {
        C14549x n10 = n(str);
        if (n10 == null) {
            return null;
        }
        return k(n10);
    }

    public static l j(C14549x c14549x) {
        m k10 = k(c14549x);
        if (k10 == null) {
            return null;
        }
        return k10.d();
    }

    public static m k(C14549x c14549x) {
        return (m) f103970c.get(c14549x);
    }

    public static String l(C14549x c14549x) {
        return (String) f103971d.get(c14549x);
    }

    public static Enumeration m() {
        return f103971d.elements();
    }

    public static C14549x n(String str) {
        return (C14549x) f103969b.get(w.l(str));
    }
}
