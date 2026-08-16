package Qk;

import hi.C13486b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import yh.InterfaceC16192a;

public class C3019l implements I {

    public static final I f22473a = new C3019l();

    public static final Map f22474b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(new C14549x("1.2.840.113533.7.66.10"), org.bouncycastle.util.k.j(128));
        hashMap.put(Xh.t.f29123n1, org.bouncycastle.util.k.j(192));
        hashMap.put(Xh.t.f29020I2, org.bouncycastle.util.k.j(192));
        hashMap.put(Xh.t.f29099f1, org.bouncycastle.util.k.j(64));
        hashMap.put(Xh.t.f29091d1, org.bouncycastle.util.k.j(64));
        hashMap.put(Sh.d.f23373y, org.bouncycastle.util.k.j(128));
        hashMap.put(Sh.d.f23314H, org.bouncycastle.util.k.j(192));
        hashMap.put(Sh.d.f23323Q, org.bouncycastle.util.k.j(256));
        hashMap.put(Sh.d.f23309C, org.bouncycastle.util.k.j(128));
        hashMap.put(Sh.d.f23318L, org.bouncycastle.util.k.j(192));
        hashMap.put(Sh.d.f23327U, org.bouncycastle.util.k.j(256));
        hashMap.put(Sh.d.f23310D, org.bouncycastle.util.k.j(128));
        hashMap.put(Sh.d.f23319M, org.bouncycastle.util.k.j(192));
        hashMap.put(Sh.d.f23328V, org.bouncycastle.util.k.j(256));
        hashMap.put(Sh.d.f23308B, org.bouncycastle.util.k.j(128));
        hashMap.put(Sh.d.f23317K, org.bouncycastle.util.k.j(192));
        hashMap.put(Sh.d.f23326T, org.bouncycastle.util.k.j(256));
        hashMap.put(Sh.d.f23311E, org.bouncycastle.util.k.j(128));
        hashMap.put(Sh.d.f23320N, org.bouncycastle.util.k.j(192));
        hashMap.put(Sh.d.f23329W, org.bouncycastle.util.k.j(256));
        hashMap.put(Uh.a.f26182a, org.bouncycastle.util.k.j(128));
        hashMap.put(Uh.a.f26183b, org.bouncycastle.util.k.j(192));
        hashMap.put(Uh.a.f26184c, org.bouncycastle.util.k.j(256));
        hashMap.put(Uh.a.f26185d, org.bouncycastle.util.k.j(128));
        hashMap.put(Uh.a.f26186e, org.bouncycastle.util.k.j(192));
        hashMap.put(Uh.a.f26187f, org.bouncycastle.util.k.j(256));
        hashMap.put(Oh.a.f20091a, org.bouncycastle.util.k.j(128));
        hashMap.put(Wh.b.f27781e, org.bouncycastle.util.k.j(64));
        hashMap.put(InterfaceC16192a.f130274f, org.bouncycastle.util.k.j(256));
        f22474b = Collections.unmodifiableMap(hashMap);
    }

    @Override
    public int a(C13486b c13486b) {
        int b10 = b(c13486b.u());
        if (b10 > 0) {
            return b10;
        }
        return -1;
    }

    @Override
    public int b(C14549x c14549x) {
        Integer num = (Integer) f22474b.get(c14549x);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
