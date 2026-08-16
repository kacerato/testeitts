package jl;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class C13877b implements B {

    public final SecureRandom f93957a;

    public C13877b(SecureRandom secureRandom) {
        this.f93957a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        h hVar = (h) c3335c;
        C13881f d10 = hVar.d();
        int c10 = d10.c();
        int f10 = d10.f();
        int m10 = d10.m();
        int g10 = d10.g();
        int i10 = d10.i();
        int j10 = d10.j();
        byte[] p10 = q.p(new byte[]{4}, hVar.getEncoded());
        byte[] bArr = new byte[256];
        q.t(this.f93957a, bArr);
        byte[] bArr2 = new byte[32];
        q.m(bArr2, bArr);
        short[] sArr = new short[c10];
        q.x(sArr, hVar.e(), c10, f10);
        short[] sArr2 = new short[c10];
        q.j(sArr2, hVar.f(), c10, f10);
        byte[] p11 = q.p(new byte[]{5}, bArr2);
        int[] iArr = new int[c10];
        q.h(iArr, org.bouncycastle.util.a.X(p11, 0, p11.length / 2));
        byte[] bArr3 = new byte[c10];
        q.N(bArr3, iArr, c10, m10);
        short[] sArr3 = new short[c10];
        q.I(sArr3, sArr2, bArr3, c10, f10);
        short[] sArr4 = new short[c10];
        q.K(sArr4, sArr3);
        byte[] bArr4 = new byte[g10];
        q.y(bArr4, sArr4, c10, f10);
        short[] sArr5 = new short[c10];
        q.I(sArr5, sArr, bArr3, c10, f10);
        byte[] bArr5 = new byte[256];
        q.P(bArr5, sArr5, bArr, f10, i10, j10);
        byte[] bArr6 = new byte[128];
        q.B(bArr6, bArr5);
        byte[] bArr7 = new byte[32 + (p10.length / 2)];
        System.arraycopy(bArr2, 0, bArr7, 0, 32);
        System.arraycopy(p10, 0, bArr7, 32, p10.length / 2);
        byte[] p12 = q.p(new byte[]{2}, bArr7);
        int i11 = g10 + 128;
        int length = (p12.length / 2) + i11;
        byte[] bArr8 = new byte[length];
        System.arraycopy(bArr4, 0, bArr8, 0, g10);
        System.arraycopy(bArr6, 0, bArr8, g10, 128);
        System.arraycopy(p12, 0, bArr8, i11, p12.length / 2);
        byte[] bArr9 = new byte[32 + length];
        System.arraycopy(bArr2, 0, bArr9, 0, 32);
        System.arraycopy(bArr8, 0, bArr9, 32, length);
        return new C15017e(org.bouncycastle.util.a.X(q.p(new byte[]{1}, bArr9), 0, d10.h() / 8), bArr8);
    }
}
