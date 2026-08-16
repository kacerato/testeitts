package Dj;

import Ek.A;
import Ek.C2498i;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import org.bouncycastle.util.t;
import yk.C16201c;
import yk.C16205g;
import yk.C16206h;

public class a {

    public static final C16201c f5234b = Jk.a.f10642f.f();

    public final C2498i f5235a;

    public a(C2498i c2498i) {
        this.f5235a = c2498i;
    }

    public byte[] a() {
        return C16205g.a(new Ck.c(Ek.p.u(this.f5235a)), f5234b);
    }

    public C2498i b() {
        return this.f5235a;
    }

    public t<e> c() {
        ArrayList arrayList = new ArrayList();
        Iterator<A> it = this.f5235a.x().x().iterator();
        while (it.hasNext()) {
            arrayList.add(new e(this.f5235a, it.next()));
        }
        return new org.bouncycastle.util.e(arrayList);
    }

    public a(InputStream inputStream) throws IOException {
        Ek.p v10 = Ck.c.z((inputStream instanceof C16206h ? (C16206h) inputStream : new C16206h(inputStream)).o(f5234b)).v();
        if (v10.v() != 2) {
            throw new IllegalStateException("EtsiTs103097Data-Encrypted did not have encrypted data content");
        }
        this.f5235a = C2498i.w(v10.x());
    }

    public a(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
