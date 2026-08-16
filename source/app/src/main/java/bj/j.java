package bj;

import Bi.InterfaceC2379k;
import Bi.S;
import Xi.O;
import Xi.P;
import Xi.x0;
import ck.C4215h;
import java.io.ByteArrayOutputStream;

public class j implements S {

    public final b f33294g = new b();

    public boolean f33295h;

    public O f33296i;

    public P f33297j;

    public static final class b extends ByteArrayOutputStream {
        public b() {
        }

        public synchronized byte[] a(O o10) {
            byte[] bArr;
            bArr = new byte[64];
            o10.g(0, null, this.buf, 0, this.count, bArr, 0);
            reset();
            return bArr;
        }

        public synchronized boolean b(P p10, byte[] bArr) {
            if (64 != bArr.length) {
                reset();
                return false;
            }
            boolean g10 = p10.g(0, null, this.buf, 0, this.count, bArr, 0);
            reset();
            return g10;
        }

        @Override
        public synchronized void reset() {
            org.bouncycastle.util.a.f0(this.buf, 0, this.count, (byte) 0);
            this.count = 0;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33295h = z10;
        if (interfaceC2379k instanceof x0) {
            interfaceC2379k = ((x0) interfaceC2379k).a();
        }
        P p10 = null;
        if (z10) {
            this.f33296i = (O) interfaceC2379k;
        } else {
            this.f33296i = null;
            p10 = (P) interfaceC2379k;
        }
        this.f33297j = p10;
        Bi.r.a(C3891A.a(C4215h.f34909c, 128, interfaceC2379k, z10));
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        P p10;
        if (this.f33295h || (p10 = this.f33297j) == null) {
            throw new IllegalStateException("Ed25519Signer not initialised for verification");
        }
        return this.f33294g.b(p10, bArr);
    }

    @Override
    public byte[] c() {
        O o10;
        if (!this.f33295h || (o10 = this.f33296i) == null) {
            throw new IllegalStateException("Ed25519Signer not initialised for signature generation.");
        }
        return this.f33294g.a(o10);
    }

    @Override
    public void reset() {
        this.f33294g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33294g.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33294g.write(bArr, i10, i11);
    }
}
