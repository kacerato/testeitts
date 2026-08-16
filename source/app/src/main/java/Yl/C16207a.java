package yl;

import Xh.v;
import el.i;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15348i;

public class C16207a implements PrivateKey, InterfaceC15348i {

    public static final long f130490d = 1;

    public transient i f130491b;

    public transient G f130492c;

    public C16207a(v vVar) throws IOException {
        b(vVar);
    }

    public i a() {
        return this.f130491b;
    }

    public final void b(v vVar) throws IOException {
        this.f130492c = vVar.u();
        this.f130491b = (i) C15014b.b(vVar);
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
        if (obj instanceof C16207a) {
            return org.bouncycastle.util.a.g(this.f130491b.getEncoded(), ((C16207a) obj).f130491b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "Frodo";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f130491b, this.f130492c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f130491b.getEncoded());
    }

    @Override
    public Ol.e t() {
        return Ol.e.a(this.f130491b.d().e());
    }

    public C16207a(i iVar) {
        this.f130491b = iVar;
    }
}
