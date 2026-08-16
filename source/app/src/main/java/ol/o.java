package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class o implements AlgorithmParameterSpec {

    public static final o f20398c;

    public static final o f20399d;

    public static final o f20400e;

    public static final o f20401f;

    public static final o f20402g;

    public static final o f20403h;

    public static Map f20404i;

    public final String f20405b;

    static {
        o oVar = new o(il.g.f92405d);
        f20398c = oVar;
        o oVar2 = new o(il.g.f92406e);
        f20399d = oVar2;
        o oVar3 = new o(il.g.f92407f);
        f20400e = oVar3;
        o oVar4 = new o(il.g.f92408g);
        f20401f = oVar4;
        o oVar5 = new o(il.g.f92409h);
        f20402g = oVar5;
        o oVar6 = new o(il.g.f92410i);
        f20403h = oVar6;
        HashMap hashMap = new HashMap();
        f20404i = hashMap;
        hashMap.put("ntruhps2048509", oVar);
        f20404i.put("ntruhps2048677", oVar2);
        f20404i.put("ntruhps4096821", oVar3);
        f20404i.put("ntruhps40961229", oVar4);
        f20404i.put("ntruhrss701", oVar5);
        f20404i.put("ntruhrss1373", oVar6);
    }

    public o(il.g gVar) {
        this.f20405b = gVar.a();
    }

    public static o a(String str) {
        return (o) f20404i.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20405b;
    }
}
