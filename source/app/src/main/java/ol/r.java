package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class r implements AlgorithmParameterSpec {

    public static final r f20423c;

    public static final r f20424d;

    public static final r f20425e;

    public static final r f20426f;

    public static final r f20427g;

    public static final r f20428h;

    public static Map f20429i;

    public final String f20430b;

    static {
        r rVar = new r(ll.h.f96578k);
        f20423c = rVar;
        r rVar2 = new r(ll.h.f96579l);
        f20424d = rVar2;
        r rVar3 = new r(ll.h.f96580m);
        f20425e = rVar3;
        r rVar4 = new r(ll.h.f96581n);
        f20426f = rVar4;
        r rVar5 = new r(ll.h.f96582o);
        f20427g = rVar5;
        r rVar6 = new r(ll.h.f96583p);
        f20428h = rVar6;
        HashMap hashMap = new HashMap();
        f20429i = hashMap;
        hashMap.put("rainbow-iii-classic", rVar);
        f20429i.put("rainbow-iii-circumzenithal", rVar2);
        f20429i.put("rainbow-iii-compressed", rVar3);
        f20429i.put("rainbow-v-classic", rVar4);
        f20429i.put("rainbow-v-circumzenithal", rVar5);
        f20429i.put("rainbow-v-compressed", rVar6);
    }

    public r(ll.h hVar) {
        this.f20430b = org.bouncycastle.util.w.p(hVar.g());
    }

    public static r a(String str) {
        return (r) f20429i.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20430b;
    }
}
