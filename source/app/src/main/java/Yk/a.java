package Yk;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Xi.C3335c;
import Xi.x0;

public class a implements S {

    public final InterfaceC2392y f30613g;

    public final g f30614h;

    public boolean f30615i;

    public a(g gVar, InterfaceC2392y interfaceC2392y) {
        this.f30614h = gVar;
        this.f30613g = interfaceC2392y;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f30615i = z10;
        C3335c c3335c = interfaceC2379k instanceof x0 ? (C3335c) ((x0) interfaceC2379k).a() : (C3335c) interfaceC2379k;
        if (z10 && !c3335c.c()) {
            throw new IllegalArgumentException("Signing Requires Private Key.");
        }
        if (!z10 && c3335c.c()) {
            throw new IllegalArgumentException("Verification Requires Public Key.");
        }
        reset();
        this.f30614h.a(z10, interfaceC2379k);
    }

    @Override
    public boolean b(byte[] bArr) {
        if (this.f30615i) {
            throw new IllegalStateException("DigestingMessageSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.f30613g.f()];
        this.f30613g.c(bArr2, 0);
        return this.f30614h.d(bArr2, bArr);
    }

    @Override
    public byte[] c() {
        if (!this.f30615i) {
            throw new IllegalStateException("DigestingMessageSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.f30613g.f()];
        this.f30613g.c(bArr, 0);
        return this.f30614h.b(bArr);
    }

    @Override
    public void reset() {
        this.f30613g.reset();
    }

    @Override
    public void update(byte b10) {
        this.f30613g.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f30613g.update(bArr, i10, i11);
    }
}
