package ql;

import ql.C15129g;
import ql.C15131i;

public class F {
    public static E a(C15133k c15133k, C15137o c15137o, C15131i c15131i) {
        double d10;
        if (c15137o == null) {
            throw new NullPointerException("publicKey == null");
        }
        if (c15131i == null) {
            throw new NullPointerException("address == null");
        }
        int a10 = c15133k.e().a();
        byte[][] a11 = c15137o.a();
        E[] eArr = new E[a11.length];
        for (int i10 = 0; i10 < a11.length; i10++) {
            eArr[i10] = new E(0, a11[i10]);
        }
        C15131i.b g10 = new C15131i.b().h(c15131i.b()).i(c15131i.c()).n(c15131i.f()).o(0).p(c15131i.h()).g(c15131i.a());
        while (true) {
            C15131i c15131i2 = (C15131i) g10.e();
            if (a10 <= 1) {
                return eArr[0];
            }
            int i11 = 0;
            while (true) {
                d10 = a10 / 2;
                if (i11 >= ((int) Math.floor(d10))) {
                    break;
                }
                c15131i2 = (C15131i) new C15131i.b().h(c15131i2.b()).i(c15131i2.c()).n(c15131i2.f()).o(c15131i2.g()).p(i11).g(c15131i2.a()).e();
                int i12 = i11 * 2;
                eArr[i11] = b(c15133k, eArr[i12], eArr[i12 + 1], c15131i2);
                i11++;
            }
            if (a10 % 2 == 1) {
                eArr[(int) Math.floor(d10)] = eArr[a10 - 1];
            }
            a10 = (int) Math.ceil(a10 / 2.0d);
            g10 = new C15131i.b().h(c15131i2.b()).i(c15131i2.c()).n(c15131i2.f()).o(c15131i2.g() + 1).p(c15131i2.h()).g(c15131i2.a());
        }
    }

    public static E b(C15133k c15133k, E e10, E e11, r rVar) {
        if (e10 == null) {
            throw new NullPointerException("left == null");
        }
        if (e11 == null) {
            throw new NullPointerException("right == null");
        }
        if (e10.a() != e11.a()) {
            throw new IllegalStateException("height of both nodes must be equal");
        }
        if (rVar == null) {
            throw new NullPointerException("address == null");
        }
        byte[] i10 = c15133k.i();
        if (rVar instanceof C15131i) {
            C15131i c15131i = (C15131i) rVar;
            rVar = (C15131i) new C15131i.b().h(c15131i.b()).i(c15131i.c()).n(c15131i.f()).o(c15131i.g()).p(c15131i.h()).g(0).e();
        } else if (rVar instanceof C15129g) {
            C15129g c15129g = (C15129g) rVar;
            rVar = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).m(c15129g.g()).n(c15129g.h()).g(0).e();
        }
        byte[] d10 = c15133k.d().d(i10, rVar.e());
        if (rVar instanceof C15131i) {
            C15131i c15131i2 = (C15131i) rVar;
            rVar = (C15131i) new C15131i.b().h(c15131i2.b()).i(c15131i2.c()).n(c15131i2.f()).o(c15131i2.g()).p(c15131i2.h()).g(1).e();
        } else if (rVar instanceof C15129g) {
            C15129g c15129g2 = (C15129g) rVar;
            rVar = (C15129g) new C15129g.b().h(c15129g2.b()).i(c15129g2.c()).m(c15129g2.g()).n(c15129g2.h()).g(1).e();
        }
        byte[] d11 = c15133k.d().d(i10, rVar.e());
        if (rVar instanceof C15131i) {
            C15131i c15131i3 = (C15131i) rVar;
            rVar = (C15131i) new C15131i.b().h(c15131i3.b()).i(c15131i3.c()).n(c15131i3.f()).o(c15131i3.g()).p(c15131i3.h()).g(2).e();
        } else if (rVar instanceof C15129g) {
            C15129g c15129g3 = (C15129g) rVar;
            rVar = (C15129g) new C15129g.b().h(c15129g3.b()).i(c15129g3.c()).m(c15129g3.g()).n(c15129g3.h()).g(2).e();
        }
        byte[] d12 = c15133k.d().d(i10, rVar.e());
        int f10 = c15133k.e().f();
        byte[] bArr = new byte[f10 * 2];
        for (int i11 = 0; i11 < f10; i11++) {
            bArr[i11] = (byte) (e10.b()[i11] ^ d11[i11]);
        }
        for (int i12 = 0; i12 < f10; i12++) {
            bArr[i12 + f10] = (byte) (e11.b()[i12] ^ d12[i12]);
        }
        return new E(e10.a(), c15133k.d().b(d10, bArr));
    }
}
