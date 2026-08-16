package Gl;

import Ol.t;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import jl.p;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15330A;

public class d implements PublicKey, InterfaceC15330A {

    public static final long f7893c = 1;

    public transient p f7894b;

    public d(h0 h0Var) throws IOException {
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

    public p a() {
        return this.f7894b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f7894b = (p) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            return org.bouncycastle.util.a.g(this.f7894b.getEncoded(), ((d) obj).f7894b.getEncoded());
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
            return C15018f.a(this.f7894b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f7894b.getEncoded());
    }

    @Override
    public t t() {
        return t.a(this.f7894b.d().a());
    }

    public d(p pVar) {
        this.f7894b = pVar;
    }
}
