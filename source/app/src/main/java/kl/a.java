package Kl;

import Bi.InterfaceC2379k;
import Xh.v;
import Xk.m;
import Xk.s;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import nl.C14465i;
import oh.C0;
import oh.C14549x;
import oh.G;
import pl.C15014b;
import pl.C15015c;
import sl.InterfaceC15331B;

public class a implements PrivateKey, InterfaceC15331B {

    public static final long f11469e = 1;

    public transient C14549x f11470b;

    public transient C14465i f11471c;

    public transient G f11472d;

    public a(v vVar) throws IOException {
        c(vVar);
    }

    @Override
    public byte[] Jc() {
        return this.f11471c.e();
    }

    public InterfaceC2379k a() {
        return this.f11471c;
    }

    public C14549x b() {
        return this.f11470b;
    }

    public final void c(v vVar) throws IOException {
        this.f11472d = vVar.u();
        this.f11470b = s.u(vVar.y().x()).v().u();
        this.f11471c = (C14465i) C15014b.b(vVar);
    }

    public final void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        c(v.v((byte[]) objectInputStream.readObject()));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f11470b.A(aVar.f11470b) && org.bouncycastle.util.a.g(this.f11471c.e(), aVar.f11471c.e());
    }

    public final void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return (this.f11471c.d() != null ? C15015c.b(this.f11471c, this.f11472d) : new v(new C13486b(m.f29580r, new s(new C13486b(this.f11470b))), new C0(this.f11471c.e()), this.f11472d)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return this.f11470b.hashCode() + (org.bouncycastle.util.a.t0(this.f11471c.e()) * 37);
    }

    public a(C14549x c14549x, C14465i c14465i) {
        this.f11470b = c14549x;
        this.f11471c = c14465i;
    }
}
