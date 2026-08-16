package vl;

import al.l;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.util.w;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15341b;

public class C15861b implements PublicKey, InterfaceC15341b {

    public static final long f121690c = 1;

    public transient l f121691b;

    public C15861b(l lVar) {
        this.f121691b = lVar;
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public l a() {
        return this.f121691b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f121691b = (l) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C15861b) {
            return org.bouncycastle.util.a.g(this.f121691b.getEncoded(), ((C15861b) obj).f121691b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return w.p(this.f121691b.d().e());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f121691b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f121691b.getEncoded());
    }

    @Override
    public Ol.b t() {
        return Ol.b.a(this.f121691b.d().e());
    }

    public C15861b(h0 h0Var) throws IOException {
        b(h0Var);
    }
}
