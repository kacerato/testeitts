package Jl;

import Ol.s;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import ml.j;
import pl.C15016d;
import pl.C15018f;
import sl.z;

public class b implements PublicKey, z {

    public static final long f10649c = 1;

    public transient j f10650b;

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

    public j a() {
        return this.f10650b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f10650b = (j) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return org.bouncycastle.util.a.g(this.f10650b.getEncoded(), ((b) obj).f10650b.getEncoded());
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
            return C15018f.a(this.f10650b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f10650b.getEncoded());
    }

    @Override
    public s t() {
        return s.a(this.f10650b.d().c());
    }

    public b(j jVar) {
        this.f10650b = jVar;
    }
}
