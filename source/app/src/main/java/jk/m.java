package jk;

import java.math.BigInteger;

public class m {

    public static final String f93923a = "bc_fixed_point";

    public class a implements p {

        public final AbstractC13875e f93924a;

        public final i f93925b;

        public a(AbstractC13875e abstractC13875e, i iVar) {
            this.f93924a = abstractC13875e;
            this.f93925b = iVar;
        }

        @Override
        public q a(q qVar) {
            l lVar = qVar instanceof l ? (l) qVar : null;
            int a10 = m.a(this.f93924a);
            int i10 = a10 > 250 ? 6 : 5;
            int i11 = 1 << i10;
            if (b(lVar, i11)) {
                return lVar;
            }
            int i12 = ((a10 + i10) - 1) / i10;
            i[] iVarArr = new i[i10 + 1];
            iVarArr[0] = this.f93925b;
            for (int i13 = 1; i13 < i10; i13++) {
                iVarArr[i13] = iVarArr[i13 - 1].L(i12);
            }
            iVarArr[i10] = iVarArr[0].J(iVarArr[1]);
            this.f93924a.E(iVarArr);
            i[] iVarArr2 = new i[i11];
            iVarArr2[0] = iVarArr[0];
            for (int i14 = i10 - 1; i14 >= 0; i14--) {
                i iVar = iVarArr[i14];
                int i15 = 1 << i14;
                for (int i16 = i15; i16 < i11; i16 += i15 << 1) {
                    iVarArr2[i16] = iVarArr2[i16 - i15].a(iVar);
                }
            }
            this.f93924a.E(iVarArr2);
            l lVar2 = new l();
            lVar2.d(this.f93924a.g(iVarArr2, 0, i11));
            lVar2.e(iVarArr[i10]);
            lVar2.f(i10);
            return lVar2;
        }

        public final boolean b(l lVar, int i10) {
            return lVar != null && c(lVar.a(), i10);
        }

        public final boolean c(g gVar, int i10) {
            return gVar != null && gVar.getSize() >= i10;
        }
    }

    public static int a(AbstractC13875e abstractC13875e) {
        BigInteger A10 = abstractC13875e.A();
        return A10 == null ? abstractC13875e.w() + 1 : A10.bitLength();
    }

    public static l b(q qVar) {
        if (qVar instanceof l) {
            return (l) qVar;
        }
        return null;
    }

    public static l c(i iVar) {
        AbstractC13875e i10 = iVar.i();
        return (l) i10.G(iVar, f93923a, new a(i10, iVar));
    }
}
