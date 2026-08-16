package Il;

import Ol.r;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import ll.j;
import org.bouncycastle.util.w;
import pl.C15016d;
import sl.y;

public class b implements y {

    public static final long f10053e = 1;

    public transient j f10054b;

    public transient String f10055c;

    public transient byte[] f10056d;

    public b(h0 h0Var) throws IOException {
        b(h0Var);
    }

    private void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void e(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public j a() {
        return this.f10054b;
    }

    public final void b(h0 h0Var) throws IOException {
        c((j) C15016d.a(h0Var));
    }

    public final void c(j jVar) {
        this.f10054b = jVar;
        this.f10055c = w.p(jVar.e().g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(getEncoded(), ((b) obj).getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return this.f10055c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f10056d == null) {
            this.f10056d = Ml.e.d(this.f10054b);
        }
        return org.bouncycastle.util.a.p(this.f10056d);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public r t() {
        return r.a(this.f10054b.e().g());
    }

    public b(j jVar) {
        c(jVar);
    }
}
