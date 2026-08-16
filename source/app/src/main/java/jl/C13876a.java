package jl;

import Bi.A;

public class C13876a implements A {

    public final g f93956a;

    public C13876a(g gVar) {
        this.f93956a = gVar;
    }

    @Override
    public int a() {
        return this.f93956a.d().g() + 160;
    }

    @Override
    public byte[] b(byte[] bArr) {
        C13881f d10 = this.f93956a.d();
        int c10 = d10.c();
        int f10 = d10.f();
        int m10 = d10.m();
        int g10 = d10.g();
        int i10 = d10.i();
        int j10 = d10.j();
        int k10 = d10.k();
        int l10 = d10.l();
        byte[] bArr2 = new byte[c10];
        q.l(bArr2, this.f93956a.getEncoded(), c10);
        byte[] bArr3 = new byte[g10];
        System.arraycopy(bArr, 0, bArr3, 0, g10);
        short[] sArr = new short[c10];
        q.x(sArr, bArr3, c10, f10);
        byte[] bArr4 = new byte[128];
        System.arraycopy(bArr, g10, bArr4, 0, 128);
        byte[] bArr5 = new byte[256];
        q.A(bArr5, bArr4);
        short[] sArr2 = new short[c10];
        q.I(sArr2, sArr, bArr2, c10, f10);
        byte[] bArr6 = new byte[256];
        q.J(bArr6, sArr2, bArr5, f10, m10, k10, l10);
        byte[] bArr7 = new byte[32];
        q.m(bArr7, bArr6);
        int e10 = d10.e() - 32;
        byte[] bArr8 = new byte[e10];
        System.arraycopy(this.f93956a.g(), 32, bArr8, 0, e10);
        short[] sArr3 = new short[c10];
        q.x(sArr3, bArr8, c10, f10);
        byte[] bArr9 = new byte[32];
        System.arraycopy(this.f93956a.g(), 0, bArr9, 0, 32);
        short[] sArr4 = new short[c10];
        q.j(sArr4, bArr9, c10, f10);
        byte[] p10 = q.p(new byte[]{5}, bArr7);
        int[] iArr = new int[c10];
        q.h(iArr, org.bouncycastle.util.a.X(p10, 0, p10.length / 2));
        byte[] bArr10 = new byte[c10];
        q.N(bArr10, iArr, c10, m10);
        short[] sArr5 = new short[c10];
        q.I(sArr5, sArr4, bArr10, c10, f10);
        short[] sArr6 = new short[c10];
        q.K(sArr6, sArr5);
        q.y(new byte[g10], sArr6, c10, f10);
        short[] sArr7 = new short[c10];
        q.I(sArr7, sArr3, bArr10, c10, f10);
        q.P(new byte[256], sArr7, bArr6, f10, i10, j10);
        q.B(new byte[128], bArr5);
        byte[] bArr11 = new byte[this.f93956a.f().length + 32];
        System.arraycopy(bArr7, 0, bArr11, 0, 32);
        System.arraycopy(this.f93956a.f(), 0, bArr11, 32, this.f93956a.f().length);
        byte[] p11 = q.p(new byte[]{2}, bArr11);
        int i11 = g10 + 128;
        int length = (p11.length / 2) + i11;
        byte[] bArr12 = new byte[length];
        System.arraycopy(bArr3, 0, bArr12, 0, g10);
        System.arraycopy(bArr4, 0, bArr12, g10, 128);
        System.arraycopy(p11, 0, bArr12, i11, p11.length / 2);
        q.R(bArr7, this.f93956a.h(), org.bouncycastle.util.a.g(bArr, bArr12) ? 0 : -1);
        byte[] bArr13 = new byte[32 + length];
        System.arraycopy(bArr7, 0, bArr13, 0, 32);
        System.arraycopy(bArr12, 0, bArr13, 32, length);
        return org.bouncycastle.util.a.X(q.p(new byte[]{1}, bArr13), 0, d10.h() / 8);
    }
}
