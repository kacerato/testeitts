package xl;

import dl.C12965o;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.util.w;
import pl.C15016d;
import sl.InterfaceC15347h;

public class C16122b implements InterfaceC15347h {

    public static final long f129846e = 1;

    public transient C12965o f129847b;

    public transient String f129848c;

    public transient byte[] f129849d;

    public C16122b(C12965o c12965o) {
        b(c12965o);
    }

    private void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        c(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void e(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public C12965o a() {
        return this.f129847b;
    }

    public final void b(C12965o c12965o) {
        this.f129847b = c12965o;
        this.f129848c = w.p(c12965o.d().b());
    }

    public final void c(h0 h0Var) throws IOException {
        b((C12965o) C15016d.a(h0Var));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C16122b) {
            return org.bouncycastle.util.a.g(getEncoded(), ((C16122b) obj).getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return this.f129848c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f129849d == null) {
            this.f129849d = Ml.e.d(this.f129847b);
        }
        return org.bouncycastle.util.a.p(this.f129849d);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public Ol.d t() {
        return Ol.d.a(this.f129847b.d().b());
    }

    public C16122b(h0 h0Var) throws IOException {
        c(h0Var);
    }
}
