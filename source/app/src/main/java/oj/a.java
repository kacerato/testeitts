package Oj;

import Xh.v;
import Xi.C3335c;
import Xi.O;
import Xi.P;
import Xi.S;
import Xi.T;
import ck.C4215h;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import oh.AbstractC14551y;
import oh.G;
import org.bouncycastle.crypto.util.p;
import org.bouncycastle.util.q;
import qj.InterfaceC15115a;

public class a implements Ij.c {

    public static final long f20258g = 1;

    public transient C3335c f20259b;

    public transient C3335c f20260c;

    public transient int f20261d;

    public final boolean f20262e;

    public final byte[] f20263f;

    public a(v vVar) throws IOException {
        this.f20262e = vVar.D();
        this.f20263f = vVar.u() != null ? vVar.u().getEncoded() : null;
        d(vVar);
    }

    @Override
    public Ij.d A0() {
        return new b(this.f20260c);
    }

    public final int a() {
        C3335c c3335c = this.f20260c;
        return (getAlgorithm().hashCode() * 31) + org.bouncycastle.util.a.t0(c3335c instanceof T ? ((T) c3335c).getEncoded() : ((P) c3335c).getEncoded());
    }

    public C3335c b() {
        return this.f20259b;
    }

    public final v c() {
        try {
            G F10 = G.F(this.f20263f);
            v b10 = p.b(this.f20259b, F10);
            return (!this.f20262e || q.f("org.bouncycastle.pkcs8.v1_info_only")) ? new v(b10.y(), b10.E(), F10) : b10;
        } catch (IOException unused) {
            return null;
        }
    }

    public final void d(v vVar) throws IOException {
        C3335c e10;
        byte[] H10 = AbstractC14551y.F(vVar.E()).H();
        if (InterfaceC15115a.f108210e.A(vVar.y().u())) {
            S s10 = new S(H10);
            this.f20259b = s10;
            e10 = s10.e();
        } else {
            O o10 = new O(H10);
            this.f20259b = o10;
            e10 = o10.e();
        }
        this.f20260c = e10;
        this.f20261d = a();
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
        v c11 = privateKey instanceof a ? ((a) privateKey).c() : v.v(privateKey.getEncoded());
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
        return q.f(q.f102334a) ? "EdDSA" : this.f20259b instanceof S ? C4215h.f34910d : C4215h.f34909c;
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
        return this.f20261d;
    }

    public String toString() {
        return k.c("Private Key", getAlgorithm(), this.f20260c);
    }

    public a(C3335c c3335c) {
        this.f20262e = true;
        this.f20263f = null;
        this.f20259b = c3335c;
        this.f20260c = c3335c instanceof S ? ((S) c3335c).e() : ((O) c3335c).e();
        this.f20261d = a();
    }
}
