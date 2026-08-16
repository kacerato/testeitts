package Ll;

import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import ol.C14612u;
import ol.C14613v;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15333D;
import sl.InterfaceC15334E;

public class a implements PrivateKey, InterfaceC15333D {

    public static final long f14437d = 1;

    public transient C14612u f14438b;

    public transient G f14439c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public InterfaceC15334E A0() {
        return new b(new C14613v(this.f14438b.d(), this.f14438b.g()));
    }

    public C14612u a() {
        return this.f14438b;
    }

    public final void b(v vVar) throws IOException {
        this.f14439c = vVar.u();
        this.f14438b = (C14612u) C15014b.b(vVar);
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
            return org.bouncycastle.util.a.g(this.f14438b.getEncoded(), ((a) obj).f14438b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS+";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f14438b, this.f14439c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f14438b.getEncoded());
    }

    @Override
    public Ol.v t() {
        return Ol.v.a(this.f14438b.d().f());
    }

    public a(C14612u c14612u) {
        this.f14438b = c14612u;
    }
}
