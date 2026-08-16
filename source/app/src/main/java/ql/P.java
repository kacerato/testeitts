package ql;

import ql.C15129g;
import ql.C15131i;

public class P {
    public static E a(C15133k c15133k, int i10, byte[] bArr, K k10, C15132j c15132j, int i11) {
        if (bArr.length != c15133k.e().f()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        if (k10 == null) {
            throw new NullPointerException("signature == null");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        C15131i c15131i = (C15131i) new C15131i.b().h(c15132j.b()).i(c15132j.c()).n(c15132j.h()).e();
        C15129g c15129g = (C15129g) new C15129g.b().h(c15132j.b()).i(c15132j.c()).n(c15132j.h()).e();
        E[] eArr = new E[2];
        eArr[0] = F.a(c15133k, c15133k.h(bArr, k10.c(), c15132j), c15131i);
        for (int i12 = 0; i12 < i10; i12++) {
            C15129g c15129g2 = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).m(i12).n(c15129g.h()).g(c15129g.a()).e();
            if (Math.floor(i11 / (1 << i12)) % 2.0d == 0.0d) {
                c15129g = (C15129g) new C15129g.b().h(c15129g2.b()).i(c15129g2.c()).m(c15129g2.g()).n(c15129g2.h() / 2).g(c15129g2.a()).e();
                E b10 = F.b(c15133k, eArr[0], k10.a().get(i12), c15129g);
                eArr[1] = b10;
                eArr[1] = new E(b10.a() + 1, eArr[1].b());
            } else {
                c15129g = (C15129g) new C15129g.b().h(c15129g2.b()).i(c15129g2.c()).m(c15129g2.g()).n((c15129g2.h() - 1) / 2).g(c15129g2.a()).e();
                E b11 = F.b(c15133k, k10.a().get(i12), eArr[0], c15129g);
                eArr[1] = b11;
                eArr[1] = new E(b11.a() + 1, eArr[1].b());
            }
            eArr[0] = eArr[1];
        }
        return eArr[0];
    }
}
