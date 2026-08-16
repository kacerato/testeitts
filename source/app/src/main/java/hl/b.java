package Hl;

import Ol.p;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import kl.n;
import pl.C15016d;
import pl.C15018f;
import sl.u;

public class b implements PublicKey, u {

    public static final long f8635c = 1;

    public transient n f8636b;

    public b(h0 h0Var) throws IOException {
        b(h0Var);
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public n a() {
        return this.f8636b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f8636b = (n) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(this.f8636b.getEncoded(), ((b) obj).f8636b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "Picnic";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f8636b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f8636b.getEncoded());
    }

    @Override
    public p t() {
        return p.a(this.f8636b.d().b());
    }

    public b(n nVar) {
        this.f8636b = nVar;
    }
}
