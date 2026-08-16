package ul;

import Zk.i;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.util.w;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15340a;

public class C15643b implements PublicKey, InterfaceC15340a {

    public static final long f120794c = 1;

    public transient i f120795b;

    public C15643b(i iVar) {
        this.f120795b = iVar;
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public i a() {
        return this.f120795b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f120795b = (i) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C15643b) {
            return org.bouncycastle.util.a.g(this.f120795b.getEncoded(), ((C15643b) obj).f120795b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return w.p(this.f120795b.d().d());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f120795b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f120795b.getEncoded());
    }

    @Override
    public Ol.a t() {
        return Ol.a.a(this.f120795b.d().d());
    }

    public C15643b(h0 h0Var) throws IOException {
        b(h0Var);
    }
}
