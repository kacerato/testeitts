package vl;

import Xh.v;
import al.k;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15341b;

public class C15860a implements PrivateKey, InterfaceC15341b {

    public static final long f121687d = 1;

    public transient k f121688b;

    public transient G f121689c;

    public C15860a(v vVar) throws IOException {
        b(vVar);
    }

    public k a() {
        return this.f121688b;
    }

    public final void b(v vVar) throws IOException {
        this.f121689c = vVar.u();
        this.f121688b = (k) C15014b.b(vVar);
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
        if (obj instanceof C15860a) {
            return org.bouncycastle.util.a.g(this.f121688b.getEncoded(), ((C15860a) obj).f121688b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return w.p(this.f121688b.d().e());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f121688b, this.f121689c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f121688b.getEncoded());
    }

    @Override
    public Ol.b t() {
        return Ol.b.a(this.f121688b.d().e());
    }

    public C15860a(k kVar) {
        this.f121688b = kVar;
    }
}
