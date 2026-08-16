package Fl;

import Ol.o;
import Xh.v;
import il.h;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.s;

public class a implements PrivateKey, s {

    public static final long f7195d = 1;

    public transient h f7196b;

    public transient G f7197c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    public h a() {
        return this.f7196b;
    }

    public final void b(v vVar) throws IOException {
        this.f7197c = vVar.u();
        this.f7196b = (h) C15014b.b(vVar);
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
            return org.bouncycastle.util.a.g(this.f7196b.getEncoded(), ((a) obj).f7196b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NTRU";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f7196b, this.f7197c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f7196b.getEncoded());
    }

    @Override
    public o t() {
        return o.a(this.f7196b.d().a());
    }

    public a(h hVar) {
        this.f7196b = hVar;
    }
}
