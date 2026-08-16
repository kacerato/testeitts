package ql;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class C15126d implements G {

    public static final Map<String, C15126d> f108336c;

    public final int f108337a;

    public final String f108338b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(b("SHA-256", 32, 16, 67, 20, 2), new C15126d(1, "XMSSMT_SHA2_20/2_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 20, 4), new C15126d(2, "XMSSMT_SHA2_20/4_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 40, 2), new C15126d(3, "XMSSMT_SHA2_40/2_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 40, 4), new C15126d(4, "XMSSMT_SHA2_40/4_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 40, 8), new C15126d(5, "XMSSMT_SHA2_40/8_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 60, 3), new C15126d(6, "XMSSMT_SHA2_60/3_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 60, 6), new C15126d(7, "XMSSMT_SHA2_60/6_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 60, 12), new C15126d(8, "XMSSMT_SHA2_60/12_256"));
        hashMap.put(b("SHA-512", 64, 16, 131, 20, 2), new C15126d(9, "XMSSMT_SHA2_20/2_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 20, 4), new C15126d(10, "XMSSMT_SHA2_20/4_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 40, 2), new C15126d(11, "XMSSMT_SHA2_40/2_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 40, 4), new C15126d(12, "XMSSMT_SHA2_40/4_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 40, 8), new C15126d(13, "XMSSMT_SHA2_40/8_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 60, 3), new C15126d(14, "XMSSMT_SHA2_60/3_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 60, 6), new C15126d(15, "XMSSMT_SHA2_60/6_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 60, 12), new C15126d(16, "XMSSMT_SHA2_60/12_512"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 20, 2), new C15126d(17, "XMSSMT_SHAKE_20/2_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 20, 4), new C15126d(18, "XMSSMT_SHAKE_20/4_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 40, 2), new C15126d(19, "XMSSMT_SHAKE_40/2_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 40, 4), new C15126d(20, "XMSSMT_SHAKE_40/4_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 40, 8), new C15126d(21, "XMSSMT_SHAKE_40/8_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 60, 3), new C15126d(22, "XMSSMT_SHAKE_60/3_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 60, 6), new C15126d(23, "XMSSMT_SHAKE_60/6_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 60, 12), new C15126d(24, "XMSSMT_SHAKE_60/12_256"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 20, 2), new C15126d(25, "XMSSMT_SHAKE_20/2_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 20, 4), new C15126d(26, "XMSSMT_SHAKE_20/4_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 40, 2), new C15126d(27, "XMSSMT_SHAKE_40/2_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 40, 4), new C15126d(28, "XMSSMT_SHAKE_40/4_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 40, 8), new C15126d(29, "XMSSMT_SHAKE_40/8_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 60, 3), new C15126d(30, "XMSSMT_SHAKE_60/3_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 60, 6), new C15126d(31, "XMSSMT_SHAKE_60/6_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 60, 12), new C15126d(32, "XMSSMT_SHAKE_60/12_512"));
        f108336c = Collections.unmodifiableMap(hashMap);
    }

    public C15126d(int i10, String str) {
        this.f108337a = i10;
        this.f108338b = str;
    }

    public static String b(String str, int i10, int i11, int i12, int i13, int i14) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i10 + "-" + i11 + "-" + i12 + "-" + i13 + "-" + i14;
    }

    public static C15126d c(String str, int i10, int i11, int i12, int i13, int i14) {
        if (str != null) {
            return f108336c.get(b(str, i10, i11, i12, i13, i14));
        }
        throw new NullPointerException("algorithmName == null");
    }

    @Override
    public int a() {
        return this.f108337a;
    }

    @Override
    public String toString() {
        return this.f108338b;
    }
}
