package Bl;

import Ol.g;
import cl.k;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.util.w;
import pl.C15016d;
import sl.InterfaceC15352m;

public class b implements InterfaceC15352m {

    public static final long f1933e = 1;

    public transient k f1934b;

    public transient String f1935c;

    public transient byte[] f1936d;

    public b(k kVar) {
        b(kVar);
    }

    private void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        c(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void e(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public k a() {
        return this.f1934b;
    }

    public final void b(k kVar) {
        this.f1934b = kVar;
        this.f1935c = w.p(kVar.d().b());
    }

    public final void c(h0 h0Var) throws IOException {
        b((k) C15016d.a(h0Var));
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
        return this.f1935c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f1936d == null) {
            this.f1936d = Ml.e.d(this.f1934b);
        }
        return org.bouncycastle.util.a.p(this.f1936d);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public g t() {
        return g.a(this.f1934b.d().b());
    }

    public b(h0 h0Var) throws IOException {
        c(h0Var);
    }
}
