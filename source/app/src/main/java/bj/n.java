package bj;

import Bi.InterfaceC2379k;
import Bi.S;
import Bi.a0;
import Xi.T;
import ck.C4215h;
import pk.AbstractC15008c;

public class n implements S {

    public final a0 f33313g = AbstractC15008c.i();

    public final byte[] f33314h;

    public boolean f33315i;

    public Xi.S f33316j;

    public T f33317k;

    public n(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'context' cannot be null");
        }
        this.f33314h = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33315i = z10;
        T t10 = null;
        if (z10) {
            this.f33316j = (Xi.S) interfaceC2379k;
        } else {
            this.f33316j = null;
            t10 = (T) interfaceC2379k;
        }
        this.f33317k = t10;
        Bi.r.a(C3891A.a(C4215h.f34910d, 224, interfaceC2379k, z10));
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        if (this.f33315i || this.f33317k == null) {
            throw new IllegalStateException("Ed448phSigner not initialised for verification");
        }
        if (114 != bArr.length) {
            this.f33313g.reset();
            return false;
        }
        byte[] bArr2 = new byte[64];
        if (64 == this.f33313g.e(bArr2, 0, 64)) {
            return this.f33317k.g(1, this.f33314h, bArr2, 0, 64, bArr, 0);
        }
        throw new IllegalStateException("Prehash digest failed");
    }

    @Override
    public byte[] c() {
        if (!this.f33315i || this.f33316j == null) {
            throw new IllegalStateException("Ed448phSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[64];
        if (64 != this.f33313g.e(bArr, 0, 64)) {
            throw new IllegalStateException("Prehash digest failed");
        }
        byte[] bArr2 = new byte[114];
        this.f33316j.g(1, this.f33314h, bArr, 0, 64, bArr2, 0);
        return bArr2;
    }

    @Override
    public void reset() {
        this.f33313g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33313g.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33313g.update(bArr, i10, i11);
    }
}
