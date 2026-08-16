package Ji;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.G;
import Xi.M;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.C13873c;

public class h implements j {

    public M f10620a;

    public SecureRandom f10621b;

    public BigInteger f10622c;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            if (!(x0Var.a() instanceof M)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
            }
            this.f10620a = (M) x0Var.a();
            h10 = x0Var.b();
        } else {
            if (!(interfaceC2379k instanceof M)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
            }
            this.f10620a = (M) interfaceC2379k;
            h10 = r.h();
        }
        this.f10621b = h10;
    }

    @Override
    public i b(i iVar) {
        M m10 = this.f10620a;
        if (m10 == null) {
            throw new IllegalStateException("ECNewRandomnessTransform not initialised");
        }
        G d10 = m10.d();
        BigInteger e10 = d10.e();
        jk.h d11 = d();
        BigInteger a10 = l.a(e10, this.f10621b);
        jk.i[] iVarArr = {d11.a(d10.b(), a10).a(C13873c.a(d10.a(), iVar.b())), this.f10620a.e().z(a10).a(C13873c.a(d10.a(), iVar.c()))};
        d10.a().E(iVarArr);
        this.f10622c = a10;
        return new i(iVarArr[0], iVarArr[1]);
    }

    @Override
    public BigInteger c() {
        return this.f10622c;
    }

    public jk.h d() {
        return new jk.k();
    }
}
