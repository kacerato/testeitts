package Il;

import Ol.r;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import ll.i;
import ll.j;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import sl.x;
import sl.y;

public class a implements x {

    public static final long f10048f = 1;

    public transient i f10049b;

    public transient String f10050c;

    public transient byte[] f10051d;

    public transient G f10052e;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public y A0() {
        return new b(new j(this.f10049b.e(), this.f10049b.n()));
    }

    public i a() {
        return this.f10049b;
    }

    public final void b(v vVar) throws IOException {
        c((i) C15014b.b(vVar), vVar.u());
    }

    public final void c(i iVar, G g10) {
        this.f10052e = g10;
        this.f10049b = iVar;
        this.f10050c = w.p(iVar.e().g());
    }

    public final void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(v.v((byte[]) objectInputStream.readObject()));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            return org.bouncycastle.util.a.g(getEncoded(), ((a) obj).getEncoded());
        }
        return false;
    }

    public final void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public final String getAlgorithm() {
        return this.f10050c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f10051d == null) {
            this.f10051d = Ml.e.b(this.f10049b, this.f10052e);
        }
        return org.bouncycastle.util.a.p(this.f10051d);
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public r t() {
        return r.a(this.f10049b.e().g());
    }

    public a(i iVar) {
        c(iVar, null);
    }
}
