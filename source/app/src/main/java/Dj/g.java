package Dj;

import Ek.E;
import Ek.v;
import Qk.InterfaceC3014g;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import yk.C16201c;
import yk.C16205g;
import yk.C16206h;

public class g {

    public static final C16201c f5242b = Jk.a.f10640d.f();

    public final E f5243a;

    public g(Ck.e eVar) {
        if (eVar.v().v() != 1) {
            throw new IllegalStateException("EtsiTs103097Data-Signed did not have signed data content");
        }
        this.f5243a = E.w(eVar.v());
    }

    public byte[] a() {
        return C16205g.a(new Ck.e(Ek.p.B(this.f5243a)), Jk.a.f10640d.f());
    }

    public E b() {
        return this.f5243a;
    }

    public boolean c(Gj.e eVar) throws Exception {
        InterfaceC3014g interfaceC3014g = eVar.get(this.f5243a.x().x());
        OutputStream outputStream = interfaceC3014g.getOutputStream();
        outputStream.write(C16205g.a(this.f5243a.z(), Lk.a.f14403M.f()));
        outputStream.close();
        return interfaceC3014g.verify(Gj.a.b(this.f5243a.x()));
    }

    public g(v vVar) throws IOException {
        this(vVar.x());
    }

    public g(E e10) {
        this.f5243a = e10;
    }

    public g(InputStream inputStream) throws IOException {
        Ek.p v10 = Ck.e.z((inputStream instanceof C16206h ? (C16206h) inputStream : new C16206h(inputStream)).o(f5242b)).v();
        if (v10.v() != 1) {
            throw new IllegalStateException("EtsiTs103097Data-Signed did not have signed data content");
        }
        this.f5243a = E.w(v10.x());
    }

    public g(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
