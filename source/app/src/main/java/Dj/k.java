package Dj;

import Ek.C;
import Ek.K;
import Ek.z;
import Fk.C2536h;
import Fk.C2550w;
import Fk.P;
import Fk.c0;
import Fk.w0;

public class k {

    public final K.a f5250a;

    public final j f5251b;

    public w0 f5252c;

    public C2550w f5253d;

    public C2536h f5254e;

    public k(j jVar, K.a aVar) {
        this.f5252c = new w0(3);
        this.f5253d = new C2550w(new byte[3]);
        this.f5254e = new C2536h(0);
        this.f5251b = jVar;
        this.f5250a = aVar;
        aVar.g(this.f5253d);
        aVar.h(this.f5254e);
    }

    public j a() {
        return this.f5251b;
    }

    public k b(P... pArr) {
        c0.a u10 = c0.u();
        for (int i10 = 0; i10 != pArr.length; i10++) {
            u10.b(pArr[i10]);
        }
        this.f5250a.b(u10.a());
        return this;
    }

    public k c(z... zVarArr) {
        this.f5250a.e(C.u().a(zVarArr).b());
        return this;
    }

    public k d(byte[] bArr) {
        C2550w c2550w = new C2550w(bArr);
        this.f5253d = c2550w;
        this.f5250a.g(c2550w);
        return this;
    }

    public k e(int i10) {
        C2536h c2536h = new C2536h(i10);
        this.f5254e = c2536h;
        this.f5250a.h(c2536h);
        return this;
    }

    public k f(p pVar) {
        this.f5250a.l(pVar.c());
        return this;
    }

    public k g(int i10) {
        this.f5252c = new w0(i10);
        return this;
    }

    public k(K.a aVar) {
        this(null, aVar);
    }
}
