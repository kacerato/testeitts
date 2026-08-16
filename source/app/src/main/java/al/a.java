package Al;

import Xh.v;
import gl.C13398k;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15349j;

public class a implements PrivateKey, InterfaceC15349j {

    public static final long f1023d = 1;

    public transient C13398k f1024b;

    public transient G f1025c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    public C13398k a() {
        return this.f1024b;
    }

    public final void b(v vVar) throws IOException {
        this.f1025c = vVar.u();
        this.f1024b = (C13398k) C15014b.b(vVar);
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
            return org.bouncycastle.util.a.g(this.f1024b.getEncoded(), ((a) obj).f1024b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return w.p(this.f1024b.d().i());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f1024b, this.f1025c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f1024b.getEncoded());
    }

    @Override
    public Ol.f t() {
        return Ol.f.a(this.f1024b.d().i());
    }

    public a(C13398k c13398k) {
        this.f1024b = c13398k;
    }
}
