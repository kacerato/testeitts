package El;

import Bi.InterfaceC2379k;
import Xh.v;
import hl.g;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.q;

public class a implements q {

    public static final long f6049d = 1;

    public transient g f6050b;

    public transient G f6051c;

    public a(v vVar) throws IOException {
        b(vVar);
    }

    @Override
    public short[] Le() {
        return this.f6050b.d();
    }

    public InterfaceC2379k a() {
        return this.f6050b;
    }

    public final void b(v vVar) throws IOException {
        this.f6051c = vVar.u();
        this.f6050b = (g) C15014b.b(vVar);
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
        if (obj instanceof a) {
            return org.bouncycastle.util.a.l(this.f6050b.d(), ((a) obj).f6050b.d());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NH";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15015c.b(this.f6050b, this.f6051c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.B0(this.f6050b.d());
    }

    public a(g gVar) {
        this.f6050b = gVar;
    }
}
