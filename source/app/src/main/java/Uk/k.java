package Uk;

import Xh.t;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import yh.InterfaceC16192a;

public class k {

    public static final Map f26291a;

    static {
        HashMap hashMap = new HashMap();
        f26291a = hashMap;
        hashMap.put(t.f29144w1, "PBKDF2withHMACSHA1");
        hashMap.put(t.f29152z1, "PBKDF2withHMACSHA256");
        hashMap.put(t.f29003B1, "PBKDF2withHMACSHA512");
        hashMap.put(t.f29147x1, "PBKDF2withHMACSHA224");
        hashMap.put(t.f29000A1, "PBKDF2withHMACSHA384");
        hashMap.put(Sh.d.f23361o, "PBKDF2withHMACSHA3-224");
        hashMap.put(Sh.d.f23363p, "PBKDF2withHMACSHA3-256");
        hashMap.put(Sh.d.f23365q, "PBKDF2withHMACSHA3-384");
        hashMap.put(Sh.d.f23366r, "PBKDF2withHMACSHA3-512");
        hashMap.put(InterfaceC16192a.f130271c, "PBKDF2withHMACGOST3411");
    }

    public static String a(C14549x c14549x) {
        Map map = f26291a;
        if (map.containsKey(c14549x)) {
            return (String) map.get(c14549x);
        }
        throw new IllegalStateException("no prf for algorithm: " + ((Object) c14549x));
    }
}
