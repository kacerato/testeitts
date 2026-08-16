package Sk;

import Xh.t;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import yh.InterfaceC16192a;

public class p {

    public static final Map f23631a;

    static {
        HashMap hashMap = new HashMap();
        f23631a = hashMap;
        hashMap.put(t.f29144w1, org.bouncycastle.util.k.j(20));
        hashMap.put(t.f29152z1, org.bouncycastle.util.k.j(32));
        hashMap.put(t.f29003B1, org.bouncycastle.util.k.j(64));
        hashMap.put(t.f29147x1, org.bouncycastle.util.k.j(28));
        hashMap.put(t.f29000A1, org.bouncycastle.util.k.j(48));
        hashMap.put(Sh.d.f23361o, org.bouncycastle.util.k.j(28));
        hashMap.put(Sh.d.f23363p, org.bouncycastle.util.k.j(32));
        hashMap.put(Sh.d.f23365q, org.bouncycastle.util.k.j(48));
        hashMap.put(Sh.d.f23366r, org.bouncycastle.util.k.j(64));
        hashMap.put(InterfaceC16192a.f130271c, org.bouncycastle.util.k.j(32));
    }

    public static int a(C14549x c14549x) {
        Map map = f23631a;
        if (map.containsKey(c14549x)) {
            return ((Integer) map.get(c14549x)).intValue();
        }
        throw new IllegalStateException("no salt size for algorithm: " + ((Object) c14549x));
    }
}
