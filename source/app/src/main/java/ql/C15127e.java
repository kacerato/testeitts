package ql;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class C15127e implements G {

    public static final Map<String, C15127e> f108339c;

    public final int f108340a;

    public final String f108341b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(b("SHA-256", 32, 16, 67, 10), new C15127e(1, "XMSS_SHA2_10_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 16), new C15127e(2, "XMSS_SHA2_16_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 20), new C15127e(3, "XMSS_SHA2_20_256"));
        hashMap.put(b("SHA-512", 64, 16, 131, 10), new C15127e(4, "XMSS_SHA2_10_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 16), new C15127e(5, "XMSS_SHA2_16_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 20), new C15127e(6, "XMSS_SHA2_20_512"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 10), new C15127e(7, "XMSS_SHAKE_10_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 16), new C15127e(8, "XMSS_SHAKE_16_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 20), new C15127e(9, "XMSS_SHAKE_20_256"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 10), new C15127e(10, "XMSS_SHAKE_10_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 16), new C15127e(11, "XMSS_SHAKE_16_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 20), new C15127e(12, "XMSS_SHAKE_20_512"));
        f108339c = Collections.unmodifiableMap(hashMap);
    }

    public C15127e(int i10, String str) {
        this.f108340a = i10;
        this.f108341b = str;
    }

    public static String b(String str, int i10, int i11, int i12, int i13) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i10 + "-" + i11 + "-" + i12 + "-" + i13;
    }

    public static C15127e c(String str, int i10, int i11, int i12, int i13) {
        if (str != null) {
            return f108339c.get(b(str, i10, i11, i12, i13));
        }
        throw new NullPointerException("algorithmName == null");
    }

    @Override
    public int a() {
        return this.f108340a;
    }

    @Override
    public String toString() {
        return this.f108341b;
    }
}
