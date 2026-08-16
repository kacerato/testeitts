package Ri;

import Bi.A;
import Bi.EnumC2383o;
import Bi.InterfaceC2390w;
import Bi.r;
import Xi.F0;
import java.math.BigInteger;

public class d implements A {

    public final F0 f22820a;

    public final int f22821b;

    public InterfaceC2390w f22822c;

    public d(F0 f02, int i10, InterfaceC2390w interfaceC2390w) {
        if (!f02.c()) {
            throw new IllegalArgumentException("private key required for encryption");
        }
        this.f22820a = f02;
        this.f22821b = i10;
        this.f22822c = interfaceC2390w;
        r.a(new Hi.c("RSAKem", Hi.b.a(f02.f()), f02, EnumC2383o.DECRYPTION));
    }

    @Override
    public int a() {
        return (this.f22820a.f().bitLength() + 7) / 8;
    }

    @Override
    public byte[] b(byte[] bArr) {
        BigInteger f10 = this.f22820a.f();
        return e.b(this.f22822c, f10, new BigInteger(1, bArr).modPow(this.f22820a.d(), f10), this.f22821b);
    }
}
