package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;

public class B {

    public static final short f102137a = -32640;

    public static final int f102138b = 20;

    public static final int f102139c = 23;

    public static final int f102140d = 22;

    public static final int f102141e = -3;

    public static final int f102142f = 32;

    public static final short f102143g = -32383;

    public static int a(byte[] bArr, int i10, j jVar) {
        int i11 = (1 << jVar.i()) - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < (i10 * 8) / jVar.i(); i13++) {
            i12 = (i12 + i11) - b(bArr, i13, jVar.i());
        }
        return i12 << jVar.c();
    }

    public static int b(byte[] bArr, int i10, int i11) {
        int i12 = (i10 * i11) / 8;
        return (bArr[i12] >>> (((~i10) & ((8 / i11) - 1)) * i11)) & ((1 << i11) - 1);
    }

    public static m c(k kVar, byte[] bArr, byte[] bArr2) {
        j d10 = kVar.d();
        int d11 = d10.d();
        int e10 = d10.e();
        int i10 = d10.i();
        byte[] bArr3 = new byte[e10 * d11];
        InterfaceC2392y c10 = C14746b.c(d10);
        D a10 = kVar.a();
        int a11 = a(bArr, d11, d10);
        bArr[d11] = (byte) ((a11 >>> 8) & 255);
        bArr[d11 + 1] = (byte) a11;
        int i11 = d11 + 23;
        byte[] b10 = C14745a.i().d(kVar.b()).m(kVar.e()).k(0, i11).b();
        a10.h(0);
        int i12 = 0;
        while (i12 < e10) {
            org.bouncycastle.util.p.P((short) i12, b10, 20);
            int i13 = 23;
            a10.b(b10, i12 < e10 + (-1), 23);
            int b11 = b(bArr, i12, i10);
            for (int i14 = 0; i14 < b11; i14++) {
                b10[22] = (byte) i14;
                c10.update(b10, 0, i11);
                i13 = 23;
                c10.c(b10, 23);
            }
            System.arraycopy(b10, i13, bArr3, d11 * i12, d11);
            i12++;
        }
        return new m(d10, bArr2, bArr3);
    }

    public static m d(A a10, k kVar, byte[][] bArr, byte[] bArr2, boolean z10) {
        byte[] bArr3;
        byte[] bArr4 = new byte[34];
        if (z10) {
            int d10 = kVar.d().d();
            bArr3 = new byte[d10];
            System.arraycopy(bArr2, 0, bArr4, 0, d10);
        } else {
            o f10 = kVar.f(a10, bArr);
            C.a(bArr2, 0, bArr2.length, f10);
            bArr3 = f10.a();
            bArr4 = f10.k();
        }
        return c(kVar, bArr4, bArr3);
    }

    public static boolean e(l lVar, m mVar, byte[] bArr, boolean z10) throws LMSException {
        if (mVar.c().equals(lVar.f())) {
            return org.bouncycastle.util.a.g(f(lVar, mVar, bArr), lVar.e());
        }
        throw new LMSException("public key and signature ots types do not match");
    }

    public static byte[] f(l lVar, m mVar, byte[] bArr) {
        o a10 = lVar.a(mVar);
        C.b(bArr, a10);
        return g(a10);
    }

    public static byte[] g(o oVar) {
        l j10 = oVar.j();
        j f10 = j10.f();
        Object m10 = oVar.m();
        m b10 = m10 instanceof x ? ((x) m10).b() : (m) m10;
        int d10 = f10.d();
        int i10 = f10.i();
        int e10 = f10.e();
        byte[] k10 = oVar.k();
        int a10 = a(k10, d10, f10);
        k10[d10] = (byte) ((a10 >>> 8) & 255);
        k10[d10 + 1] = (byte) a10;
        byte[] c10 = j10.c();
        int g10 = j10.g();
        InterfaceC2392y c11 = C14746b.c(f10);
        C.b(c10, c11);
        C.e(g10, c11);
        C.d(f102137a, c11);
        C14745a m11 = C14745a.i().d(c10).m(g10);
        int i11 = d10 + 23;
        byte[] b11 = m11.k(0, i11).b();
        int i12 = (1 << i10) - 1;
        byte[] d11 = b10.d();
        InterfaceC2392y c12 = C14746b.c(f10);
        for (int i13 = 0; i13 < e10; i13++) {
            org.bouncycastle.util.p.P((short) i13, b11, 20);
            System.arraycopy(d11, i13 * d10, b11, 23, d10);
            for (int b12 = b(k10, i13, i10); b12 < i12; b12++) {
                b11[22] = (byte) b12;
                c12.update(b11, 0, i11);
                c12.c(b11, 23);
            }
            c11.update(b11, 23, d10);
        }
        byte[] bArr = new byte[d10];
        c11.c(bArr, 0);
        return bArr;
    }

    public static l h(k kVar) {
        return new l(kVar.d(), kVar.b(), kVar.e(), i(kVar.d(), kVar.b(), kVar.e(), kVar.c()));
    }

    public static byte[] i(j jVar, byte[] bArr, int i10, byte[] bArr2) {
        InterfaceC2392y c10 = C14746b.c(jVar);
        byte[] b10 = C14745a.i().d(bArr).m(i10).l(-32640).k(0, 22).b();
        c10.update(b10, 0, b10.length);
        InterfaceC2392y c11 = C14746b.c(jVar);
        byte[] b11 = C14745a.i().d(bArr).m(i10).k(0, c11.f() + 23).b();
        D d10 = new D(bArr, bArr2, C14746b.c(jVar));
        d10.i(i10);
        d10.h(0);
        int e10 = jVar.e();
        int d11 = jVar.d();
        int i11 = (1 << jVar.i()) - 1;
        int i12 = 0;
        while (i12 < e10) {
            d10.b(b11, i12 < e10 + (-1), 23);
            org.bouncycastle.util.p.P((short) i12, b11, 20);
            for (int i13 = 0; i13 < i11; i13++) {
                b11[22] = (byte) i13;
                c11.update(b11, 0, b11.length);
                c11.c(b11, 23);
            }
            c10.update(b11, 23, d11);
            i12++;
        }
        byte[] bArr3 = new byte[c10.f()];
        c10.c(bArr3, 0);
        return bArr3;
    }
}
