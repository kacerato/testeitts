package Oj;

import Xh.v;
import Xi.C3335c;
import Xi.N0;
import Xi.O0;
import Xi.Q0;
import Xi.R0;
import ck.C4207E;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.AbstractC14551y;
import oh.G;
import org.bouncycastle.crypto.util.p;
import org.bouncycastle.util.q;
import qj.InterfaceC15115a;

public class c implements Ij.f {

    public static final long f20266g = 1;

    public transient C3335c f20267b;

    public transient C3335c f20268c;

    public transient int f20269d;

    public final boolean f20270e;

    public final byte[] f20271f;

    public c(v vVar) throws IOException {
        this.f20270e = vVar.D();
        this.f20271f = vVar.u() != null ? vVar.u().getEncoded() : null;
        d(vVar);
    }

    @Override
    public Ij.g A0() {
        return new d(this.f20268c);
    }

    public final int a() {
        C3335c c3335c = this.f20268c;
        return (getAlgorithm().hashCode() * 31) + org.bouncycastle.util.a.t0(c3335c instanceof R0 ? ((R0) c3335c).getEncoded() : ((O0) c3335c).getEncoded());
    }

    public C3335c b() {
        return this.f20267b;
    }

    public final v c() {
        try {
            G F10 = G.F(this.f20271f);
            v b10 = p.b(this.f20267b, F10);
            return (!this.f20270e || q.f("org.bouncycastle.pkcs8.v1_info_only")) ? new v(b10.y(), b10.E(), F10) : b10;
        } catch (IOException unused) {
            return null;
        }
    }

    public final void d(v vVar) throws IOException {
        C3335c e10;
        int z10 = vVar.z();
        byte[] H10 = ((z10 == 32 || z10 == 56) ? vVar.x() : AbstractC14551y.F(vVar.E())).H();
        if (InterfaceC15115a.f108208c.A(vVar.y().u())) {
            Q0 q02 = new Q0(H10);
            this.f20267b = q02;
            e10 = q02.e();
        } else {
            N0 n02 = new N0(H10);
            this.f20267b = n02;
            e10 = n02.e();
        }
        this.f20268c = e10;
        this.f20269d = a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PrivateKey)) {
            return false;
        }
        PrivateKey privateKey = (PrivateKey) obj;
        v c10 = c();
        v c11 = privateKey instanceof c ? ((c) privateKey).c() : v.v(privateKey.getEncoded());
        if (c10 != null && c11 != null) {
            try {
                return org.bouncycastle.util.a.I(c10.x().getEncoded(), c11.x().getEncoded()) & org.bouncycastle.util.a.I(c10.y().getEncoded(), c11.y().getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public final void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        d(v.v((byte[]) objectInputStream.readObject()));
    }

    @Override
    public String getAlgorithm() {
        return q.f(q.f102334a) ? "XDH" : this.f20267b instanceof Q0 ? C4207E.f34889d : C4207E.f34888c;
    }

    @Override
    public byte[] getEncoded() {
        try {
            v c10 = c();
            if (c10 == null) {
                return null;
            }
            return c10.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public final void h(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public int hashCode() {
        return this.f20269d;
    }

    public String toString() {
        return k.c("Private Key", getAlgorithm(), this.f20268c);
    }

    public c(C3335c c3335c) {
        this.f20270e = true;
        this.f20271f = null;
        this.f20267b = c3335c;
        this.f20268c = c3335c instanceof Q0 ? ((Q0) c3335c).e() : ((N0) c3335c).e();
        this.f20269d = a();
    }
}
