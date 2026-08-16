package ul;

import Xh.v;
import Zk.h;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import org.bouncycastle.util.w;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15340a;

public class C15642a implements PrivateKey, InterfaceC15340a {

    public static final long f120791d = 1;

    public transient h f120792b;

    public transient G f120793c;

    public C15642a(v vVar) throws IOException {
        b(vVar);
    }

    public h a() {
        return this.f120792b;
    }

    public final void b(v vVar) throws IOException {
        this.f120793c = vVar.u();
        this.f120792b = (h) C15014b.b(vVar);
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
        if (obj instanceof C15642a) {
            return org.bouncycastle.util.a.g(this.f120792b.getEncoded(), ((C15642a) obj).f120792b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return w.p(this.f120792b.d().d());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f120792b, this.f120793c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f120792b.getEncoded());
    }

    @Override
    public Ol.a t() {
        return Ol.a.a(this.f120792b.d().d());
    }

    public C15642a(h hVar) {
        this.f120792b = hVar;
    }
}
