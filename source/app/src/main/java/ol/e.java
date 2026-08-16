package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class e implements AlgorithmParameterSpec {

    public static final e f20346c;

    public static final e f20347d;

    public static final e f20348e;

    public static final e f20349f;

    public static final e f20350g;

    public static final e f20351h;

    public static Map f20352i;

    public final String f20353b;

    static {
        e eVar = new e(el.h.f85868k);
        f20346c = eVar;
        e eVar2 = new e(el.h.f85869l);
        f20347d = eVar2;
        e eVar3 = new e(el.h.f85870m);
        f20348e = eVar3;
        e eVar4 = new e(el.h.f85871n);
        f20349f = eVar4;
        e eVar5 = new e(el.h.f85872o);
        f20350g = eVar5;
        e eVar6 = new e(el.h.f85873p);
        f20351h = eVar6;
        HashMap hashMap = new HashMap();
        f20352i = hashMap;
        hashMap.put("frodokem19888r3", eVar);
        f20352i.put("frodokem19888shaker3", eVar2);
        f20352i.put("frodokem31296r3", eVar3);
        f20352i.put("frodokem31296shaker3", eVar4);
        f20352i.put("frodokem43088r3", eVar5);
        f20352i.put("frodokem43088shaker3", eVar6);
        f20352i.put("frodokem640aes", eVar);
        f20352i.put("frodokem640shake", eVar2);
        f20352i.put("frodokem976aes", eVar3);
        f20352i.put("frodokem976shake", eVar4);
        f20352i.put("frodokem1344aes", eVar5);
        f20352i.put("frodokem1344shake", eVar6);
    }

    public e(el.h hVar) {
        this.f20353b = hVar.e();
    }

    public static e a(String str) {
        return (e) f20352i.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20353b;
    }
}
