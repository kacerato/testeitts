package org.bouncycastle.crypto.util;

import Xi.G;
import Xi.K;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import jk.AbstractC13875e;
import oh.C14549x;

public class u {

    public static final Map<String, C14549x> f101101b = Collections.unmodifiableMap(new a());

    public static final Map<String, String> f101102c = Collections.unmodifiableMap(new b());

    public static HashMap<AbstractC13875e, String> f101103d = new c();

    public static final Map<C14549x, String> f101100a = Collections.unmodifiableMap(new d());

    public class a extends HashMap<String, C14549x> {
        public a() {
            put("nistp256", Zh.d.f31273H);
            put("nistp384", Zh.d.f31266A);
            put("nistp521", Zh.d.f31267B);
            put("nistk163", Zh.d.f31292b);
            put("nistp192", Zh.d.f31272G);
            put("nistp224", Zh.d.f31316z);
            put("nistk233", Zh.d.f31309s);
            put("nistb233", Zh.d.f31310t);
            put("nistk283", Zh.d.f31303m);
            put("nistk409", Zh.d.f31268C);
            put("nistb409", Zh.d.f31269D);
            put("nistt571", Zh.d.f31270E);
        }
    }

    public class b extends HashMap<String, String> {
        public b() {
            String[][] strArr = {new String[]{"secp256r1", "nistp256"}, new String[]{"secp384r1", "nistp384"}, new String[]{"secp521r1", "nistp521"}, new String[]{"sect163k1", "nistk163"}, new String[]{"secp192r1", "nistp192"}, new String[]{"secp224r1", "nistp224"}, new String[]{"sect233k1", "nistk233"}, new String[]{"sect233r1", "nistb233"}, new String[]{"sect283k1", "nistk283"}, new String[]{"sect409k1", "nistk409"}, new String[]{"sect409r1", "nistb409"}, new String[]{"sect571k1", "nistt571"}};
            for (int i10 = 0; i10 != 12; i10++) {
                String[] strArr2 = strArr[i10];
                put(strArr2[0], strArr2[1]);
            }
        }
    }

    public class c extends HashMap<AbstractC13875e, String> {
        public c() {
            Enumeration o10 = Ji.a.o();
            while (o10.hasMoreElements()) {
                String str = (String) o10.nextElement();
                put(Ji.a.k(str).c(), str);
            }
        }
    }

    public class d extends HashMap<C14549x, String> {
        public d() {
            for (String str : u.f101101b.o()) {
                put((C14549x) u.f101101b.get(str), str);
            }
        }
    }

    public static C14549x b(String str) {
        return f101101b.get(str);
    }

    public static String c(C14549x c14549x) {
        return f101100a.get(c14549x);
    }

    public static String d(G g10) {
        return g10 instanceof K ? c(((K) g10).j()) : e(g10.a());
    }

    public static String e(AbstractC13875e abstractC13875e) {
        return f101102c.get(f101103d.get(abstractC13875e));
    }

    public static ki.l f(String str) {
        return Sh.c.d(f101101b.get(org.bouncycastle.util.w.l(str)));
    }

    public static ki.l g(C14549x c14549x) {
        return Sh.c.d(c14549x);
    }
}
