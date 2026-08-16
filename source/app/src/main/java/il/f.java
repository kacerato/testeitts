package il;

import am.AbstractC3681e;
import am.C3678b;

public class f {

    public final bm.i f92403a;

    public final j f92404b;

    public f(bm.i iVar) {
        this.f92403a = iVar;
        this.f92404b = new j(iVar);
    }

    public final int a(byte[] bArr) {
        return (((~((short) (bArr[this.f92403a.d() - 1] & (255 << (8 - ((this.f92403a.b() * this.f92403a.k()) & 7)))))) + 1) >>> 15) & 1;
    }

    public final int b(C3678b c3678b) {
        short s10 = 0;
        short s11 = 0;
        for (int i10 = 0; i10 < this.f92403a.c() - 1; i10++) {
            short s12 = c3678b.f32393a[i10];
            s10 = (short) (s10 + (s12 & 1));
            s11 = (short) (s11 + (s12 & 2));
        }
        return (((~(((s11 >>> 1) ^ s10) | (((bm.e) this.f92403a).u() ^ s11))) + 1) >>> 31) & 1;
    }

    public final int c(AbstractC3681e abstractC3681e) {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f92403a.c() - 1; i11++) {
            short s10 = abstractC3681e.f32393a[i11];
            i10 = i10 | ((s10 + 1) & (this.f92403a.n() - 4)) | ((s10 + 2) & 4);
        }
        return (((~(abstractC3681e.f32393a[this.f92403a.c() - 1] | i10)) + 1) >>> 31) & 1;
    }

    public k d(byte[] bArr, byte[] bArr2) {
        int h10 = this.f92403a.h();
        byte[] bArr3 = new byte[h10];
        AbstractC3681e a10 = this.f92403a.a();
        AbstractC3681e a11 = this.f92403a.a();
        AbstractC3681e a12 = this.f92403a.a();
        AbstractC3681e a13 = this.f92403a.a();
        a10.n(bArr);
        a11.q(bArr2);
        a11.z();
        a12.m(a10, a11);
        a11.p(a12);
        a12.q(org.bouncycastle.util.a.X(bArr2, this.f92403a.l(), bArr2.length));
        a13.t(a11, a12);
        byte[] u10 = a13.u(h10 - this.f92403a.l());
        int a14 = a(bArr);
        if (this.f92403a instanceof bm.e) {
            a14 |= b((C3678b) a13);
        }
        a11.b(a13);
        for (int i10 = 0; i10 < this.f92403a.c(); i10++) {
            short[] sArr = a10.f32393a;
            sArr[i10] = (short) (sArr[i10] - a11.f32393a[i10]);
        }
        a12.v(org.bouncycastle.util.a.X(bArr2, this.f92403a.l() * 2, bArr2.length));
        a13.w(a10, a12);
        int c10 = a14 | c(a13);
        a13.y();
        byte[] u11 = a13.u(this.f92403a.h());
        System.arraycopy(u11, 0, bArr3, 0, u11.length);
        System.arraycopy(u10, 0, bArr3, this.f92403a.l(), u10.length);
        return new k(bArr3, c10);
    }

    public byte[] e(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2, byte[] bArr) {
        AbstractC3681e a10 = this.f92403a.a();
        AbstractC3681e a11 = this.f92403a.a();
        a10.n(bArr);
        a11.m(abstractC3681e, a10);
        a10.b(abstractC3681e2);
        for (int i10 = 0; i10 < this.f92403a.c(); i10++) {
            short[] sArr = a11.f32393a;
            sArr[i10] = (short) (sArr[i10] + a10.f32393a[i10]);
        }
        return a11.o(this.f92403a.d());
    }

    public l f(byte[] bArr) {
        int j10 = this.f92403a.j();
        byte[] bArr2 = new byte[j10];
        int c10 = this.f92403a.c();
        this.f92403a.n();
        AbstractC3681e a10 = this.f92403a.a();
        AbstractC3681e a11 = this.f92403a.a();
        AbstractC3681e a12 = this.f92403a.a();
        m b10 = this.f92404b.b(bArr);
        AbstractC3681e a13 = b10.a();
        AbstractC3681e b11 = b10.b();
        a10.r(a13);
        byte[] u10 = a13.u(this.f92403a.h());
        System.arraycopy(u10, 0, bArr2, 0, u10.length);
        byte[] u11 = a10.u(j10 - this.f92403a.l());
        System.arraycopy(u11, 0, bArr2, this.f92403a.l(), u11.length);
        a13.z();
        b11.z();
        if (this.f92403a instanceof bm.h) {
            for (int i10 = c10 - 1; i10 > 0; i10--) {
                short[] sArr = b11.f32393a;
                sArr[i10] = (short) ((sArr[i10 - 1] - sArr[i10]) * 3);
            }
            short[] sArr2 = b11.f32393a;
            sArr2[0] = (short) (-(sArr2[0] * 3));
        } else {
            for (int i11 = 0; i11 < c10; i11++) {
                short[] sArr3 = b11.f32393a;
                sArr3[i11] = (short) (sArr3[i11] * 3);
            }
        }
        a10.m(b11, a13);
        a11.k(a10);
        a12.m(a11, a13);
        a10.w(a12, a13);
        byte[] x10 = a10.x(j10 - (this.f92403a.l() * 2));
        System.arraycopy(x10, 0, bArr2, this.f92403a.l() * 2, x10.length);
        a12.m(a11, b11);
        a10.m(a12, b11);
        return new l(a10.o(this.f92403a.i()), bArr2);
    }
}
