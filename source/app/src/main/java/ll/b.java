package Ll;

import Bi.InterfaceC2379k;
import Ol.v;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import ol.C14613v;
import org.bouncycastle.util.w;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15334E;

public class b implements InterfaceC15334E {

    public static final long f14440c = 1;

    public transient C14613v f14441b;

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
        return this.f14441b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f14441b = (C14613v) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(this.f14441b.getEncoded(), ((b) obj).f14441b.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS+-" + w.p(this.f14441b.d().f());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return C15018f.a(this.f14441b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f14441b.getEncoded());
    }

    @Override
    public v t() {
        return v.a(this.f14441b.d().f());
    }

    public b(C14613v c14613v) {
        this.f14441b = c14613v;
    }
}
