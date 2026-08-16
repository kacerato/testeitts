package bj;

import Bi.InterfaceC2392y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import nl.C14464h;

public class t {

    public static final Map<String, Integer> f33371a;

    public static final int f33372b = 188;

    public static final int f33373c = 12748;

    public static final int f33374d = 13004;

    public static final int f33375e = 13260;

    public static final int f33376f = 13516;

    public static final int f33377g = 13772;

    public static final int f33378h = 14028;

    public static final int f33379i = 14284;

    public static final int f33380j = 14540;

    public static final int f33381k = 14796;

    public static final int f33382l = 15052;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("RIPEMD128", org.bouncycastle.util.k.j(13004));
        hashMap.put("RIPEMD160", org.bouncycastle.util.k.j(12748));
        hashMap.put("SHA-1", org.bouncycastle.util.k.j(13260));
        hashMap.put("SHA-224", org.bouncycastle.util.k.j(14540));
        hashMap.put("SHA-256", org.bouncycastle.util.k.j(13516));
        hashMap.put("SHA-384", org.bouncycastle.util.k.j(14028));
        hashMap.put("SHA-512", org.bouncycastle.util.k.j(13772));
        hashMap.put("SHA-512/224", org.bouncycastle.util.k.j(f33381k));
        hashMap.put(C14464h.f98323d, org.bouncycastle.util.k.j(f33382l));
        hashMap.put("Whirlpool", org.bouncycastle.util.k.j(14284));
        f33371a = Collections.unmodifiableMap(hashMap);
    }

    public static Integer a(InterfaceC2392y interfaceC2392y) {
        return f33371a.get(interfaceC2392y.b());
    }

    public static boolean b(InterfaceC2392y interfaceC2392y) {
        return !f33371a.containsKey(interfaceC2392y.b());
    }
}
