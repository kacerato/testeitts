package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class a implements AlgorithmParameterSpec {

    public static final a f20320c;

    public static final a f20321d;

    public static final a f20322e;

    public static Map f20323f;

    public final String f20324b;

    static {
        a aVar = new a(Zk.g.f31488k);
        f20320c = aVar;
        a aVar2 = new a(Zk.g.f31489l);
        f20321d = aVar2;
        a aVar3 = new a(Zk.g.f31490m);
        f20322e = aVar3;
        HashMap hashMap = new HashMap();
        f20323f = hashMap;
        hashMap.put("bike128", aVar);
        f20323f.put("bike192", aVar2);
        f20323f.put("bike256", aVar3);
    }

    public a(Zk.g gVar) {
        this.f20324b = gVar.d();
    }

    public static a a(String str) {
        return (a) f20323f.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20324b;
    }
}
