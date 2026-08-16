package bl;

public class j {
    public static byte[] a(l lVar, C3900a c3900a) {
        byte[] bArr = new byte[c3900a.d() - 32];
        for (int i10 = 0; i10 < c3900a.k(); i10++) {
            System.arraycopy(lVar.e(i10).r(), 0, bArr, i10 * 320, 320);
        }
        return bArr;
    }

    public static byte[][] b(byte[] bArr, byte[] bArr2, byte[] bArr3, l lVar, m mVar, l lVar2, C3900a c3900a) {
        byte[][] bArr4 = new byte[6];
        bArr4[0] = bArr;
        bArr4[1] = bArr3;
        bArr4[2] = bArr2;
        bArr4[3] = new byte[c3900a.l() * c3900a.o()];
        for (int i10 = 0; i10 < c3900a.l(); i10++) {
            mVar.e(i10).k(bArr4[3], c3900a.o() * i10);
        }
        bArr4[4] = new byte[c3900a.k() * c3900a.o()];
        for (int i11 = 0; i11 < c3900a.k(); i11++) {
            lVar2.e(i11).k(bArr4[4], c3900a.o() * i11);
        }
        bArr4[5] = new byte[c3900a.k() * 416];
        for (int i12 = 0; i12 < c3900a.k(); i12++) {
            lVar.e(i12).p(bArr4[5], i12 * 416);
        }
        return bArr4;
    }

    public static byte[] c(byte[] bArr, m mVar, l lVar, C3900a c3900a) {
        byte[] bArr2 = new byte[c3900a.c()];
        System.arraycopy(bArr, 0, bArr2, 0, c3900a.g());
        int g10 = c3900a.g();
        for (int i10 = 0; i10 < c3900a.l(); i10++) {
            System.arraycopy(mVar.e(i10).G(), 0, bArr2, (c3900a.r() * i10) + g10, c3900a.r());
        }
        int l10 = g10 + (c3900a.l() * c3900a.r());
        for (int i11 = 0; i11 < c3900a.n() + c3900a.k(); i11++) {
            bArr2[l10 + i11] = 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < c3900a.k(); i13++) {
            for (int i14 = 0; i14 < 256; i14++) {
                if (lVar.e(i13).f(i14) != 0) {
                    bArr2[i12 + l10] = (byte) i14;
                    i12++;
                }
            }
            bArr2[c3900a.n() + l10 + i13] = (byte) i12;
        }
        return bArr2;
    }

    public static l d(l lVar, byte[] bArr, C3900a c3900a) {
        int i10 = 0;
        while (i10 < c3900a.k()) {
            k e10 = lVar.e(i10);
            int i11 = i10 * 320;
            i10++;
            e10.s(org.bouncycastle.util.a.X(bArr, i11, (i10 * 320) + 32));
        }
        return lVar;
    }

    public static void e(l lVar, m mVar, l lVar2, byte[] bArr, byte[] bArr2, byte[] bArr3, C3900a c3900a) {
        for (int i10 = 0; i10 < c3900a.l(); i10++) {
            mVar.e(i10).l(bArr2, c3900a.o() * i10);
        }
        for (int i11 = 0; i11 < c3900a.k(); i11++) {
            lVar2.e(i11).l(bArr3, c3900a.o() * i11);
        }
        for (int i12 = 0; i12 < c3900a.k(); i12++) {
            lVar.e(i12).q(bArr, i12 * 416);
        }
    }

    public static boolean f(m mVar, l lVar, byte[] bArr, C3900a c3900a) {
        int g10 = c3900a.g();
        int i10 = 0;
        while (i10 < c3900a.l()) {
            k e10 = mVar.e(i10);
            int r10 = (c3900a.r() * i10) + g10;
            i10++;
            e10.H(org.bouncycastle.util.a.X(bArr, r10, (c3900a.r() * i10) + g10));
        }
        int l10 = g10 + (c3900a.l() * c3900a.r());
        int i11 = 0;
        for (int i12 = 0; i12 < c3900a.k(); i12++) {
            for (int i13 = 0; i13 < 256; i13++) {
                lVar.e(i12).x(i13, 0);
            }
            if ((bArr[c3900a.n() + l10 + i12] & 255) < i11 || (bArr[c3900a.n() + l10 + i12] & 255) > c3900a.n()) {
                return false;
            }
            for (int i14 = i11; i14 < (bArr[c3900a.n() + l10 + i12] & 255); i14++) {
                if (i14 > i11) {
                    int i15 = l10 + i14;
                    if ((bArr[i15] & 255) <= (bArr[i15 - 1] & 255)) {
                        return false;
                    }
                }
                lVar.e(i12).x(bArr[l10 + i14] & 255, 1);
            }
            i11 = bArr[c3900a.n() + l10 + i12];
        }
        while (i11 < c3900a.n()) {
            if ((bArr[l10 + i11] & 255) != 0) {
                return false;
            }
            i11++;
        }
        return true;
    }
}
