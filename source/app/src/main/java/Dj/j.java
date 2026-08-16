package Dj;

import Ek.C2492c;
import Ek.s;
import Fk.S;
import Qk.InterfaceC3014g;
import java.io.IOException;
import java.io.OutputStream;
import yk.C16205g;

public class j implements org.bouncycastle.util.g {

    public final C2492c f5249b;

    public j(C2492c c2492c) {
        this.f5249b = c2492c;
    }

    public s a() {
        return this.f5249b.x();
    }

    public n b() {
        S P10 = this.f5249b.z().P();
        if (P10 != null) {
            return new n(P10);
        }
        return null;
    }

    public p c() {
        return new p(this.f5249b.z().T());
    }

    public boolean d(Gj.e eVar) throws Exception {
        InterfaceC3014g interfaceC3014g = eVar.get(this.f5249b.y().x());
        OutputStream outputStream = interfaceC3014g.getOutputStream();
        outputStream.write(C16205g.a(this.f5249b.z(), Lk.a.f14391A.f()));
        outputStream.close();
        return interfaceC3014g.verify(Gj.a.b(this.f5249b.y()));
    }

    public C2492c e() {
        return this.f5249b;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C16205g.a(this.f5249b, Lk.a.f14396F.f());
    }
}
