package ql;

import Bi.C2371c;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;
import ql.C15119A;
import ql.C15120B;
import ql.C15132j;

public final class x implements InterfaceC2372d {

    public z f108411g;

    public H f108412h;

    public SecureRandom f108413i;

    @Override
    public C2371c a() {
        C15119A c10 = c(new C15119A.b(this.f108411g).k().f());
        this.f108412h.i().l(new byte[this.f108411g.g()], c10.j());
        int b10 = this.f108411g.b() - 1;
        C15123a c15123a = new C15123a(this.f108412h, c10.j(), c10.m(), (C15132j) new C15132j.b().h(b10).e());
        E f10 = c15123a.f();
        c10.f().d(b10, c15123a);
        C15119A k10 = new C15119A.b(this.f108411g).s(c10.m()).r(c10.l()).p(c10.j()).q(f10.b()).l(c10.f()).k();
        return new C2371c((C3335c) new C15120B.b(this.f108411g).h(f10.b()).g(k10.j()).e(), (C3335c) k10);
    }

    @Override
    public void b(Bi.G g10) {
        w wVar = (w) g10;
        this.f108413i = wVar.a();
        z c10 = wVar.c();
        this.f108411g = c10;
        this.f108412h = c10.j();
    }

    public final C15119A c(C15124b c15124b) {
        int g10 = this.f108411g.g();
        byte[] bArr = new byte[g10];
        this.f108413i.nextBytes(bArr);
        byte[] bArr2 = new byte[g10];
        this.f108413i.nextBytes(bArr2);
        byte[] bArr3 = new byte[g10];
        this.f108413i.nextBytes(bArr3);
        return new C15119A.b(this.f108411g).s(bArr).r(bArr2).p(bArr3).l(c15124b).k();
    }
}
