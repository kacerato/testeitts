package bk;

import Xh.t;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import org.bouncycastle.util.k;

public class C3899e {

    public static Map f33434a;

    static {
        HashMap hashMap = new HashMap();
        f33434a = hashMap;
        hashMap.put(t.f29123n1.J(), k.j(192));
        f33434a.put(Sh.d.f23373y, k.j(128));
        f33434a.put(Sh.d.f23314H, k.j(192));
        f33434a.put(Sh.d.f23323Q, k.j(256));
        f33434a.put(Aj.a.f827a, k.j(128));
        f33434a.put(Aj.a.f828b, k.j(192));
        f33434a.put(Aj.a.f829c, k.j(256));
    }

    public static int a(C14549x c14549x) {
        Integer num = (Integer) f33434a.get(c14549x);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
