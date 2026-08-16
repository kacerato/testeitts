package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;

public class n {

    public static final short f102204a = -32126;

    public static final short f102205b = -31869;

    public static v a(A a10, j jVar, int i10, byte[] bArr, byte[] bArr2) throws IllegalArgumentException {
        if (bArr2 != null && bArr2.length >= a10.d()) {
            return new v(a10, jVar, i10, bArr, 1 << a10.c(), bArr2);
        }
        throw new IllegalArgumentException("root seed is less than " + a10.d());
    }

    public static x b(o oVar) {
        return new x(oVar.g().e(), B.c(oVar.g(), oVar.k(), oVar.a()), oVar.l(), oVar.d());
    }

    public static x c(v vVar, byte[] bArr) {
        o T02 = vVar.T0();
        T02.update(bArr, 0, bArr.length);
        return b(T02);
    }

    public static boolean d(w wVar, o oVar) {
        x xVar = (x) oVar.m();
        A c10 = xVar.c();
        int c11 = c10.c();
        byte[][] e10 = xVar.e();
        byte[] g10 = B.g(oVar);
        int d10 = (1 << c11) + xVar.d();
        byte[] e11 = wVar.e();
        InterfaceC2392y d11 = C14746b.d(c10);
        int f10 = d11.f();
        byte[] bArr = new byte[f10];
        d11.update(e11, 0, e11.length);
        C.e(d10, d11);
        C.d(f102204a, d11);
        d11.update(g10, 0, g10.length);
        d11.c(bArr, 0);
        int i10 = 0;
        while (d10 > 1) {
            if ((d10 & 1) == 1) {
                d11.update(e11, 0, e11.length);
                C.e(d10 / 2, d11);
                C.d(f102205b, d11);
                byte[] bArr2 = e10[i10];
                d11.update(bArr2, 0, bArr2.length);
                d11.update(bArr, 0, f10);
            } else {
                d11.update(e11, 0, e11.length);
                C.e(d10 / 2, d11);
                C.d(f102205b, d11);
                d11.update(bArr, 0, f10);
                byte[] bArr3 = e10[i10];
                d11.update(bArr3, 0, bArr3.length);
            }
            d11.c(bArr, 0);
            d10 /= 2;
            i10++;
            if (i10 == e10.length && d10 > 1) {
                return false;
            }
        }
        return wVar.k(bArr);
    }

    public static boolean e(w wVar, x xVar, byte[] bArr) {
        o d10 = wVar.d(xVar);
        C.b(bArr, d10);
        return d(wVar, d10);
    }

    public static boolean f(w wVar, byte[] bArr, byte[] bArr2) {
        o b10 = wVar.b(bArr);
        C.b(bArr2, b10);
        return d(wVar, b10);
    }
}
