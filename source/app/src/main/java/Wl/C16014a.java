package wl;

import Xh.v;
import bl.C3905f;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import sl.InterfaceC15343d;
import sl.InterfaceC15344e;

public class C16014a implements InterfaceC15343d {

    public static final long f127590f = 1;

    public transient C3905f f127591b;

    public transient String f127592c;

    public transient byte[] f127593d;

    public transient G f127594e;

    public C16014a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public InterfaceC15344e A0() {
        return new C16015b(this.f127591b.h());
    }

    public C3905f a() {
        return this.f127591b;
    }

    public final void b(v vVar) throws IOException {
        c((C3905f) C15014b.b(vVar), vVar.u());
    }

    public final void c(C3905f c3905f, G g10) {
        this.f127594e = g10;
        this.f127591b = c3905f;
        this.f127592c = w.p(c3905f.d().b());
    }

    public final void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(v.v((byte[]) objectInputStream.readObject()));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C16014a) {
            return org.bouncycastle.util.a.g(getEncoded(), ((C16014a) obj).getEncoded());
        }
        return false;
    }

    public final void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public final String getAlgorithm() {
        return this.f127592c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f127593d == null) {
            this.f127593d = Ml.e.b(this.f127591b, this.f127594e);
        }
        return org.bouncycastle.util.a.p(this.f127593d);
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public Ol.c t() {
        return Ol.c.a(this.f127591b.d().b());
    }

    public C16014a(C3905f c3905f) {
        c(c3905f, null);
    }
}
