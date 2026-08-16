package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class g implements AlgorithmParameterSpec {

    public static final g f20359c;

    public static final g f20360d;

    public static final g f20361e;

    public static Map f20362f;

    public final String f20363b;

    static {
        g gVar = new g(cl.i.f35008f);
        f20359c = gVar;
        g gVar2 = new g(cl.i.f35009g);
        f20360d = gVar2;
        g gVar3 = new g(cl.i.f35010h);
        f20361e = gVar3;
        HashMap hashMap = new HashMap();
        f20362f = hashMap;
        hashMap.put("kyber512", gVar);
        f20362f.put("kyber768", gVar2);
        f20362f.put("kyber1024", gVar3);
    }

    public g(cl.i iVar) {
        this.f20363b = org.bouncycastle.util.w.p(iVar.b());
    }

    public static g a(String str) {
        return (g) f20362f.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20363b;
    }
}
