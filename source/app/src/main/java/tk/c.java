package Tk;

import Bi.D;
import Ii.J;
import Qk.A;
import Xh.s;
import hi.C13486b;
import java.security.SecureRandom;
import oh.A0;

public class c implements Sk.g {

    public D f25408a;

    public C13486b f25409b;

    public SecureRandom f25410c;

    public int f25411d;

    public int f25412e;

    public c() {
        this(new J(), new C13486b(Wh.b.f27785i, A0.f98776c));
    }

    @Override
    public A a(char[] cArr) {
        if (this.f25410c == null) {
            this.f25410c = new SecureRandom();
        }
        byte[] bArr = new byte[this.f25411d];
        this.f25410c.nextBytes(bArr);
        return g.b(this.f25409b.u(), this.f25408a, new s(bArr, this.f25412e), cArr);
    }

    @Override
    public C13486b b() {
        return this.f25409b;
    }

    public c c(int i10) {
        this.f25412e = i10;
        return this;
    }

    public c(D d10, C13486b c13486b) {
        this.f25412e = 1024;
        this.f25408a = d10;
        this.f25409b = c13486b;
        this.f25411d = d10.f();
    }
}
