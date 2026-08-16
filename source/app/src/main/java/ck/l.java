package ck;

import java.security.spec.AlgorithmParameterSpec;
import oh.C14549x;
import yh.InterfaceC16192a;

public class l implements AlgorithmParameterSpec {

    public final C14549x f34921b;

    public final C14549x f34922c;

    public final C14549x f34923d;

    public l(String str) {
        this(d(str), a(str), null);
    }

    public static C14549x a(String str) {
        return str.indexOf("12-512") > 0 ? Cj.a.f4459d : str.indexOf("12-256") > 0 ? Cj.a.f4458c : InterfaceC16192a.f130284p;
    }

    public static C14549x d(String str) {
        return yh.b.n(str);
    }

    public C14549x b() {
        return this.f34922c;
    }

    public C14549x c() {
        return this.f34923d;
    }

    public C14549x e() {
        return this.f34921b;
    }

    public String f() {
        return yh.b.l(e());
    }

    public l(C14549x c14549x, C14549x c14549x2) {
        this(c14549x, c14549x2, null);
    }

    public l(C14549x c14549x, C14549x c14549x2, C14549x c14549x3) {
        this.f34921b = c14549x;
        this.f34922c = c14549x2;
        this.f34923d = c14549x3;
    }
}
