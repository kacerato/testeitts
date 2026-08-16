package bj;

import Bi.InterfaceC2392y;
import Xi.C3360o0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class q implements c {

    public final Si.k f33323a;

    public final byte[] f33324b;

    public final byte[] f33325c;

    public BigInteger f33326d;

    public q(InterfaceC2392y interfaceC2392y) {
        Si.k kVar = new Si.k(interfaceC2392y);
        this.f33323a = kVar;
        int d10 = kVar.d();
        this.f33325c = new byte[d10];
        this.f33324b = new byte[d10];
    }

    @Override
    public void a(BigInteger bigInteger, SecureRandom secureRandom) {
        throw new IllegalStateException("Operation not supported");
    }

    @Override
    public BigInteger b() {
        int k10 = org.bouncycastle.util.b.k(this.f33326d);
        byte[] bArr = new byte[k10];
        while (true) {
            int i10 = 0;
            while (i10 < k10) {
                Si.k kVar = this.f33323a;
                byte[] bArr2 = this.f33325c;
                kVar.update(bArr2, 0, bArr2.length);
                this.f33323a.c(this.f33325c, 0);
                int min = Math.min(k10 - i10, this.f33325c.length);
                System.arraycopy(this.f33325c, 0, bArr, i10, min);
                i10 += min;
            }
            BigInteger e10 = e(bArr);
            if (e10.signum() > 0 && e10.compareTo(this.f33326d) < 0) {
                return e10;
            }
            Si.k kVar2 = this.f33323a;
            byte[] bArr3 = this.f33325c;
            kVar2.update(bArr3, 0, bArr3.length);
            this.f33323a.update((byte) 0);
            this.f33323a.c(this.f33324b, 0);
            this.f33323a.a(new C3360o0(this.f33324b));
            Si.k kVar3 = this.f33323a;
            byte[] bArr4 = this.f33325c;
            kVar3.update(bArr4, 0, bArr4.length);
            this.f33323a.c(this.f33325c, 0);
        }
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public void d(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f33326d = bigInteger;
        BigInteger e10 = e(bArr);
        if (e10.compareTo(bigInteger) >= 0) {
            e10 = e10.subtract(bigInteger);
        }
        int k10 = org.bouncycastle.util.b.k(bigInteger);
        byte[] b10 = org.bouncycastle.util.b.b(k10, bigInteger2);
        byte[] b11 = org.bouncycastle.util.b.b(k10, e10);
        org.bouncycastle.util.a.e0(this.f33324b, (byte) 0);
        org.bouncycastle.util.a.e0(this.f33325c, (byte) 1);
        this.f33323a.a(new C3360o0(this.f33324b));
        Si.k kVar = this.f33323a;
        byte[] bArr2 = this.f33325c;
        kVar.update(bArr2, 0, bArr2.length);
        this.f33323a.update((byte) 0);
        this.f33323a.update(b10, 0, b10.length);
        this.f33323a.update(b11, 0, b11.length);
        f(this.f33323a);
        this.f33323a.c(this.f33324b, 0);
        this.f33323a.a(new C3360o0(this.f33324b));
        Si.k kVar2 = this.f33323a;
        byte[] bArr3 = this.f33325c;
        kVar2.update(bArr3, 0, bArr3.length);
        this.f33323a.c(this.f33325c, 0);
        Si.k kVar3 = this.f33323a;
        byte[] bArr4 = this.f33325c;
        kVar3.update(bArr4, 0, bArr4.length);
        this.f33323a.update((byte) 1);
        this.f33323a.update(b10, 0, b10.length);
        this.f33323a.update(b11, 0, b11.length);
        g(this.f33323a);
        this.f33323a.c(this.f33324b, 0);
        this.f33323a.a(new C3360o0(this.f33324b));
        Si.k kVar4 = this.f33323a;
        byte[] bArr5 = this.f33325c;
        kVar4.update(bArr5, 0, bArr5.length);
        this.f33323a.c(this.f33325c, 0);
    }

    public final BigInteger e(byte[] bArr) {
        int length = bArr.length * 8;
        int bitLength = this.f33326d.bitLength();
        BigInteger i10 = org.bouncycastle.util.b.i(bArr);
        return length > bitLength ? i10.shiftRight(length - bitLength) : i10;
    }

    public void f(Si.k kVar) {
    }

    public void g(Si.k kVar) {
    }
}
