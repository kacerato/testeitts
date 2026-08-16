package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import jl.C13881f;

public class n implements AlgorithmParameterSpec {

    public static final n f20390c;

    public static final n f20391d;

    public static final n f20392e;

    public static final n f20393f;

    public static final n f20394g;

    public static final n f20395h;

    public static Map f20396i;

    public final String f20397b;

    static {
        n nVar = new n(C13881f.f93961o);
        f20390c = nVar;
        n nVar2 = new n(C13881f.f93962p);
        f20391d = nVar2;
        n nVar3 = new n(C13881f.f93963q);
        f20392e = nVar3;
        n nVar4 = new n(C13881f.f93964r);
        f20393f = nVar4;
        n nVar5 = new n(C13881f.f93965s);
        f20394g = nVar5;
        n nVar6 = new n(C13881f.f93966t);
        f20395h = nVar6;
        HashMap hashMap = new HashMap();
        f20396i = hashMap;
        hashMap.put("ntrulpr653", nVar);
        f20396i.put("ntrulpr761", nVar2);
        f20396i.put("ntrulpr857", nVar3);
        f20396i.put("ntrulpr953", nVar4);
        f20396i.put("ntrulpr1013", nVar5);
        f20396i.put("ntrulpr1277", nVar6);
    }

    public n(C13881f c13881f) {
        this.f20397b = c13881f.b();
    }

    public static n a(String str) {
        return (n) f20396i.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20397b;
    }
}
