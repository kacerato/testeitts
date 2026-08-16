package Ul;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.x0;
import java.security.SecureRandom;

public class h implements Yk.g {

    public static final int f26327f = 65536;

    public SecureRandom f26328a;

    public int f26329b;

    public short[] f26330c;

    public Vl.a f26331d = new Vl.a();

    public d f26332e;

    private short[] f(byte[] bArr) {
        int i10 = this.f26329b;
        short[] sArr = new short[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < bArr.length) {
            short s10 = bArr[i12];
            sArr[i11] = s10;
            sArr[i11] = (short) (s10 & 255);
            i12++;
            i11++;
            if (i11 >= i10) {
                break;
            }
        }
        return sArr;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        d dVar;
        if (!z10) {
            dVar = (g) interfaceC2379k;
        } else {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f26328a = x0Var.b();
                this.f26332e = (f) x0Var.a();
                this.f26329b = this.f26332e.d();
            }
            this.f26328a = r.h();
            dVar = (f) interfaceC2379k;
        }
        this.f26332e = dVar;
        this.f26329b = this.f26332e.d();
    }

    @Override
    public byte[] b(byte[] bArr) {
        a[] i10 = ((f) this.f26332e).i();
        int length = i10.length;
        this.f26330c = new short[((f) this.f26332e).h().length];
        int g10 = i10[length - 1].g();
        byte[] bArr2 = new byte[g10];
        short[] f10 = f(bArr);
        int i11 = 0;
        while (true) {
            try {
                short[] e10 = e(i10, f10);
                int i12 = 0;
                for (int i13 = 0; i13 < length; i13++) {
                    short[] sArr = new short[i10[i13].e()];
                    short[] sArr2 = new short[i10[i13].e()];
                    for (int i14 = 0; i14 < i10[i13].e(); i14++) {
                        sArr[i14] = e10[i12];
                        i12++;
                    }
                    short[] k10 = this.f26331d.k(i10[i13].h(this.f26330c), sArr);
                    if (k10 == null) {
                        throw new Exception("LES is not solveable!");
                    }
                    for (int i15 = 0; i15 < k10.length; i15++) {
                        this.f26330c[i10[i13].f() + i15] = k10[i15];
                    }
                }
                short[] i16 = this.f26331d.i(((f) this.f26332e).h(), this.f26331d.b(((f) this.f26332e).f(), this.f26330c));
                for (int i17 = 0; i17 < g10; i17++) {
                    bArr2[i17] = (byte) i16[i17];
                }
            } catch (Exception unused) {
                i11++;
                if (i11 >= 65536) {
                    break;
                }
            }
        }
        if (i11 != 65536) {
            return bArr2;
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        short[] sArr = new short[bArr2.length];
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            sArr[i10] = (short) (bArr2[i10] & 255);
        }
        short[] f10 = f(bArr);
        short[] g10 = g(sArr);
        if (f10.length != g10.length) {
            return false;
        }
        boolean z10 = true;
        for (int i11 = 0; i11 < f10.length; i11++) {
            z10 = z10 && f10[i11] == g10[i11];
        }
        return z10;
    }

    public final short[] e(a[] aVarArr, short[] sArr) {
        short[] sArr2 = new short[sArr.length];
        short[] i10 = this.f26331d.i(((f) this.f26332e).g(), this.f26331d.b(((f) this.f26332e).e(), sArr));
        for (int i11 = 0; i11 < aVarArr[0].f(); i11++) {
            this.f26330c[i11] = (short) this.f26328a.nextInt();
            short[] sArr3 = this.f26330c;
            sArr3[i11] = (short) (sArr3[i11] & 255);
        }
        return i10;
    }

    public final short[] g(short[] sArr) {
        short[][] e10 = ((g) this.f26332e).e();
        short[][] g10 = ((g) this.f26332e).g();
        short[] f10 = ((g) this.f26332e).f();
        short[] sArr2 = new short[e10.length];
        int length = g10[0].length;
        for (int i10 = 0; i10 < e10.length; i10++) {
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                for (int i13 = i12; i13 < length; i13++) {
                    sArr2[i10] = Vl.b.a(sArr2[i10], Vl.b.e(e10[i10][i11], Vl.b.e(sArr[i12], sArr[i13])));
                    i11++;
                }
                sArr2[i10] = Vl.b.a(sArr2[i10], Vl.b.e(g10[i10][i12], sArr[i12]));
            }
            sArr2[i10] = Vl.b.a(sArr2[i10], f10[i10]);
        }
        return sArr2;
    }
}
