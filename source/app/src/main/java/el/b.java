package El;

import Bi.InterfaceC2379k;
import hi.h0;
import hl.h;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import pl.C15016d;
import pl.C15018f;
import sl.r;

public class b implements r {

    public static final long f6052c = 1;

    public transient h f6053b;

    public b(h0 h0Var) throws IOException {
        b(h0Var);
    }

    private void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public InterfaceC2379k a() {
        return this.f6053b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f6053b = (h) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        return org.bouncycastle.util.a.g(this.f6053b.d(), ((b) obj).f6053b.d());
    }

    @Override
    public byte[] fb() {
        return this.f6053b.d();
    }

    @Override
    public final String getAlgorithm() {
        return "NH";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f6053b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f6053b.d());
    }

    public b(h hVar) {
        this.f6053b = hVar;
    }
}
