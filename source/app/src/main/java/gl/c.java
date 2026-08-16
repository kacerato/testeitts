package Gl;

import Ol.t;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import jl.o;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15330A;

public class c implements PrivateKey, InterfaceC15330A {

    public static final long f7890d = 1;

    public transient o f7891b;

    public transient G f7892c;

    public c(v vVar) throws IOException {
        b(vVar);
    }

    public o a() {
        return this.f7891b;
    }

    public final void b(v vVar) throws IOException {
        this.f7892c = vVar.u();
        this.f7891b = (o) C15014b.b(vVar);
    }

    public final void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(v.v((byte[]) objectInputStream.readObject()));
    }

    public final void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return org.bouncycastle.util.a.g(this.f7891b.getEncoded(), ((c) obj).f7891b.getEncoded());
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
            return C15015c.b(this.f7891b, this.f7892c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f7891b.getEncoded());
    }

    @Override
    public t t() {
        return t.a(this.f7891b.d().a());
    }

    public c(o oVar) {
        this.f7891b = oVar;
    }
}
