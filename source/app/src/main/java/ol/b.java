package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class b implements AlgorithmParameterSpec {

    public static final b f20325c;

    public static final b f20326d;

    public static final b f20327e;

    public static final b f20328f;

    public static final b f20329g;

    public static final b f20330h;

    public static final b f20331i;

    public static final b f20332j;

    public static final b f20333k;

    public static final b f20334l;

    public static Map f20335m;

    public final String f20336b;

    static {
        b bVar = new b(al.j.f32371n);
        f20325c = bVar;
        b bVar2 = new b(al.j.f32372o);
        f20326d = bVar2;
        b bVar3 = new b(al.j.f32373p);
        f20327e = bVar3;
        b bVar4 = new b(al.j.f32374q);
        f20328f = bVar4;
        b bVar5 = new b(al.j.f32375r);
        f20329g = bVar5;
        b bVar6 = new b(al.j.f32376s);
        f20330h = bVar6;
        b bVar7 = new b(al.j.f32377t);
        f20331i = bVar7;
        b bVar8 = new b(al.j.f32378u);
        f20332j = bVar8;
        b bVar9 = new b(al.j.f32379v);
        f20333k = bVar9;
        b bVar10 = new b(al.j.f32380w);
        f20334l = bVar10;
        HashMap hashMap = new HashMap();
        f20335m = hashMap;
        hashMap.put("mceliece348864", bVar);
        f20335m.put("mceliece348864f", bVar2);
        f20335m.put("mceliece460896", bVar3);
        f20335m.put("mceliece460896f", bVar4);
        f20335m.put("mceliece6688128", bVar5);
        f20335m.put("mceliece6688128f", bVar6);
        f20335m.put("mceliece6960119", bVar7);
        f20335m.put("mceliece6960119f", bVar8);
        f20335m.put("mceliece8192128", bVar9);
        f20335m.put("mceliece8192128f", bVar10);
    }

    public b(al.j jVar) {
        this.f20336b = jVar.e();
    }

    public static b a(String str) {
        return (b) f20335m.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20336b;
    }
}
