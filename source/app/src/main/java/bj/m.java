package bj;

import Bi.InterfaceC2379k;
import Bi.S;
import Xi.T;
import Xi.x0;
import ck.C4215h;
import java.io.ByteArrayOutputStream;

public class m implements S {

    public final b f33308g = new b();

    public final byte[] f33309h;

    public boolean f33310i;

    public Xi.S f33311j;

    public T f33312k;

    public static final class b extends ByteArrayOutputStream {
        public b() {
        }

        public synchronized byte[] a(Xi.S s10, byte[] bArr) {
            byte[] bArr2;
            bArr2 = new byte[114];
            s10.g(0, bArr, this.buf, 0, this.count, bArr2, 0);
            reset();
            return bArr2;
        }

        public synchronized boolean b(T t10, byte[] bArr, byte[] bArr2) {
            if (114 != bArr2.length) {
                reset();
                return false;
            }
            boolean g10 = t10.g(0, bArr, this.buf, 0, this.count, bArr2, 0);
            reset();
            return g10;
        }

        @Override
        public synchronized void reset() {
            org.bouncycastle.util.a.f0(this.buf, 0, this.count, (byte) 0);
            this.count = 0;
        }
    }

    public m(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'context' cannot be null");
        }
        this.f33309h = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33310i = z10;
        if (interfaceC2379k instanceof x0) {
            interfaceC2379k = ((x0) interfaceC2379k).a();
        }
        T t10 = null;
        if (z10) {
            this.f33311j = (Xi.S) interfaceC2379k;
        } else {
            this.f33311j = null;
            t10 = (T) interfaceC2379k;
        }
        this.f33312k = t10;
        Bi.r.a(C3891A.a(C4215h.f34910d, 224, interfaceC2379k, z10));
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        T t10;
        if (this.f33310i || (t10 = this.f33312k) == null) {
            throw new IllegalStateException("Ed448Signer not initialised for verification");
        }
        return this.f33308g.b(t10, this.f33309h, bArr);
    }

    @Override
    public byte[] c() {
        Xi.S s10;
        if (!this.f33310i || (s10 = this.f33311j) == null) {
            throw new IllegalStateException("Ed448Signer not initialised for signature generation.");
        }
        return this.f33308g.a(s10, this.f33309h);
    }

    @Override
    public void reset() {
        this.f33308g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33308g.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33308g.write(bArr, i10, i11);
    }
}
