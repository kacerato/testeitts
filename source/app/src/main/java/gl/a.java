package Gl;

import Ol.n;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.t;

public class a implements PrivateKey, t {

    public static final long f7885d = 1;

    public transient jl.g f7886b;

    public transient G f7887c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    public jl.g a() {
        return this.f7886b;
    }

    public final void b(v vVar) throws IOException {
        this.f7887c = vVar.u();
        this.f7886b = (jl.g) C15014b.b(vVar);
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
        if (obj instanceof a) {
            return org.bouncycastle.util.a.g(this.f7886b.getEncoded(), ((a) obj).f7886b.getEncoded());
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
            return C15015c.b(this.f7886b, this.f7887c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f7886b.getEncoded());
    }

    @Override
    public n t() {
        return n.a(this.f7886b.d().b());
    }

    public a(jl.g gVar) {
        this.f7886b = gVar;
    }
}
