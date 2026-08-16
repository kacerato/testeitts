package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class p implements AlgorithmParameterSpec {

    public static final p f20406c;

    public static final p f20407d;

    public static final p f20408e;

    public static final p f20409f;

    public static final p f20410g;

    public static final p f20411h;

    public static final p f20412i;

    public static final p f20413j;

    public static final p f20414k;

    public static final p f20415l;

    public static final p f20416m;

    public static final p f20417n;

    public static Map f20418o;

    public final String f20419b;

    static {
        p pVar = new p(kl.l.f95444d);
        f20406c = pVar;
        p pVar2 = new p(kl.l.f95445e);
        f20407d = pVar2;
        p pVar3 = new p(kl.l.f95446f);
        f20408e = pVar3;
        p pVar4 = new p(kl.l.f95447g);
        f20409f = pVar4;
        p pVar5 = new p(kl.l.f95448h);
        f20410g = pVar5;
        p pVar6 = new p(kl.l.f95449i);
        f20411h = pVar6;
        p pVar7 = new p(kl.l.f95450j);
        f20412i = pVar7;
        p pVar8 = new p(kl.l.f95451k);
        f20413j = pVar8;
        p pVar9 = new p(kl.l.f95452l);
        f20414k = pVar9;
        p pVar10 = new p(kl.l.f95453m);
        f20415l = pVar10;
        p pVar11 = new p(kl.l.f95454n);
        f20416m = pVar11;
        p pVar12 = new p(kl.l.f95455o);
        f20417n = pVar12;
        HashMap hashMap = new HashMap();
        f20418o = hashMap;
        hashMap.put("picnicl1fs", pVar);
        f20418o.put("picnicl1ur", pVar2);
        f20418o.put("picnicl3fs", pVar3);
        f20418o.put("picnicl3ur", pVar4);
        f20418o.put("picnicl5fs", pVar5);
        f20418o.put("picnicl5ur", pVar6);
        f20418o.put("picnic3l1", pVar7);
        f20418o.put("picnic3l3", pVar8);
        f20418o.put("picnic3l5", pVar9);
        f20418o.put("picnicl1full", pVar10);
        f20418o.put("picnicl3full", pVar11);
        f20418o.put("picnicl5full", pVar12);
    }

    public p(kl.l lVar) {
        this.f20419b = lVar.b();
    }

    public static p a(String str) {
        return (p) f20418o.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20419b;
    }
}
