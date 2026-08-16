package Ei;

import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Bi.InterfaceC2393z;
import Oi.z;
import Xi.C3358n0;
import hi.C13486b;
import java.io.IOException;
import oh.A0;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.K0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.p;

public class d implements InterfaceC2393z {

    public InterfaceC2393z f5833a;

    public C14549x f5834b;

    public int f5835c;

    public byte[] f5836d;

    public d(InterfaceC2392y interfaceC2392y) {
        this.f5833a = new z(interfaceC2392y);
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("output buffer too small");
        }
        C14518h c14518h = new C14518h();
        c14518h.a(new C13486b(this.f5834b, A0.f98776c));
        c14518h.a(new K0(true, 2, (InterfaceC14516g) new C0(p.k(this.f5835c))));
        try {
            this.f5833a.c(new C3358n0(this.f5836d, new G0(c14518h).s(InterfaceC14520i.f98892a)));
            return this.f5833a.a(bArr, i10, i11);
        } catch (IOException e10) {
            throw new IllegalArgumentException("unable to initialise kdf: " + e10.getMessage());
        }
    }

    @Override
    public InterfaceC2392y b() {
        return this.f5833a.b();
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        b bVar = (b) interfaceC2391x;
        this.f5834b = bVar.a();
        this.f5835c = bVar.c();
        this.f5836d = bVar.d();
    }
}
