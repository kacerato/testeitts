package bj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Xi.C3335c;
import Xi.x0;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;

public class p implements S {

    public final InterfaceC2370b f33320g;

    public final InterfaceC2392y f33321h;

    public boolean f33322i;

    public p(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y) {
        this.f33320g = interfaceC2370b;
        this.f33321h = interfaceC2392y;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33322i = z10;
        C3335c c3335c = interfaceC2379k instanceof x0 ? (C3335c) ((x0) interfaceC2379k).a() : (C3335c) interfaceC2379k;
        if (z10 && !c3335c.c()) {
            throw new IllegalArgumentException("signing requires private key");
        }
        if (!z10 && c3335c.c()) {
            throw new IllegalArgumentException("verification requires public key");
        }
        reset();
        this.f33320g.a(z10, interfaceC2379k);
    }

    @Override
    public boolean b(byte[] bArr) {
        if (this.f33322i) {
            throw new IllegalStateException("GenericSigner not initialised for verification");
        }
        int f10 = this.f33321h.f();
        byte[] bArr2 = new byte[f10];
        this.f33321h.c(bArr2, 0);
        try {
            byte[] b10 = this.f33320g.b(bArr, 0, bArr.length);
            if (b10.length < f10) {
                byte[] bArr3 = new byte[f10];
                System.arraycopy(b10, 0, bArr3, f10 - b10.length, b10.length);
                b10 = bArr3;
            }
            return org.bouncycastle.util.a.I(b10, bArr2);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public byte[] c() throws CryptoException, DataLengthException {
        if (!this.f33322i) {
            throw new IllegalStateException("GenericSigner not initialised for signature generation.");
        }
        int f10 = this.f33321h.f();
        byte[] bArr = new byte[f10];
        this.f33321h.c(bArr, 0);
        return this.f33320g.b(bArr, 0, f10);
    }

    @Override
    public void reset() {
        this.f33321h.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33321h.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33321h.update(bArr, i10, i11);
    }
}
