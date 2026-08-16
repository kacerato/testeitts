package xl;

import Xh.v;
import dl.C12964n;
import dl.C12965o;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import sl.InterfaceC15346g;
import sl.InterfaceC15347h;

public class C16121a implements InterfaceC15346g {

    public static final long f129841f = 1;

    public transient C12964n f129842b;

    public transient String f129843c;

    public transient byte[] f129844d;

    public transient G f129845e;

    public C16121a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public InterfaceC15347h A0() {
        return new C16122b(new C12965o(this.f129842b.d(), this.f129842b.f()));
    }

    public C12964n a() {
        return this.f129842b;
    }

    public final void b(v vVar) throws IOException {
        c((C12964n) C15014b.b(vVar), vVar.u());
    }

    public final void c(C12964n c12964n, G g10) {
        this.f129845e = g10;
        this.f129842b = c12964n;
        this.f129843c = w.p(c12964n.d().b());
    }

    public final void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(v.v((byte[]) objectInputStream.readObject()));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C16121a) {
            return org.bouncycastle.util.a.g(getEncoded(), ((C16121a) obj).getEncoded());
        }
        return false;
    }

    public final void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public final String getAlgorithm() {
        return this.f129843c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f129844d == null) {
            this.f129844d = Ml.e.b(this.f129842b, this.f129845e);
        }
        return org.bouncycastle.util.a.p(this.f129844d);
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public Ol.d t() {
        return Ol.d.a(this.f129842b.d().b());
    }

    public C16121a(C12964n c12964n) {
        c(c12964n, null);
    }
}
