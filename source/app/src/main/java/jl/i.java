package jl;

import Bi.A;

public class i implements A {

    public final o f93986a;

    public i(o oVar) {
        this.f93986a = oVar;
    }

    @Override
    public int a() {
        return this.f93986a.d().f() + 32;
    }

    @Override
    public byte[] b(byte[] bArr) {
        n d10 = this.f93986a.d();
        int b10 = d10.b();
        int e10 = d10.e();
        int i10 = d10.i();
        int f10 = d10.f();
        byte[] bArr2 = new byte[b10];
        q.l(bArr2, this.f93986a.e(), b10);
        byte[] bArr3 = new byte[b10];
        q.l(bArr3, this.f93986a.f(), b10);
        short[] sArr = new short[b10];
        q.x(sArr, bArr, b10, e10);
        short[] sArr2 = new short[b10];
        q.I(sArr2, sArr, bArr2, b10, e10);
        short[] sArr3 = new short[b10];
        q.M(sArr3, sArr2, 3, e10);
        byte[] bArr4 = new byte[b10];
        q.Q(bArr4, sArr3);
        byte[] bArr5 = new byte[b10];
        q.H(bArr5, bArr4, bArr3, b10);
        byte[] bArr6 = new byte[b10];
        q.b(bArr6, bArr5, b10, i10);
        byte[] bArr7 = new byte[(b10 + 3) / 4];
        q.o(bArr7, bArr6, b10);
        short[] sArr4 = new short[b10];
        q.k(sArr4, this.f93986a.h(), b10, e10);
        short[] sArr5 = new short[b10];
        q.I(sArr5, sArr4, bArr6, b10, e10);
        short[] sArr6 = new short[b10];
        q.K(sArr6, sArr5);
        byte[] bArr8 = new byte[f10];
        q.y(bArr8, sArr6, b10, e10);
        byte[] p10 = q.p(new byte[]{3}, bArr7);
        byte[] bArr9 = new byte[(p10.length / 2) + this.f93986a.g().length];
        System.arraycopy(p10, 0, bArr9, 0, p10.length / 2);
        System.arraycopy(this.f93986a.g(), 0, bArr9, p10.length / 2, this.f93986a.g().length);
        byte[] p11 = q.p(new byte[]{2}, bArr9);
        int length = (p11.length / 2) + f10;
        byte[] bArr10 = new byte[length];
        System.arraycopy(bArr8, 0, bArr10, 0, f10);
        System.arraycopy(p11, 0, bArr10, f10, p11.length / 2);
        int i11 = org.bouncycastle.util.a.g(bArr, bArr10) ? 0 : -1;
        q.R(bArr7, this.f93986a.i(), i11);
        byte[] p12 = q.p(new byte[]{3}, bArr7);
        byte[] bArr11 = new byte[(p12.length / 2) + length];
        System.arraycopy(p12, 0, bArr11, 0, p12.length / 2);
        System.arraycopy(bArr10, 0, bArr11, p12.length / 2, length);
        return org.bouncycastle.util.a.X(q.p(new byte[]{(byte) (i11 + 1)}, bArr11), 0, d10.h() / 8);
    }
}
