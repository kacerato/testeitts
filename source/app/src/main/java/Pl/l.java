package Pl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3335c;
import Xi.x0;

public class l implements Yk.h {

    public final k f21732a;

    public g f21733b;

    public class a implements Pl.a {

        public final org.bouncycastle.util.n f21734a;

        public a(org.bouncycastle.util.n nVar) {
            this.f21734a = nVar;
        }

        @Override
        public InterfaceC2392y get() {
            return (InterfaceC2392y) this.f21734a.copy();
        }
    }

    public l(InterfaceC2392y interfaceC2392y) {
        if (!(interfaceC2392y instanceof org.bouncycastle.util.n)) {
            throw new IllegalArgumentException("digest must implement Memoable");
        }
        this.f21732a = new k(new a(((org.bouncycastle.util.n) interfaceC2392y).copy()));
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (z10) {
            this.f21733b = interfaceC2379k instanceof x0 ? (g) ((x0) interfaceC2379k).a() : (g) interfaceC2379k;
        }
        this.f21732a.a(z10, interfaceC2379k);
    }

    @Override
    public byte[] b(byte[] bArr) {
        if (this.f21733b == null) {
            throw new IllegalStateException("signing key no longer usable");
        }
        byte[] b10 = this.f21732a.b(bArr);
        this.f21733b = this.f21733b.q();
        return b10;
    }

    @Override
    public C3335c c() {
        g gVar = this.f21733b;
        this.f21733b = null;
        return gVar;
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        return this.f21732a.d(bArr, bArr2);
    }
}
