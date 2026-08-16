package Hl;

import Ol.p;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import kl.m;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.u;

public class a implements PrivateKey, u {

    public static final long f8632d = 1;

    public transient m f8633b;

    public transient G f8634c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    public m a() {
        return this.f8633b;
    }

    public final void b(v vVar) throws IOException {
        this.f8634c = vVar.u();
        this.f8633b = (m) C15014b.b(vVar);
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
            return org.bouncycastle.util.a.g(this.f8633b.getEncoded(), ((a) obj).f8633b.getEncoded());
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
            return C15015c.b(this.f8633b, this.f8634c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f8633b.getEncoded());
    }

    @Override
    public p t() {
        return p.a(this.f8633b.d().b());
    }

    public a(m mVar) {
        this.f8633b = mVar;
    }
}
