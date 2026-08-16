package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class t implements AlgorithmParameterSpec {

    public static final t f20442c;

    public static final t f20443d;

    public static final t f20444e;

    public static final t f20445f;

    public static final t f20446g;

    public static final t f20447h;

    public static Map f20448i;

    public final String f20449b;

    static {
        t tVar = new t(jl.n.f93991k);
        f20442c = tVar;
        t tVar2 = new t(jl.n.f93992l);
        f20443d = tVar2;
        t tVar3 = new t(jl.n.f93993m);
        f20444e = tVar3;
        t tVar4 = new t(jl.n.f93994n);
        f20445f = tVar4;
        t tVar5 = new t(jl.n.f93995o);
        f20446g = tVar5;
        t tVar6 = new t(jl.n.f93996p);
        f20447h = tVar6;
        HashMap hashMap = new HashMap();
        f20448i = hashMap;
        hashMap.put("sntrup653", tVar);
        f20448i.put("sntrup761", tVar2);
        f20448i.put("sntrup857", tVar3);
        f20448i.put("sntrup953", tVar4);
        f20448i.put("sntrup1013", tVar5);
        f20448i.put("sntrup1277", tVar6);
    }

    public t(jl.n nVar) {
        this.f20449b = nVar.a();
    }

    public static t a(String str) {
        return (t) f20448i.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20449b;
    }
}
