package ql;

import Bi.InterfaceC2392y;
import Ii.Q;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;

public class C15128f {

    public static Map<String, C14549x> f108342a = new HashMap();

    public static Map<C14549x, String> f108343b = new HashMap();

    static {
        Map<String, C14549x> map = f108342a;
        C14549x c14549x = Sh.d.f23337c;
        map.put("SHA-256", c14549x);
        Map<String, C14549x> map2 = f108342a;
        C14549x c14549x2 = Sh.d.f23341e;
        map2.put("SHA-512", c14549x2);
        Map<String, C14549x> map3 = f108342a;
        C14549x c14549x3 = Sh.d.f23357m;
        map3.put("SHAKE128", c14549x3);
        Map<String, C14549x> map4 = f108342a;
        C14549x c14549x4 = Sh.d.f23359n;
        map4.put("SHAKE256", c14549x4);
        f108343b.put(c14549x, "SHA-256");
        f108343b.put(c14549x2, "SHA-512");
        f108343b.put(c14549x3, "SHAKE128");
        f108343b.put(c14549x4, "SHAKE256");
    }

    public static InterfaceC2392y a(C14549x c14549x) {
        if (c14549x.A(Sh.d.f23337c)) {
            return new Ii.L();
        }
        if (c14549x.A(Sh.d.f23341e)) {
            return new Ii.O();
        }
        if (c14549x.A(Sh.d.f23357m)) {
            return new Q(128);
        }
        if (c14549x.A(Sh.d.f23359n)) {
            return new Q(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ((Object) c14549x));
    }

    public static String b(C14549x c14549x) {
        String str = f108343b.get(c14549x);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unrecognized digest oid: " + ((Object) c14549x));
    }

    public static C14549x c(String str) {
        C14549x c14549x = f108342a.get(str);
        if (c14549x != null) {
            return c14549x;
        }
        throw new IllegalArgumentException("unrecognized digest name: " + str);
    }
}
