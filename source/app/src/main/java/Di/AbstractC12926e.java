package di;

import em.l;
import java.math.BigInteger;
import java.util.Random;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import jk.i;

public abstract class AbstractC12926e {
    public static i a(AbstractC13875e abstractC13875e, byte[] bArr) {
        jk.f fVar;
        jk.f o10 = abstractC13875e.o(BigInteger.valueOf(bArr[bArr.length - 1] & 1));
        jk.f o11 = abstractC13875e.o(new BigInteger(1, bArr));
        if (!d(o11).equals(abstractC13875e.p())) {
            o11 = o11.b();
        }
        if (o11.j()) {
            fVar = abstractC13875e.r().o();
        } else {
            jk.f c10 = c(abstractC13875e, o11.p().h().k(abstractC13875e.r()).a(abstractC13875e.p()).a(o11));
            if (c10 != null) {
                if (!d(c10).equals(o10)) {
                    c10 = c10.b();
                }
                fVar = o11.k(c10);
            } else {
                fVar = null;
            }
        }
        if (fVar != null) {
            return abstractC13875e.K(o11.v(), fVar.v());
        }
        throw new IllegalArgumentException("Invalid point compression");
    }

    public static byte[] b(i iVar) {
        i B10 = iVar.B();
        jk.f f10 = B10.f();
        byte[] e10 = f10.e();
        if (!f10.j()) {
            if (d(B10.g().d(f10)).i()) {
                int length = e10.length - 1;
                e10[length] = (byte) (e10[length] | 1);
            } else {
                int length2 = e10.length - 1;
                e10[length2] = (byte) (e10[length2] & l.f85913l);
            }
        }
        return e10;
    }

    public static jk.f c(AbstractC13875e abstractC13875e, jk.f fVar) {
        jk.f fVar2;
        if (fVar.j()) {
            return fVar;
        }
        jk.f o10 = abstractC13875e.o(InterfaceC13874d.f93853a);
        Random random = new Random();
        int g10 = fVar.g();
        do {
            jk.f o11 = abstractC13875e.o(new BigInteger(g10, random));
            jk.f fVar3 = fVar;
            fVar2 = o10;
            for (int i10 = 1; i10 <= g10 - 1; i10++) {
                jk.f p10 = fVar3.p();
                fVar2 = fVar2.p().a(p10.k(o11));
                fVar3 = p10.a(fVar);
            }
            if (!fVar3.j()) {
                return null;
            }
        } while (fVar2.p().a(fVar2).j());
        return fVar2;
    }

    public static jk.f d(jk.f fVar) {
        jk.f fVar2 = fVar;
        for (int i10 = 1; i10 < fVar.g(); i10++) {
            fVar2 = fVar2.p().a(fVar);
        }
        return fVar2;
    }
}
