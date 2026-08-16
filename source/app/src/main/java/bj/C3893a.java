package bj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2386s;
import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Bi.S;
import Xi.C3335c;
import Xi.x0;
import java.math.BigInteger;

public class C3893a implements S {

    public final InterfaceC2386s f33276g;

    public final InterfaceC2392y f33277h;

    public final InterfaceC3894b f33278i;

    public boolean f33279j;

    public C3893a(InterfaceC2386s interfaceC2386s, InterfaceC2392y interfaceC2392y) {
        this.f33276g = interfaceC2386s;
        this.f33277h = interfaceC2392y;
        this.f33278i = z.f33418a;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33279j = z10;
        C3335c c3335c = interfaceC2379k instanceof x0 ? (C3335c) ((x0) interfaceC2379k).a() : (C3335c) interfaceC2379k;
        if (z10 && !c3335c.c()) {
            throw new IllegalArgumentException("Signing Requires Private Key.");
        }
        if (!z10 && c3335c.c()) {
            throw new IllegalArgumentException("Verification Requires Public Key.");
        }
        reset();
        this.f33276g.a(z10, interfaceC2379k);
    }

    @Override
    public boolean b(byte[] bArr) {
        if (this.f33279j) {
            throw new IllegalStateException("DSADigestSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.f33277h.f()];
        this.f33277h.c(bArr2, 0);
        try {
            BigInteger[] a10 = this.f33278i.a(g(), bArr);
            return this.f33276g.c(bArr2, a10[0], a10[1]);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public byte[] c() {
        if (!this.f33279j) {
            throw new IllegalStateException("DSADigestSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.f33277h.f()];
        this.f33277h.c(bArr, 0);
        BigInteger[] b10 = this.f33276g.b(bArr);
        try {
            return this.f33278i.b(g(), b10[0], b10[1]);
        } catch (Exception unused) {
            throw new IllegalStateException("unable to encode signature");
        }
    }

    public BigInteger g() {
        InterfaceC2386s interfaceC2386s = this.f33276g;
        if (interfaceC2386s instanceof InterfaceC2387t) {
            return ((InterfaceC2387t) interfaceC2386s).getOrder();
        }
        return null;
    }

    @Override
    public void reset() {
        this.f33277h.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33277h.update(b10);
    }

    public C3893a(InterfaceC2387t interfaceC2387t, InterfaceC2392y interfaceC2392y, InterfaceC3894b interfaceC3894b) {
        this.f33276g = interfaceC2387t;
        this.f33277h = interfaceC2392y;
        this.f33278i = interfaceC3894b;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33277h.update(bArr, i10, i11);
    }
}
