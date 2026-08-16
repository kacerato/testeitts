package fl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Ii.Q;
import Xi.C3335c;
import fl.C13251a;
import java.security.SecureRandom;

public class C13254d implements InterfaceC2372d {

    public SecureRandom f86474g;

    public C13256f f86475h;

    @Override
    public C2371c a() {
        C13251a b10 = this.f86475h.b();
        byte[] c10 = c(b10.f86465w);
        int i10 = b10.f86436h + 2;
        int i11 = b10.f86434g;
        int i12 = (i10 + (((i11 + 1) * i11) >>> 1) + (b10.f86454q - 1) + ((i11 + 1) * b10.f86426c)) * b10.f86450o;
        int i13 = (((b10.f86462u << 1) + i12) + (b10.f86464v << 1)) << 3;
        l lVar = new l(i13 >>> 3);
        byte[] bArr = new byte[i13];
        Q q10 = new Q(b10.f86437h0);
        int i14 = 0;
        q10.update(c10, 0, b10.f86465w);
        q10.e(bArr, 0, i13);
        int i15 = b10.f86465w;
        byte[] bArr2 = new byte[i15];
        byte[] bArr3 = new byte[((b10.f86456r * b10.f86440j) + 7) >> 3];
        System.arraycopy(c10, 0, bArr2, 0, i15);
        lVar.f(0, bArr, 0, i13);
        b10.n(lVar);
        l lVar2 = new l(b10.f86456r * b10.f86450o);
        if (b10.f86432f > 34) {
            b10.a0(lVar2, lVar);
        }
        l lVar3 = new l(b10.f86397B);
        l lVar4 = new l(lVar3);
        l lVar5 = new l(lVar, i12);
        l lVar6 = new l(lVar5, b10.f86462u);
        C13251a.b bVar = C13251a.b.NV;
        b10.m(lVar5, bVar);
        b10.m(lVar6, bVar);
        b10.e0(lVar3, lVar5, lVar6, bVar);
        if (b10.f86432f > 34) {
            b10.j(lVar2, lVar3);
        } else if (b10.d0(lVar2, lVar, lVar3) != 0) {
            throw new IllegalArgumentException("Error");
        }
        lVar5.r(b10.f86462u << 1);
        lVar6.a(lVar5.m() + b10.f86464v);
        C13251a.b bVar2 = C13251a.b.N;
        b10.m(lVar5, bVar2);
        b10.m(lVar6, bVar2);
        b10.e0(lVar4, lVar5, lVar6, bVar2);
        if (b10.f86405J != 0) {
            int i16 = b10.f86456r;
            int i17 = b10.f86406K;
            m mVar = new m((i16 * i17) + ((8 - (i17 & 7)) & 7));
            for (int i18 = (b10.f86406K & 7) != 0 ? 1 : 0; i18 < b10.f86456r; i18++) {
                b10.F0(mVar, lVar2, lVar4, C13251a.b.M);
                lVar2.r(b10.f86450o);
                mVar.f0(b10.f86406K);
            }
            if ((b10.f86406K & 7) != 0) {
                l lVar7 = new l(b10.f86400E);
                b10.F0(lVar7, lVar2, lVar4, C13251a.b.M);
                while (i14 < b10.f86400E) {
                    mVar.u(i14, lVar7.i(i14));
                    i14++;
                }
            }
            mVar.o();
            byte[] bArr4 = new byte[b10.f86405J * b10.f86408M];
            b10.r(bArr4, mVar);
            mVar.o();
            if (b10.f86409N == 0 || b10.f86405J <= 1) {
                b10.p(bArr3, mVar, bArr4);
            } else {
                b10.q(bArr3, mVar, bArr4);
            }
        } else {
            m mVar2 = new m(b10.f86400E << 3);
            int i19 = 0;
            while (i14 < b10.f86456r) {
                b10.F0(mVar2, lVar2, lVar4, C13251a.b.M);
                i19 = mVar2.l0(bArr3, i19, b10.f86406K);
                mVar2.o();
                lVar2.r(b10.f86450o);
                i14++;
            }
        }
        return new C2371c((C3335c) new h(this.f86475h, bArr3), (C3335c) new g(this.f86475h, bArr2));
    }

    @Override
    public void b(G g10) {
        this.f86474g = g10.a();
        this.f86475h = ((C13253c) g10).c();
    }

    public final byte[] c(int i10) {
        byte[] bArr = new byte[i10];
        this.f86474g.nextBytes(bArr);
        return bArr;
    }
}
