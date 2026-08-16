package Gl;

import Ol.n;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import pl.C15016d;
import pl.C15018f;
import sl.t;

public class b implements PublicKey, t {

    public static final long f7888c = 1;

    public transient jl.h f7889b;

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

    public jl.h a() {
        return this.f7889b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f7889b = (jl.h) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(this.f7889b.getEncoded(), ((b) obj).f7889b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NTRULPRime";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f7889b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f7889b.getEncoded());
    }

    @Override
    public n t() {
        return n.a(this.f7889b.d().b());
    }

    public b(jl.h hVar) {
        this.f7889b = hVar;
    }
}
