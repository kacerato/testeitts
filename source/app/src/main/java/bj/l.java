package bj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Xi.O;
import Xi.P;
import ck.C4215h;
import pk.AbstractC15007b;

public class l implements S {

    public final InterfaceC2392y f33303g = AbstractC15007b.j();

    public final byte[] f33304h;

    public boolean f33305i;

    public O f33306j;

    public P f33307k;

    public l(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'context' cannot be null");
        }
        this.f33304h = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33305i = z10;
        P p10 = null;
        if (z10) {
            this.f33306j = (O) interfaceC2379k;
        } else {
            this.f33306j = null;
            p10 = (P) interfaceC2379k;
        }
        this.f33307k = p10;
        Bi.r.a(C3891A.a(C4215h.f34909c, 128, interfaceC2379k, z10));
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        if (this.f33305i || this.f33307k == null) {
            throw new IllegalStateException("Ed25519phSigner not initialised for verification");
        }
        if (64 != bArr.length) {
            this.f33303g.reset();
            return false;
        }
        byte[] bArr2 = new byte[64];
        if (64 == this.f33303g.c(bArr2, 0)) {
            return this.f33307k.g(2, this.f33304h, bArr2, 0, 64, bArr, 0);
        }
        throw new IllegalStateException("Prehash digest failed");
    }

    @Override
    public byte[] c() {
        if (!this.f33305i || this.f33306j == null) {
            throw new IllegalStateException("Ed25519phSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[64];
        if (64 != this.f33303g.c(bArr, 0)) {
            throw new IllegalStateException("Prehash digest failed");
        }
        byte[] bArr2 = new byte[64];
        this.f33306j.g(2, this.f33304h, bArr, 0, 64, bArr2, 0);
        return bArr2;
    }

    @Override
    public void reset() {
        this.f33303g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33303g.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33303g.update(bArr, i10, i11);
    }
}
