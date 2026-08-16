package bj;

import Bi.InterfaceC2379k;
import Bi.S;
import Xi.O;
import Xi.P;
import ck.C4215h;
import java.io.ByteArrayOutputStream;

public class k implements S {

    public final b f33298g = new b();

    public final byte[] f33299h;

    public boolean f33300i;

    public O f33301j;

    public P f33302k;

    public static final class b extends ByteArrayOutputStream {
        public b() {
        }

        public synchronized byte[] a(O o10, byte[] bArr) {
            byte[] bArr2;
            bArr2 = new byte[64];
            o10.g(1, bArr, this.buf, 0, this.count, bArr2, 0);
            reset();
            return bArr2;
        }

        public synchronized boolean b(P p10, byte[] bArr, byte[] bArr2) {
            if (64 != bArr2.length) {
                reset();
                return false;
            }
            boolean g10 = p10.g(1, bArr, this.buf, 0, this.count, bArr2, 0);
            reset();
            return g10;
        }

        @Override
        public synchronized void reset() {
            org.bouncycastle.util.a.f0(this.buf, 0, this.count, (byte) 0);
            this.count = 0;
        }
    }

    public k(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'context' cannot be null");
        }
        this.f33299h = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33300i = z10;
        P p10 = null;
        if (z10) {
            this.f33301j = (O) interfaceC2379k;
        } else {
            this.f33301j = null;
            p10 = (P) interfaceC2379k;
        }
        this.f33302k = p10;
        Bi.r.a(C3891A.a(C4215h.f34909c, 128, interfaceC2379k, z10));
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        P p10;
        if (this.f33300i || (p10 = this.f33302k) == null) {
            throw new IllegalStateException("Ed25519ctxSigner not initialised for verification");
        }
        return this.f33298g.b(p10, this.f33299h, bArr);
    }

    @Override
    public byte[] c() {
        O o10;
        if (!this.f33300i || (o10 = this.f33301j) == null) {
            throw new IllegalStateException("Ed25519ctxSigner not initialised for signature generation.");
        }
        return this.f33298g.a(o10, this.f33299h);
    }

    @Override
    public void reset() {
        this.f33298g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33298g.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33298g.write(bArr, i10, i11);
    }
}
