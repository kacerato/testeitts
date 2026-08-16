package Pl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Xi.x0;
import java.lang.reflect.Array;
import java.security.SecureRandom;

public class k implements Yk.g {

    public Ql.b f21717a = new Ql.b();

    public byte[] f21718b;

    public InterfaceC2392y f21719c;

    public int f21720d;

    public int f21721e;

    public InterfaceC2392y f21722f;

    public Ql.d f21723g;

    public a f21724h;

    public int[] f21725i;

    public byte[][][] f21726j;

    public byte[][] f21727k;

    public f f21728l;

    public Ql.a f21729m;

    public d f21730n;

    public SecureRandom f21731o;

    public k(a aVar) {
        this.f21724h = aVar;
        InterfaceC2392y interfaceC2392y = aVar.get();
        this.f21719c = interfaceC2392y;
        this.f21722f = interfaceC2392y;
        this.f21720d = interfaceC2392y.f();
        this.f21729m = new Ql.a(this.f21719c);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!z10) {
            this.f21730n = (h) interfaceC2379k;
            f();
            return;
        }
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f21731o = x0Var.b();
            this.f21730n = (g) x0Var.a();
        } else {
            this.f21731o = r.h();
            this.f21730n = (g) interfaceC2379k;
        }
        e();
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[this.f21720d];
        byte[] d10 = this.f21723g.d(bArr);
        byte[] c10 = this.f21717a.c(this.f21726j[this.f21721e - 1]);
        byte[] e10 = this.f21717a.e(this.f21725i[this.f21721e - 1]);
        int length = e10.length + d10.length + c10.length;
        byte[] bArr3 = new byte[length];
        System.arraycopy(e10, 0, bArr3, 0, e10.length);
        System.arraycopy(d10, 0, bArr3, e10.length, d10.length);
        System.arraycopy(c10, 0, bArr3, e10.length + d10.length, c10.length);
        byte[] bArr4 = new byte[0];
        for (int i10 = this.f21721e - 2; i10 >= 0; i10--) {
            byte[] c11 = this.f21717a.c(this.f21726j[i10]);
            byte[] e11 = this.f21717a.e(this.f21725i[i10]);
            int length2 = bArr4.length;
            byte[] bArr5 = new byte[length2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            bArr4 = new byte[e11.length + length2 + this.f21727k[i10].length + c11.length];
            System.arraycopy(bArr5, 0, bArr4, 0, length2);
            System.arraycopy(e11, 0, bArr4, length2, e11.length);
            byte[] bArr6 = this.f21727k[i10];
            System.arraycopy(bArr6, 0, bArr4, e11.length + length2, bArr6.length);
            System.arraycopy(c11, 0, bArr4, length2 + e11.length + this.f21727k[i10].length, c11.length);
        }
        byte[] bArr7 = new byte[bArr4.length + length];
        System.arraycopy(bArr3, 0, bArr7, 0, length);
        System.arraycopy(bArr4, 0, bArr7, length, bArr4.length);
        return bArr7;
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        this.f21722f.reset();
        int i10 = 0;
        for (int i11 = this.f21721e - 1; i11 >= 0; i11--) {
            Ql.c cVar = new Ql.c(this.f21724h.get(), this.f21728l.d()[i11]);
            int c10 = cVar.c();
            int b10 = this.f21717a.b(bArr2, i10);
            int i12 = i10 + 4;
            byte[] bArr3 = new byte[c10];
            System.arraycopy(bArr2, i12, bArr3, 0, c10);
            i10 = i12 + c10;
            bArr = cVar.a(bArr, bArr3);
            if (bArr == null) {
                System.err.println("OTS Public Key is null in GMSSSignature.verify");
                return false;
            }
            byte[][] bArr4 = (byte[][]) Array.newInstance(Byte.TYPE, this.f21728l.a()[i11], this.f21720d);
            for (byte[] bArr5 : bArr4) {
                System.arraycopy(bArr2, i10, bArr5, 0, this.f21720d);
                i10 += this.f21720d;
            }
            byte[] bArr6 = new byte[this.f21720d];
            int length = (1 << bArr4.length) + b10;
            for (int i13 = 0; i13 < bArr4.length; i13++) {
                int i14 = this.f21720d;
                int i15 = i14 << 1;
                byte[] bArr7 = new byte[i15];
                if (length % 2 == 0) {
                    System.arraycopy(bArr, 0, bArr7, 0, i14);
                    byte[] bArr8 = bArr4[i13];
                    int i16 = this.f21720d;
                    System.arraycopy(bArr8, 0, bArr7, i16, i16);
                    length /= 2;
                } else {
                    System.arraycopy(bArr4[i13], 0, bArr7, 0, i14);
                    System.arraycopy(bArr, 0, bArr7, this.f21720d, bArr.length);
                    length = (length - 1) / 2;
                }
                this.f21719c.update(bArr7, 0, i15);
                bArr = new byte[this.f21719c.f()];
                this.f21719c.c(bArr, 0);
            }
        }
        return org.bouncycastle.util.a.g(this.f21718b, bArr);
    }

    public final void e() {
        int i10;
        this.f21719c.reset();
        g gVar = (g) this.f21730n;
        if (gVar.o()) {
            throw new IllegalStateException("Private key already used");
        }
        if (gVar.h(0) >= gVar.l(0)) {
            throw new IllegalStateException("No more signatures can be generated");
        }
        f d10 = gVar.d();
        this.f21728l = d10;
        this.f21721e = d10.c();
        byte[] bArr = gVar.g()[this.f21721e - 1];
        int i11 = this.f21720d;
        byte[] bArr2 = new byte[i11];
        byte[] bArr3 = new byte[i11];
        System.arraycopy(bArr, 0, bArr3, 0, i11);
        this.f21723g = new Ql.d(this.f21729m.c(bArr3), this.f21724h.get(), this.f21728l.d()[this.f21721e - 1]);
        byte[][][] f10 = gVar.f();
        this.f21726j = new byte[this.f21721e][];
        int i12 = 0;
        while (true) {
            i10 = this.f21721e;
            if (i12 >= i10) {
                break;
            }
            this.f21726j[i12] = (byte[][]) Array.newInstance(Byte.TYPE, f10[i12].length, this.f21720d);
            int i13 = 0;
            while (true) {
                byte[][] bArr4 = f10[i12];
                if (i13 < bArr4.length) {
                    System.arraycopy(bArr4[i13], 0, this.f21726j[i12][i13], 0, this.f21720d);
                    i13++;
                }
            }
            i12++;
        }
        this.f21725i = new int[i10];
        System.arraycopy(gVar.i(), 0, this.f21725i, 0, this.f21721e);
        this.f21727k = new byte[this.f21721e - 1];
        for (int i14 = 0; i14 < this.f21721e - 1; i14++) {
            byte[] m10 = gVar.m(i14);
            byte[][] bArr5 = this.f21727k;
            byte[] bArr6 = new byte[m10.length];
            bArr5[i14] = bArr6;
            System.arraycopy(m10, 0, bArr6, 0, m10.length);
        }
        gVar.p();
    }

    public final void f() {
        this.f21719c.reset();
        h hVar = (h) this.f21730n;
        this.f21718b = hVar.e();
        f d10 = hVar.d();
        this.f21728l = d10;
        this.f21721e = d10.c();
    }
}
