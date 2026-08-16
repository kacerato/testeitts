package ki;

import bi.C3889a;
import java.util.Enumeration;
import java.util.Vector;
import oh.C14549x;
import oj.C14578a;
import ph.C15000a;

public class e {
    public static void a(Vector vector, Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            vector.addElement(enumeration.nextElement());
        }
    }

    public static l b(String str) {
        l h10 = i.h(str);
        if (h10 == null) {
            h10 = Zh.c.j(str);
        }
        if (h10 == null) {
            h10 = Sh.c.b(str);
        }
        if (h10 == null) {
            h10 = C3889a.h(str);
        }
        if (h10 == null) {
            h10 = C15000a.h(str);
        }
        if (h10 == null) {
            h10 = yh.b.i(str);
        }
        return h10 == null ? Fh.a.h(str) : h10;
    }

    public static m c(String str) {
        m i10 = i.i(str);
        if (i10 == null) {
            i10 = Zh.c.k(str);
        }
        if (i10 == null) {
            i10 = Sh.c.c(str);
        }
        if (i10 == null) {
            i10 = C3889a.i(str);
        }
        if (i10 == null) {
            i10 = C15000a.i(str);
        }
        if (i10 == null) {
            i10 = yh.b.h(str);
        }
        return i10 == null ? Fh.a.i(str) : i10;
    }

    public static l d(C14549x c14549x) {
        l j10 = i.j(c14549x);
        if (j10 == null) {
            j10 = Zh.c.l(c14549x);
        }
        if (j10 == null) {
            j10 = C3889a.j(c14549x);
        }
        if (j10 == null) {
            j10 = C15000a.j(c14549x);
        }
        if (j10 == null) {
            j10 = yh.b.k(c14549x);
        }
        return j10 == null ? Fh.a.j(c14549x) : j10;
    }

    public static m e(C14549x c14549x) {
        m k10 = i.k(c14549x);
        if (k10 == null) {
            k10 = Zh.c.m(c14549x);
        }
        if (k10 == null) {
            k10 = C3889a.k(c14549x);
        }
        if (k10 == null) {
            k10 = C15000a.k(c14549x);
        }
        if (k10 == null) {
            k10 = yh.b.j(c14549x);
        }
        return k10 == null ? Fh.a.k(c14549x) : k10;
    }

    public static String f(C14549x c14549x) {
        String l10 = i.l(c14549x);
        if (l10 == null) {
            l10 = Zh.c.n(c14549x);
        }
        if (l10 == null) {
            l10 = Sh.c.f(c14549x);
        }
        if (l10 == null) {
            l10 = C3889a.l(c14549x);
        }
        if (l10 == null) {
            l10 = C15000a.l(c14549x);
        }
        if (l10 == null) {
            l10 = yh.b.l(c14549x);
        }
        if (l10 == null) {
            l10 = Fh.a.l(c14549x);
        }
        return l10 == null ? Ji.a.n(c14549x) : l10;
    }

    public static Enumeration g() {
        Vector vector = new Vector();
        a(vector, i.m());
        a(vector, Zh.c.o());
        a(vector, Sh.c.g());
        a(vector, C3889a.m());
        a(vector, C15000a.m());
        a(vector, yh.b.m());
        a(vector, Fh.a.m());
        return vector.elements();
    }

    public static C14549x h(String str) {
        C14549x n10 = i.n(str);
        if (n10 == null) {
            n10 = Zh.c.p(str);
        }
        if (n10 == null) {
            n10 = Sh.c.h(str);
        }
        if (n10 == null) {
            n10 = C3889a.n(str);
        }
        if (n10 == null) {
            n10 = C15000a.n(str);
        }
        if (n10 == null) {
            n10 = yh.b.n(str);
        }
        if (n10 == null) {
            n10 = Fh.a.n(str);
        }
        return (n10 == null && str.equals("curve25519")) ? C14578a.f99070c : n10;
    }
}
