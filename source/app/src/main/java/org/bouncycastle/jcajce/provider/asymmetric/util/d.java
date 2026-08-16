package org.bouncycastle.jcajce.provider.asymmetric.util;

import Xh.t;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.util.w;

public class d {

    public static final Set<String> f101328a;

    static {
        HashSet hashSet = new HashSet();
        f101328a = hashSet;
        hashSet.add("DES");
        hashSet.add("DESEDE");
        hashSet.add(Bj.b.f1907e.J());
        hashSet.add(t.f29123n1.J());
        hashSet.add(t.f29020I2.J());
    }

    public static boolean a(String str) {
        return f101328a.contains(w.p(str));
    }

    public static void b(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            bArr[i10] = (byte) (((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) & 1) | (b10 & em.l.f85913l));
        }
    }
}
