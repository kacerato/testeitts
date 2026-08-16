package yl;

import el.j;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15348i;

public class C16208b implements PublicKey, InterfaceC15348i {

    public static final long f130493c = 1;

    public transient j f130494b;

    public C16208b(j jVar) {
        this.f130494b = jVar;
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
        return this.f130494b;
    }

    public final void b(h0 h0Var) throws IOException {
        this.f130494b = (j) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C16208b) {
            return org.bouncycastle.util.a.g(this.f130494b.getEncoded(), ((C16208b) obj).f130494b.getEncoded());
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
            return C15018f.a(this.f130494b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.t0(this.f130494b.getEncoded());
    }

    @Override
    public Ol.e t() {
        return Ol.e.a(this.f130494b.d().e());
    }

    public C16208b(h0 h0Var) throws IOException {
        b(h0Var);
    }
}
