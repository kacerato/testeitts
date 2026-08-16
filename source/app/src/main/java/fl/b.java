package Fl;

import Ol.o;
import hi.h0;
import il.i;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import pl.C15016d;
import pl.C15018f;
import sl.s;

public class b implements PublicKey, s {

    public static final long f7198c = 1;

    public transient i f7199b;

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

    public i a() {
        return this.f7199b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f7199b = (i) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(this.f7199b.getEncoded(), ((b) obj).f7199b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NTRU";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f7199b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f7199b.getEncoded());
    }

    @Override
    public o t() {
        return o.a(this.f7199b.d().a());
    }

    public b(i iVar) {
        this.f7199b = iVar;
    }
}
