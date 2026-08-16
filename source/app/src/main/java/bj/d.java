package bj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2387t;
import Xi.C3373x;
import Xi.C3375z;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class d implements InterfaceC2387t {

    public final c f33280g;

    public C3373x f33281h;

    public SecureRandom f33282i;

    public d() {
        this.f33280g = new x();
    }

    private BigInteger d(BigInteger bigInteger, byte[] bArr) {
        if (bigInteger.bitLength() >= bArr.length * 8) {
            return new BigInteger(1, bArr);
        }
        int bitLength = bigInteger.bitLength() / 8;
        byte[] bArr2 = new byte[bitLength];
        System.arraycopy(bArr, 0, bArr2, 0, bitLength);
        return new BigInteger(1, bArr2);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        C3373x c3373x;
        SecureRandom secureRandom;
        if (!z10) {
            c3373x = (Xi.B) interfaceC2379k;
        } else {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f33281h = (Xi.A) x0Var.a();
                secureRandom = x0Var.b();
                Bi.r.a(C3891A.b("DSA", this.f33281h, z10));
                this.f33282i = f((z10 || this.f33280g.c()) ? false : true, secureRandom);
            }
            c3373x = (Xi.A) interfaceC2379k;
        }
        this.f33281h = c3373x;
        secureRandom = null;
        Bi.r.a(C3891A.b("DSA", this.f33281h, z10));
        this.f33282i = f((z10 || this.f33280g.c()) ? false : true, secureRandom);
    }

    @Override
    public BigInteger[] b(byte[] bArr) {
        C3375z d10 = this.f33281h.d();
        BigInteger c10 = d10.c();
        BigInteger d11 = d(c10, bArr);
        BigInteger e10 = ((Xi.A) this.f33281h).e();
        if (this.f33280g.c()) {
            this.f33280g.d(c10, e10, bArr);
        } else {
            this.f33280g.a(c10, this.f33282i);
        }
        BigInteger b10 = this.f33280g.b();
        BigInteger mod = d10.a().modPow(b10.add(e(c10, this.f33282i)), d10.b()).mod(c10);
        return new BigInteger[]{mod, org.bouncycastle.util.b.n(c10, b10).multiply(d11.add(e10.multiply(mod))).mod(c10)};
    }

    @Override
    public boolean c(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        C3375z d10 = this.f33281h.d();
        BigInteger c10 = d10.c();
        BigInteger d11 = d(c10, bArr);
        BigInteger valueOf = BigInteger.valueOf(0L);
        if (valueOf.compareTo(bigInteger) >= 0 || c10.compareTo(bigInteger) <= 0 || valueOf.compareTo(bigInteger2) >= 0 || c10.compareTo(bigInteger2) <= 0) {
            return false;
        }
        BigInteger o10 = org.bouncycastle.util.b.o(c10, bigInteger2);
        BigInteger mod = d11.multiply(o10).mod(c10);
        BigInteger mod2 = bigInteger.multiply(o10).mod(c10);
        BigInteger b10 = d10.b();
        return d10.a().modPow(mod, b10).multiply(((Xi.B) this.f33281h).e().modPow(mod2, b10)).mod(b10).mod(c10).equals(bigInteger);
    }

    public final BigInteger e(BigInteger bigInteger, SecureRandom secureRandom) {
        return org.bouncycastle.util.b.f(7, Bi.r.i(secureRandom)).add(BigInteger.valueOf(128L)).multiply(bigInteger);
    }

    public SecureRandom f(boolean z10, SecureRandom secureRandom) {
        if (z10) {
            return Bi.r.i(secureRandom);
        }
        return null;
    }

    @Override
    public BigInteger getOrder() {
        return this.f33281h.d().c();
    }

    public d(c cVar) {
        this.f33280g = cVar;
    }
}
