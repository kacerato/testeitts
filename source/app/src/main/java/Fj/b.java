package Fj;

import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import jk.AbstractC13875e;
import jk.C13873c;
import ki.l;
import rk.InterfaceC15191b;
import rk.InterfaceC15195f;
import rk.InterfaceC15196g;

public class b {
    public static EllipticCurve a(AbstractC13875e abstractC13875e, byte[] bArr) {
        return new EllipticCurve(b(abstractC13875e.v()), abstractC13875e.p().v(), abstractC13875e.r().v(), null);
    }

    public static ECField b(InterfaceC15191b interfaceC15191b) {
        if (C13873c.p(interfaceC15191b)) {
            return new ECFieldFp(interfaceC15191b.b());
        }
        InterfaceC15195f d10 = ((InterfaceC15196g) interfaceC15191b).d();
        int[] b10 = d10.b();
        return new ECFieldF2m(d10.a(), org.bouncycastle.util.a.R0(org.bouncycastle.util.a.Z(b10, 1, b10.length - 1)));
    }

    public static ECPoint c(jk.i iVar) {
        jk.i B10 = iVar.B();
        return new ECPoint(B10.f().v(), B10.g().v());
    }

    public static ECParameterSpec d(l lVar) {
        return new ECParameterSpec(a(lVar.v(), null), c(lVar.z()), lVar.C(), lVar.A().intValue());
    }
}
