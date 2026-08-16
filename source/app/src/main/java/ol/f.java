package Ol;

import gl.C13397j;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class f implements AlgorithmParameterSpec {

    public static final f f20354c;

    public static final f f20355d;

    public static final f f20356e;

    public static Map f20357f;

    public final String f20358b;

    static {
        f fVar = new f(C13397j.f90084p);
        f20354c = fVar;
        f fVar2 = new f(C13397j.f90085q);
        f20355d = fVar2;
        f fVar3 = new f(C13397j.f90086r);
        f20356e = fVar3;
        HashMap hashMap = new HashMap();
        f20357f = hashMap;
        hashMap.put("hqc128", fVar);
        f20357f.put("hqc192", fVar2);
        f20357f.put("hqc256", fVar3);
    }

    public f(C13397j c13397j) {
        this.f20358b = c13397j.i();
    }

    public static f a(String str) {
        return (f) f20357f.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20358b;
    }
}
