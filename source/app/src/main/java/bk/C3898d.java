package bk;

import Bi.InterfaceC2392y;
import Xh.t;
import android.security.keystore.KeyProperties;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import oh.C14549x;
import org.bouncycastle.crypto.util.g;
import org.bouncycastle.util.w;

public class C3898d {

    public static Set f33419a = new HashSet();

    public static Set f33420b = new HashSet();

    public static Set f33421c = new HashSet();

    public static Set f33422d = new HashSet();

    public static Set f33423e = new HashSet();

    public static Set f33424f = new HashSet();

    public static Set f33425g = new HashSet();

    public static Set f33426h = new HashSet();

    public static Set f33427i = new HashSet();

    public static Set f33428j = new HashSet();

    public static Set f33429k = new HashSet();

    public static Set f33430l = new HashSet();

    public static Set f33431m = new HashSet();

    public static Set f33432n = new HashSet();

    public static Map f33433o = new HashMap();

    static {
        f33419a.add(KeyProperties.DIGEST_MD5);
        Set set = f33419a;
        C14549x c14549x = t.f29141u1;
        set.add(c14549x.J());
        f33420b.add("SHA1");
        f33420b.add("SHA-1");
        Set set2 = f33420b;
        C14549x c14549x2 = Bj.b.f1911i;
        set2.add(c14549x2.J());
        f33421c.add("SHA224");
        f33421c.add("SHA-224");
        Set set3 = f33421c;
        C14549x c14549x3 = Sh.d.f23343f;
        set3.add(c14549x3.J());
        f33422d.add("SHA256");
        f33422d.add("SHA-256");
        Set set4 = f33422d;
        C14549x c14549x4 = Sh.d.f23337c;
        set4.add(c14549x4.J());
        f33423e.add("SHA384");
        f33423e.add("SHA-384");
        Set set5 = f33423e;
        C14549x c14549x5 = Sh.d.f23339d;
        set5.add(c14549x5.J());
        f33424f.add("SHA512");
        f33424f.add("SHA-512");
        Set set6 = f33424f;
        C14549x c14549x6 = Sh.d.f23341e;
        set6.add(c14549x6.J());
        f33425g.add("SHA512(224)");
        f33425g.add("SHA-512(224)");
        Set set7 = f33425g;
        C14549x c14549x7 = Sh.d.f23345g;
        set7.add(c14549x7.J());
        f33426h.add("SHA512(256)");
        f33426h.add("SHA-512(256)");
        Set set8 = f33426h;
        C14549x c14549x8 = Sh.d.f23347h;
        set8.add(c14549x8.J());
        f33427i.add("SHA3-224");
        Set set9 = f33427i;
        C14549x c14549x9 = Sh.d.f23349i;
        set9.add(c14549x9.J());
        f33428j.add("SHA3-256");
        Set set10 = f33428j;
        C14549x c14549x10 = Sh.d.f23351j;
        set10.add(c14549x10.J());
        f33429k.add("SHA3-384");
        Set set11 = f33429k;
        C14549x c14549x11 = Sh.d.f23353k;
        set11.add(c14549x11.J());
        f33430l.add("SHA3-512");
        Set set12 = f33430l;
        C14549x c14549x12 = Sh.d.f23355l;
        set12.add(c14549x12.J());
        f33431m.add("SHAKE128");
        Set set13 = f33431m;
        C14549x c14549x13 = Sh.d.f23357m;
        set13.add(c14549x13.J());
        f33432n.add("SHAKE256");
        Set set14 = f33432n;
        C14549x c14549x14 = Sh.d.f23359n;
        set14.add(c14549x14.J());
        f33433o.put(KeyProperties.DIGEST_MD5, c14549x);
        f33433o.put(c14549x.J(), c14549x);
        f33433o.put("SHA1", c14549x2);
        f33433o.put("SHA-1", c14549x2);
        f33433o.put(c14549x2.J(), c14549x2);
        f33433o.put("SHA224", c14549x3);
        f33433o.put("SHA-224", c14549x3);
        f33433o.put(c14549x3.J(), c14549x3);
        f33433o.put("SHA256", c14549x4);
        f33433o.put("SHA-256", c14549x4);
        f33433o.put(c14549x4.J(), c14549x4);
        f33433o.put("SHA384", c14549x5);
        f33433o.put("SHA-384", c14549x5);
        f33433o.put(c14549x5.J(), c14549x5);
        f33433o.put("SHA512", c14549x6);
        f33433o.put("SHA-512", c14549x6);
        f33433o.put(c14549x6.J(), c14549x6);
        f33433o.put("SHA512(224)", c14549x7);
        f33433o.put("SHA-512(224)", c14549x7);
        f33433o.put(c14549x7.J(), c14549x7);
        f33433o.put("SHA512(256)", c14549x8);
        f33433o.put("SHA-512(256)", c14549x8);
        f33433o.put(c14549x8.J(), c14549x8);
        f33433o.put("SHA3-224", c14549x9);
        f33433o.put(c14549x9.J(), c14549x9);
        f33433o.put("SHA3-256", c14549x10);
        f33433o.put(c14549x10.J(), c14549x10);
        f33433o.put("SHA3-384", c14549x11);
        f33433o.put(c14549x11.J(), c14549x11);
        f33433o.put("SHA3-512", c14549x12);
        f33433o.put(c14549x12.J(), c14549x12);
        f33433o.put("SHAKE128", c14549x13);
        f33433o.put(c14549x13.J(), c14549x13);
        f33433o.put("SHAKE256", c14549x14);
        f33433o.put(c14549x14.J(), c14549x14);
    }

    public static InterfaceC2392y a(String str) {
        String p10 = w.p(str);
        if (f33420b.contains(p10)) {
            return g.d();
        }
        if (f33419a.contains(p10)) {
            return g.b();
        }
        if (f33421c.contains(p10)) {
            return g.f();
        }
        if (f33422d.contains(p10)) {
            return g.h();
        }
        if (f33423e.contains(p10)) {
            return g.j();
        }
        if (f33424f.contains(p10)) {
            return g.t();
        }
        if (f33425g.contains(p10)) {
            return g.v();
        }
        if (f33426h.contains(p10)) {
            return g.x();
        }
        if (f33427i.contains(p10)) {
            return g.l();
        }
        if (f33428j.contains(p10)) {
            return g.n();
        }
        if (f33429k.contains(p10)) {
            return g.p();
        }
        if (f33430l.contains(p10)) {
            return g.r();
        }
        if (f33431m.contains(p10)) {
            return g.z();
        }
        if (f33432n.contains(p10)) {
            return g.A();
        }
        return null;
    }

    public static C14549x b(String str) {
        return (C14549x) f33433o.get(str);
    }

    public static boolean c(String str, String str2) {
        return (f33420b.contains(str) && f33420b.contains(str2)) || (f33421c.contains(str) && f33421c.contains(str2)) || ((f33422d.contains(str) && f33422d.contains(str2)) || ((f33423e.contains(str) && f33423e.contains(str2)) || ((f33424f.contains(str) && f33424f.contains(str2)) || ((f33425g.contains(str) && f33425g.contains(str2)) || ((f33426h.contains(str) && f33426h.contains(str2)) || ((f33427i.contains(str) && f33427i.contains(str2)) || ((f33428j.contains(str) && f33428j.contains(str2)) || ((f33429k.contains(str) && f33429k.contains(str2)) || ((f33430l.contains(str) && f33430l.contains(str2)) || (f33419a.contains(str) && f33419a.contains(str2)))))))))));
    }
}
