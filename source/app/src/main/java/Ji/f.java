package Ji;

import Bi.InterfaceC2379k;
import Xi.G;
import Xi.M;
import java.math.BigInteger;
import jk.C13873c;

public class f implements j {

    public M f10616a;

    public BigInteger f10617b;

    public f(BigInteger bigInteger) {
        this.f10617b = bigInteger;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof M)) {
            throw new IllegalArgumentException("ECPublicKeyParameters are required for fixed transform.");
        }
        this.f10616a = (M) interfaceC2379k;
    }

    @Override
    public i b(i iVar) {
        M m10 = this.f10616a;
        if (m10 == null) {
            throw new IllegalStateException("ECFixedTransform not initialised");
        }
        G d10 = m10.d();
        BigInteger e10 = d10.e();
        jk.h d11 = d();
        BigInteger mod = this.f10617b.mod(e10);
        jk.i[] iVarArr = {d11.a(d10.b(), mod).a(C13873c.a(d10.a(), iVar.b())), this.f10616a.e().z(mod).a(C13873c.a(d10.a(), iVar.c()))};
        d10.a().E(iVarArr);
        return new i(iVarArr[0], iVarArr[1]);
    }

    @Override
    public BigInteger c() {
        return this.f10617b;
    }

    public jk.h d() {
        return new jk.k();
    }
}
