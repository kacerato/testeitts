package Sh;

import java.util.Enumeration;
import java.util.Hashtable;
import ki.l;
import ki.m;
import oh.C14549x;
import org.bouncycastle.util.w;

public class c {

    public static final Hashtable f23305a = new Hashtable();

    public static final Hashtable f23306b = new Hashtable();

    static {
        a("B-571", Zh.d.f31271F);
        a("B-409", Zh.d.f31269D);
        a("B-283", Zh.d.f31304n);
        a("B-233", Zh.d.f31310t);
        a("B-163", Zh.d.f31302l);
        a("K-571", Zh.d.f31270E);
        a("K-409", Zh.d.f31268C);
        a("K-283", Zh.d.f31303m);
        a("K-233", Zh.d.f31309s);
        a("K-163", Zh.d.f31292b);
        a("P-521", Zh.d.f31267B);
        a("P-384", Zh.d.f31266A);
        a("P-256", Zh.d.f31273H);
        a("P-224", Zh.d.f31316z);
        a("P-192", Zh.d.f31272G);
    }

    public static void a(String str, C14549x c14549x) {
        f23305a.put(str, c14549x);
        f23306b.put(c14549x, str);
    }

    public static l b(String str) {
        C14549x h10 = h(str);
        if (h10 != null) {
            return Zh.c.l(h10);
        }
        return null;
    }

    public static m c(String str) {
        C14549x h10 = h(str);
        if (h10 != null) {
            return Zh.c.m(h10);
        }
        return null;
    }

    public static l d(C14549x c14549x) {
        if (f23306b.containsKey(c14549x)) {
            return Zh.c.l(c14549x);
        }
        return null;
    }

    public static m e(C14549x c14549x) {
        if (f23306b.containsKey(c14549x)) {
            return Zh.c.m(c14549x);
        }
        return null;
    }

    public static String f(C14549x c14549x) {
        return (String) f23306b.get(c14549x);
    }

    public static Enumeration g() {
        return f23305a.keys();
    }

    public static C14549x h(String str) {
        return (C14549x) f23305a.get(w.p(str));
    }
}
