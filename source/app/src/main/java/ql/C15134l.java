package ql;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.compiler.IProblem;

public final class C15134l implements G {

    public static final Map<String, C15134l> f108371c;

    public final int f108372a;

    public final String f108373b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(b("SHA-256", 32, 16, 67), new C15134l(IProblem.ObjectHasNoSuperclass, "WOTSP_SHA2-256_W16"));
        hashMap.put(b("SHA-512", 64, 16, 131), new C15134l(33554434, "WOTSP_SHA2-512_W16"));
        hashMap.put(b("SHAKE128", 32, 16, 67), new C15134l(50331651, "WOTSP_SHAKE128_W16"));
        hashMap.put(b("SHAKE256", 64, 16, 131), new C15134l(67108868, "WOTSP_SHAKE256_W16"));
        f108371c = Collections.unmodifiableMap(hashMap);
    }

    public C15134l(int i10, String str) {
        this.f108372a = i10;
        this.f108373b = str;
    }

    public static String b(String str, int i10, int i11, int i12) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i10 + "-" + i11 + "-" + i12;
    }

    public static C15134l c(String str, int i10, int i11, int i12) {
        if (str != null) {
            return f108371c.get(b(str, i10, i11, i12));
        }
        throw new NullPointerException("algorithmName == null");
    }

    @Override
    public int a() {
        return this.f108372a;
    }

    @Override
    public String toString() {
        return this.f108373b;
    }
}
