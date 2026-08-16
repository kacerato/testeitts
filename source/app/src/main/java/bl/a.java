package Bl;

import Ol.g;
import Xh.v;
import cl.j;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15351l;
import sl.InterfaceC15352m;

public class a implements InterfaceC15351l {

    public static final long f1929e = 1;

    public transient j f1930b;

    public transient String f1931c;

    public transient G f1932d;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public InterfaceC15352m A0() {
        return new b(this.f1930b.i());
    }

    public j a() {
        return this.f1930b;
    }

    public final void b(v vVar) throws IOException {
        this.f1932d = vVar.u();
        j jVar = (j) C15014b.b(vVar);
        this.f1930b = jVar;
        this.f1931c = w.p(jVar.d().b());
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
            return org.bouncycastle.util.a.g(getEncoded(), ((a) obj).getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return this.f1931c;
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f1930b, this.f1932d).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(getEncoded());
    }

    @Override
    public g t() {
        return g.a(this.f1930b.d().b());
    }

    public a(j jVar) {
        this.f1930b = jVar;
        this.f1931c = w.p(jVar.d().b());
    }
}
