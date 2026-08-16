package wl;

import bl.g;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.util.w;
import pl.C15016d;
import sl.InterfaceC15344e;

public class C16015b implements InterfaceC15344e {

    public static final long f127595e = 1;

    public transient g f127596b;

    public transient String f127597c;

    public transient byte[] f127598d;

    public C16015b(g gVar) {
        b(gVar);
    }

    private void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        c(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void e(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public g a() {
        return this.f127596b;
    }

    public final void b(g gVar) {
        this.f127596b = gVar;
        this.f127597c = w.p(gVar.d().b());
    }

    public final void c(h0 h0Var) throws IOException {
        b((g) C15016d.a(h0Var));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C16015b) {
            return org.bouncycastle.util.a.g(getEncoded(), ((C16015b) obj).getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return this.f127597c;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f127598d == null) {
            this.f127598d = Ml.e.d(this.f127596b);
        }
        return org.bouncycastle.util.a.p(this.f127598d);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public Ol.c t() {
        return Ol.c.a(this.f127596b.d().b());
    }

    public C16015b(h0 h0Var) throws IOException {
        c(h0Var);
    }
}
