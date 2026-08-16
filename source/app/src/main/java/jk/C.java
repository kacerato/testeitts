package jk;

import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.i;

public class C extends AbstractC13872b {

    public static final String f93847a = "bc_wtnaf";

    public class a implements p {

        public final i.b f93848a;

        public final byte f93849b;

        public a(i.b bVar, byte b10) {
            this.f93848a = bVar;
            this.f93849b = b10;
        }

        @Override
        public q a(q qVar) {
            if (qVar instanceof D) {
                return qVar;
            }
            D d10 = new D();
            d10.b(x.f(this.f93848a, this.f93849b));
            return d10;
        }
    }

    public static i.b d(i.b bVar, byte[] bArr) {
        AbstractC13875e.b bVar2 = (AbstractC13875e.b) bVar.i();
        i.b[] a10 = ((D) bVar2.G(bVar, f93847a, new a(bVar, bVar2.p().v().byteValue()))).a();
        i.b[] bVarArr = new i.b[a10.length];
        for (int i10 = 0; i10 < a10.length; i10++) {
            bVarArr[i10] = (i.b) a10[i10].A();
        }
        i.b bVar3 = (i.b) bVar.i().x();
        int i11 = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i11++;
            byte b10 = bArr[length];
            if (b10 != 0) {
                bVar3 = (i.b) bVar3.P(i11).a(b10 > 0 ? a10[b10 >>> 1] : bVarArr[(-b10) >>> 1]);
                i11 = 0;
            }
        }
        return i11 > 0 ? bVar3.P(i11) : bVar3;
    }

    @Override
    public i c(i iVar, BigInteger bigInteger) {
        if (!(iVar instanceof i.b)) {
            throw new IllegalArgumentException("Only ECPoint.AbstractF2m can be used in WTauNafMultiplier");
        }
        i.b bVar = (i.b) iVar;
        AbstractC13875e.b bVar2 = (AbstractC13875e.b) bVar.i();
        byte byteValue = bVar2.p().v().byteValue();
        byte c10 = x.c(byteValue);
        return e(bVar, x.p(bVar2, bigInteger, byteValue, c10, (byte) 10), byteValue, c10);
    }

    public final i.b e(i.b bVar, E e10, byte b10, byte b11) {
        return d(bVar, x.t(b11, e10, 4, x.j(b11, 4).intValue(), b10 == 0 ? x.f93948e : x.f93950g));
    }
}
