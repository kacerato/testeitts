package Ol;

import bl.C3904e;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class c implements AlgorithmParameterSpec {

    public static final c f20337c;

    public static final c f20338d;

    public static final c f20339e;

    public static Map f20340f;

    public final String f20341b;

    static {
        c cVar = new c(C3904e.f33472d);
        f20337c = cVar;
        c cVar2 = new c(C3904e.f33473e);
        f20338d = cVar2;
        c cVar3 = new c(C3904e.f33474f);
        f20339e = cVar3;
        HashMap hashMap = new HashMap();
        f20340f = hashMap;
        hashMap.put("dilithium2", cVar);
        f20340f.put("dilithium3", cVar2);
        f20340f.put("dilithium5", cVar3);
    }

    public c(C3904e c3904e) {
        this.f20341b = org.bouncycastle.util.w.p(c3904e.b());
    }

    public static c a(String str) {
        return (c) f20340f.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20341b;
    }
}
