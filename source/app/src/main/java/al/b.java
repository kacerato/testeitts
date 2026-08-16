package Al;

import gl.C13399l;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.util.w;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15349j;

public class b implements PublicKey, InterfaceC15349j {

    public static final long f1026c = 1;

    public transient C13399l f1027b;

    public b(C13399l c13399l) {
        this.f1027b = c13399l;
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public C13399l a() {
        return this.f1027b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f1027b = (C13399l) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(this.f1027b.getEncoded(), ((b) obj).f1027b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return w.p(this.f1027b.d().i());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f1027b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f1027b.getEncoded());
    }

    @Override
    public Ol.f t() {
        return Ol.f.a(this.f1027b.d().i());
    }

    public b(h0 h0Var) throws IOException {
        b(h0Var);
    }
}
