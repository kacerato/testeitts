package Ji;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.G;
import Xi.M;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.C13873c;

public class g implements k {

    public M f10618a;

    public SecureRandom f10619b;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            if (!(x0Var.a() instanceof M)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new public key transform.");
            }
            this.f10618a = (M) x0Var.a();
            h10 = x0Var.b();
        } else {
            if (!(interfaceC2379k instanceof M)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new public key transform.");
            }
            this.f10618a = (M) interfaceC2379k;
            h10 = r.h();
        }
        this.f10619b = h10;
    }

    @Override
    public i b(i iVar) {
        M m10 = this.f10618a;
        if (m10 == null) {
            throw new IllegalStateException("ECNewPublicKeyTransform not initialised");
        }
        G d10 = m10.d();
        BigInteger e10 = d10.e();
        jk.h d11 = d();
        BigInteger a10 = l.a(e10, this.f10619b);
        jk.i[] iVarArr = {d11.a(d10.b(), a10), this.f10618a.e().z(a10).a(C13873c.a(d10.a(), iVar.c()))};
        d10.a().E(iVarArr);
        return new i(iVarArr[0], iVarArr[1]);
    }

    public jk.h d() {
        return new jk.k();
    }
}
