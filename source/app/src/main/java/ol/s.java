package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class s implements AlgorithmParameterSpec {

    public static final s f20431c = new s(ml.h.f97505f);

    public static final s f20432d = new s(ml.h.f97506g);

    public static final s f20433e = new s(ml.h.f97507h);

    public static final s f20434f = new s(ml.h.f97508i);

    public static final s f20435g = new s(ml.h.f97509j);

    public static final s f20436h = new s(ml.h.f97510k);

    public static final s f20437i = new s(ml.h.f97511l);

    public static final s f20438j = new s(ml.h.f97512m);

    public static final s f20439k = new s(ml.h.f97513n);

    public static Map f20440l = new HashMap();

    public final String f20441b;

    public s(ml.h hVar) {
        this.f20441b = hVar.c();
    }

    public static s a(String str) {
        return (s) f20440l.get(org.bouncycastle.util.w.l(str));
    }

    public String b() {
        return this.f20441b;
    }
}
