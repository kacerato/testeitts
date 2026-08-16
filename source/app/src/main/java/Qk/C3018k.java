package Qk;

import hi.C13486b;
import java.util.HashMap;
import java.util.Map;
import oh.A0;
import oh.C14549x;

public class C3018k implements z {

    public static Map f22472a;

    static {
        HashMap hashMap = new HashMap();
        f22472a = hashMap;
        hashMap.put("HMACSHA1", new C13486b(Wh.b.f27785i));
        Map map = f22472a;
        C14549x c14549x = Xh.t.f29147x1;
        A0 a02 = A0.f98776c;
        map.put("HMACSHA224", new C13486b(c14549x, a02));
        f22472a.put("HMACSHA256", new C13486b(Xh.t.f29152z1, a02));
        f22472a.put("HMACSHA384", new C13486b(Xh.t.f29000A1, a02));
        f22472a.put("HMACSHA512", new C13486b(Xh.t.f29003B1, a02));
        f22472a.put("HMACSHA512-224", new C13486b(Xh.t.f29006C1, a02));
        f22472a.put("HMACSHA512-256", new C13486b(Xh.t.f29009D1, a02));
        f22472a.put("HMACSHA3-224", new C13486b(Sh.d.f23361o));
        f22472a.put("HMACSHA3-256", new C13486b(Sh.d.f23363p));
        f22472a.put("HMACSHA3-384", new C13486b(Sh.d.f23365q));
        f22472a.put("HMACSHA3-512", new C13486b(Sh.d.f23366r));
    }

    @Override
    public C13486b a(String str) {
        return (C13486b) f22472a.get(org.bouncycastle.util.w.p(str));
    }
}
