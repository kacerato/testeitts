package Kl;

import Bi.InterfaceC2379k;
import Xk.m;
import Xk.s;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import nl.C14466j;
import oh.C14549x;
import pl.C15016d;
import pl.C15018f;
import sl.InterfaceC15331B;

public class b implements PublicKey, InterfaceC15331B {

    public static final long f11473d = 1;

    public transient C14549x f11474b;

    public transient C14466j f11475c;

    public b(h0 h0Var) throws IOException {
        c(h0Var);
    }

    private void d(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        c(h0.w((byte[]) objectInputStream.readObject()));
    }

    private void e(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public byte[] Jc() {
        return this.f11475c.e();
    }

    public InterfaceC2379k a() {
        return this.f11475c;
    }

    public C14549x b() {
        return this.f11474b;
    }

    public final void c(h0 h0Var) throws IOException {
        this.f11474b = s.u(h0Var.u().x()).v().u();
        this.f11475c = (C14466j) C15016d.a(h0Var);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f11474b.A(bVar.f11474b) && org.bouncycastle.util.a.g(this.f11475c.e(), bVar.f11475c.e());
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return (this.f11475c.d() != null ? C15018f.a(this.f11475c) : new h0(new C13486b(m.f29580r, new s(new C13486b(this.f11474b))), this.f11475c.e())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return this.f11474b.hashCode() + (org.bouncycastle.util.a.t0(this.f11475c.e()) * 37);
    }

    public b(C14549x c14549x, C14466j c14466j) {
        this.f11474b = c14549x;
        this.f11475c = c14466j;
    }
}
