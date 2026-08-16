package Dj;

import Ek.C2492c;
import Ek.C2493d;
import Ek.C2494e;
import Ek.K;
import Ek.M;
import Ek.s;
import Fk.C2547t;
import Fk.C2551x;
import Fk.j0;
import bi.InterfaceC3890b;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14549x;
import yk.C16205g;

public class l extends k {

    public final Gj.d f5255f;

    public l(Gj.d dVar, K.a aVar) {
        super(aVar);
        this.f5255f = dVar;
    }

    public j h(C2493d c2493d, o oVar) {
        return i(c2493d, oVar, null);
    }

    public j i(C2493d c2493d, o oVar, n nVar) {
        j0 a10;
        s B10;
        C2547t c2547t;
        K.a aVar = new K.a(this.f5250a);
        aVar.j(c2493d);
        if (nVar != null) {
            aVar.i(nVar.a());
        }
        aVar.m(M.z(oVar.a()));
        K a11 = aVar.a();
        M U10 = this.f5255f.d() ? a11.U() : this.f5255f.b().e().z().U();
        OutputStream outputStream = this.f5255f.getOutputStream();
        try {
            outputStream.write(C16205g.a(a11, Lk.a.f14391A.f()));
            outputStream.close();
            int u10 = U10.u();
            if (u10 == 0) {
                a10 = Gj.a.a(Zh.d.f31273H, this.f5255f.getSignature());
            } else if (u10 == 1) {
                a10 = Gj.a.a(InterfaceC3890b.f33255u, this.f5255f.getSignature());
            } else {
                if (u10 != 2) {
                    throw new IllegalStateException("unknown key type");
                }
                a10 = Gj.a.a(InterfaceC3890b.f33259y, this.f5255f.getSignature());
            }
            C2492c.a aVar2 = new C2492c.a();
            C14549x u11 = this.f5255f.f().u();
            if (this.f5255f.d()) {
                if (u11.A(Sh.d.f23337c)) {
                    c2547t = C2547t.f7184f;
                } else {
                    if (!u11.A(Sh.d.f23339d)) {
                        throw new IllegalStateException("unknown digest");
                    }
                    c2547t = C2547t.f7185g;
                }
                B10 = s.z(c2547t);
            } else {
                byte[] c10 = this.f5255f.c();
                C2551x c2551x = new C2551x(org.bouncycastle.util.a.X(c10, c10.length - 8, c10.length));
                if (u11.A(Sh.d.f23337c)) {
                    B10 = s.A(c2551x);
                } else {
                    if (!u11.A(Sh.d.f23339d)) {
                        throw new IllegalStateException("unknown digest");
                    }
                    B10 = s.B(c2551x);
                }
            }
            aVar2.j(this.f5252c);
            aVar2.i(C2494e.f5958f);
            aVar2.f(B10);
            aVar2.h(a11);
            aVar2.g(a10);
            return new j(aVar2.b());
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot produce certificate signature");
        }
    }
}
