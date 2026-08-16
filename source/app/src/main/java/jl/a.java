package Jl;

import Ol.s;
import Xh.v;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import ml.i;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.z;

public class a implements PrivateKey, z {

    public static final long f10646d = 1;

    public transient i f10647b;

    public transient G f10648c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    public i a() {
        return this.f10647b;
    }

    public final void b(v vVar) throws IOException {
        this.f10648c = vVar.u();
        this.f10647b = (i) C15014b.b(vVar);
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
            return org.bouncycastle.util.a.g(this.f10647b.getEncoded(), ((a) obj).f10647b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "SABER";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f10647b, this.f10648c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f10647b.getEncoded());
    }

    @Override
    public s t() {
        return s.a(this.f10647b.d().c());
    }

    public a(i iVar) {
        this.f10647b = iVar;
    }
}
