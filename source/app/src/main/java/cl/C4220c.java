package cl;

public class C4220c {

    public C4219b f34991a;

    public int f34992b;

    public int f34993c;

    public int f34994d;

    public int f34995e;

    public int f34996f;

    public int f34997g;

    public int f34998h;

    public p f34999i;

    public final int f35000j;

    public C4220c(C4219b c4219b) {
        this.f34991a = c4219b;
        this.f34992b = c4219b.n();
        this.f34993c = c4219b.h();
        this.f34994d = c4219b.r();
        this.f34995e = c4219b.p();
        this.f34996f = c4219b.j();
        this.f34997g = c4219b.q();
        this.f34998h = c4219b.o();
        p u10 = c4219b.u();
        this.f34999i = u10;
        int i10 = u10.f35034a;
        this.f35000j = (i10 + 472) / i10;
    }

    public static int h(m mVar, int i10, int i11, byte[] bArr, int i12) {
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            int i15 = i14 + 3;
            if (i15 > i12) {
                break;
            }
            short s10 = (short) (bArr[i14] & 255);
            byte b10 = bArr[i14 + 1];
            short s11 = (short) ((s10 | (((short) (b10 & 255)) << 8)) & 4095);
            short s12 = (short) (((((short) (bArr[i14 + 2] & 255)) << 4) | (((short) (b10 & 255)) >> 4)) & 4095);
            if (s11 < 3329) {
                mVar.q(i10 + i13, s11);
                i13++;
            }
            if (i13 < i11 && s12 < 3329) {
                mVar.q(i10 + i13, s12);
                i13++;
            }
            i14 = i15;
        }
        return i13;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[C4219b.k()];
        n nVar = new n(this.f34991a);
        n nVar2 = new n(this.f34991a);
        m mVar = new m(this.f34991a);
        m mVar2 = new m(this.f34991a);
        i(nVar, mVar, bArr);
        k(nVar2, bArr2);
        nVar.i();
        n.g(mVar2, nVar2, nVar, this.f34991a);
        mVar2.m();
        mVar2.o(mVar);
        mVar2.p();
        return mVar2.t();
    }

    public byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        n nVar = new n(this.f34991a);
        n nVar2 = new n(this.f34991a);
        n nVar3 = new n(this.f34991a);
        n nVar4 = new n(this.f34991a);
        n[] nVarArr = new n[this.f34991a.n()];
        m mVar = new m(this.f34991a);
        m mVar2 = new m(this.f34991a);
        m mVar3 = new m(this.f34991a);
        byte[] j10 = j(nVar2, bArr2);
        mVar3.h(bArr);
        for (int i10 = 0; i10 < this.f34992b; i10++) {
            nVarArr[i10] = new n(this.f34991a);
        }
        d(nVarArr, j10, true);
        byte b10 = 0;
        for (int i11 = 0; i11 < this.f34992b; i11++) {
            nVar.f(i11).k(bArr3, b10);
            b10 = (byte) (b10 + 1);
        }
        for (int i12 = 0; i12 < this.f34992b; i12++) {
            nVar3.f(i12).l(bArr3, b10);
            b10 = (byte) (b10 + 1);
        }
        mVar.l(bArr3, b10);
        nVar.i();
        for (int i13 = 0; i13 < this.f34992b; i13++) {
            n.g(nVar4.f(i13), nVarArr[i13], nVar, this.f34991a);
        }
        n.g(mVar2, nVar2, nVar, this.f34991a);
        nVar4.h();
        mVar2.m();
        nVar4.a(nVar3);
        mVar2.a(mVar);
        mVar2.a(mVar3);
        nVar4.j();
        mVar2.p();
        return e(nVar4, mVar2);
    }

    public byte[][] c() {
        n nVar = new n(this.f34991a);
        n nVar2 = new n(this.f34991a);
        n nVar3 = new n(this.f34991a);
        byte[] bArr = new byte[32];
        this.f34991a.t(bArr);
        byte[] bArr2 = new byte[64];
        this.f34999i.a(bArr2, bArr);
        byte[] bArr3 = new byte[32];
        byte[] bArr4 = new byte[32];
        System.arraycopy(bArr2, 0, bArr3, 0, 32);
        System.arraycopy(bArr2, 32, bArr4, 0, 32);
        n[] nVarArr = new n[this.f34992b];
        for (int i10 = 0; i10 < this.f34992b; i10++) {
            nVarArr[i10] = new n(this.f34991a);
        }
        d(nVarArr, bArr3, false);
        byte b10 = 0;
        for (int i11 = 0; i11 < this.f34992b; i11++) {
            nVar.f(i11).k(bArr4, b10);
            b10 = (byte) (b10 + 1);
        }
        for (int i12 = 0; i12 < this.f34992b; i12++) {
            nVar3.f(i12).k(bArr4, b10);
            b10 = (byte) (b10 + 1);
        }
        nVar.i();
        nVar3.i();
        for (int i13 = 0; i13 < this.f34992b; i13++) {
            n.g(nVar2.f(i13), nVarArr[i13], nVar, this.f34991a);
            nVar2.f(i13).e();
        }
        nVar2.a(nVar3);
        nVar2.j();
        return new byte[][]{f(nVar2, bArr3), g(nVar)};
    }

    public void d(n[] nVarArr, byte[] bArr, boolean z10) {
        byte b10;
        byte b11;
        byte[] bArr2 = new byte[(this.f35000j * this.f34999i.f35034a) + 2];
        for (int i10 = 0; i10 < this.f34992b; i10++) {
            for (int i11 = 0; i11 < this.f34992b; i11++) {
                p pVar = this.f34999i;
                if (z10) {
                    b10 = (byte) i10;
                    b11 = (byte) i11;
                } else {
                    b10 = (byte) i11;
                    b11 = (byte) i10;
                }
                pVar.e(bArr, b10, b11);
                p pVar2 = this.f34999i;
                pVar2.f(bArr2, 0, pVar2.f35034a * this.f35000j);
                int i12 = this.f35000j * this.f34999i.f35034a;
                int h10 = h(nVarArr[i10].f(i11), 0, 256, bArr2, i12);
                while (h10 < 256) {
                    int i13 = i12 % 3;
                    for (int i14 = 0; i14 < i13; i14++) {
                        bArr2[i14] = bArr2[(i12 - i13) + i14];
                    }
                    p pVar3 = this.f34999i;
                    pVar3.f(bArr2, i13, pVar3.f35034a * 2);
                    i12 = this.f34999i.f35034a + i13;
                    h10 += h(nVarArr[i10].f(i11), h10, 256 - h10, bArr2, i12);
                }
            }
        }
    }

    public final byte[] e(n nVar, m mVar) {
        byte[] bArr = new byte[this.f34996f];
        System.arraycopy(nVar.b(), 0, bArr, 0, this.f34997g);
        System.arraycopy(mVar.c(), 0, bArr, this.f34997g, this.f34998h);
        return bArr;
    }

    public byte[] f(n nVar, byte[] bArr) {
        byte[] bArr2 = new byte[this.f34994d];
        System.arraycopy(nVar.k(), 0, bArr2, 0, this.f34995e);
        System.arraycopy(bArr, 0, bArr2, this.f34995e, 32);
        return bArr2;
    }

    public byte[] g(n nVar) {
        return nVar.k();
    }

    public final void i(n nVar, m mVar, byte[] bArr) {
        nVar.d(org.bouncycastle.util.a.X(bArr, 0, this.f34991a.q()));
        mVar.f(org.bouncycastle.util.a.X(bArr, this.f34991a.q(), bArr.length));
    }

    public byte[] j(n nVar, byte[] bArr) {
        byte[] bArr2 = new byte[32];
        nVar.e(bArr);
        System.arraycopy(bArr, this.f34995e, bArr2, 0, 32);
        return bArr2;
    }

    public void k(n nVar, byte[] bArr) {
        nVar.e(bArr);
    }
}
