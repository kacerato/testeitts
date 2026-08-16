package Ol;

import dl.C12963m;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class d implements AlgorithmParameterSpec {

    public static final d f20342c;

    public static final d f20343d;

    public static Map f20344e;

    public final String f20345b;

    static {
        d dVar = new d(C12963m.f84812e);
        f20342c = dVar;
        d dVar2 = new d(C12963m.f84813f);
        f20343d = dVar2;
        HashMap hashMap = new HashMap();
        f20344e = hashMap;
        hashMap.put("falcon-512", dVar);
        f20344e.put("falcon-1024", dVar2);
    }

    public d(C12963m c12963m) {
        this.f20345b = org.bouncycastle.util.w.p(c12963m.b());
    }

    public static d a(String str) {
        return (d) f20344e.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20345b;
    }
}
