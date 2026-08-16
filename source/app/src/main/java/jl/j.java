package jl;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class j implements B {

    public final SecureRandom f93987a;

    public j(SecureRandom secureRandom) {
        this.f93987a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        p pVar = (p) c3335c;
        n d10 = pVar.d();
        int b10 = d10.b();
        int e10 = d10.e();
        int i10 = d10.i();
        int f10 = d10.f();
        byte[] p10 = q.p(new byte[]{4}, pVar.getEncoded());
        byte[] bArr = new byte[b10];
        q.u(this.f93987a, bArr, b10, i10);
        byte[] bArr2 = new byte[(b10 + 3) / 4];
        q.o(bArr2, bArr, b10);
        short[] sArr = new short[b10];
        q.k(sArr, pVar.e(), b10, e10);
        short[] sArr2 = new short[b10];
        q.I(sArr2, sArr, bArr, b10, e10);
        short[] sArr3 = new short[b10];
        q.K(sArr3, sArr2);
        byte[] bArr3 = new byte[f10];
        q.y(bArr3, sArr3, b10, e10);
        byte[] p11 = q.p(new byte[]{3}, bArr2);
        byte[] bArr4 = new byte[(p11.length / 2) + (p10.length / 2)];
        System.arraycopy(p11, 0, bArr4, 0, p11.length / 2);
        System.arraycopy(p10, 0, bArr4, p11.length / 2, p10.length / 2);
        byte[] p12 = q.p(new byte[]{2}, bArr4);
        int length = (p12.length / 2) + f10;
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr3, 0, bArr5, 0, f10);
        System.arraycopy(p12, 0, bArr5, f10, p12.length / 2);
        byte[] p13 = q.p(new byte[]{3}, bArr2);
        byte[] bArr6 = new byte[(p13.length / 2) + length];
        System.arraycopy(p13, 0, bArr6, 0, p13.length / 2);
        System.arraycopy(bArr5, 0, bArr6, p13.length / 2, length);
        return new C15017e(org.bouncycastle.util.a.X(q.p(new byte[]{1}, bArr6), 0, d10.h() / 8), bArr5);
    }
}
