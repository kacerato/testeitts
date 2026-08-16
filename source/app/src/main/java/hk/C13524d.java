package hk;

import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import jk.AbstractC13875e;
import jk.C13873c;
import rk.InterfaceC15191b;
import rk.InterfaceC15195f;
import rk.InterfaceC15196g;

public class C13524d extends ECParameterSpec {

    public String f91064b;

    public C13524d(String str, EllipticCurve ellipticCurve, ECPoint eCPoint, BigInteger bigInteger) {
        super(ellipticCurve, eCPoint, bigInteger, 1);
        this.f91064b = str;
    }

    public static EllipticCurve a(AbstractC13875e abstractC13875e, byte[] bArr) {
        return new EllipticCurve(b(abstractC13875e.v()), abstractC13875e.p().v(), abstractC13875e.r().v(), bArr);
    }

    public static ECField b(InterfaceC15191b interfaceC15191b) {
        if (C13873c.p(interfaceC15191b)) {
            return new ECFieldFp(interfaceC15191b.b());
        }
        InterfaceC15195f d10 = ((InterfaceC15196g) interfaceC15191b).d();
        int[] b10 = d10.b();
        return new ECFieldF2m(d10.a(), org.bouncycastle.util.a.R0(org.bouncycastle.util.a.Z(b10, 1, b10.length - 1)));
    }

    public String c() {
        return this.f91064b;
    }

    public C13524d(String str, EllipticCurve ellipticCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        super(ellipticCurve, eCPoint, bigInteger, bigInteger2.intValue());
        this.f91064b = str;
    }

    public C13524d(String str, AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger) {
        super(a(abstractC13875e, null), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(iVar), bigInteger, 1);
        this.f91064b = str;
    }

    public C13524d(String str, AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger, BigInteger bigInteger2) {
        super(a(abstractC13875e, null), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(iVar), bigInteger, bigInteger2.intValue());
        this.f91064b = str;
    }

    public C13524d(String str, AbstractC13875e abstractC13875e, jk.i iVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        super(a(abstractC13875e, bArr), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(iVar), bigInteger, bigInteger2.intValue());
        this.f91064b = str;
    }
}
