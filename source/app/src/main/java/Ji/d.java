package Ji;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.G;
import Xi.M;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.C13873c;

public class d implements e {

    public M f10614a;

    public SecureRandom f10615b;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            if (!(x0Var.a() instanceof M)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for encryption.");
            }
            this.f10614a = (M) x0Var.a();
            h10 = x0Var.b();
        } else {
            if (!(interfaceC2379k instanceof M)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for encryption.");
            }
            this.f10614a = (M) interfaceC2379k;
            h10 = r.h();
        }
        this.f10615b = h10;
    }

    @Override
    public i b(jk.i iVar) {
        M m10 = this.f10614a;
        if (m10 == null) {
            throw new IllegalStateException("ECElGamalEncryptor not initialised");
        }
        G d10 = m10.d();
        BigInteger a10 = l.a(d10.e(), this.f10615b);
        jk.i[] iVarArr = {c().a(d10.b(), a10), this.f10614a.e().z(a10).a(C13873c.a(d10.a(), iVar))};
        d10.a().E(iVarArr);
        return new i(iVarArr[0], iVarArr[1]);
    }

    public jk.h c() {
        return new jk.k();
    }
}
