package Mj;

import Xh.t;
import Xi.C3363q;
import Xi.C3366s;
import Xi.C3371v;
import ck.C4210c;
import ck.C4212e;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import ki.r;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.bouncycastle.jcajce.provider.asymmetric.util.l;

public class d implements DHPublicKey {

    public static final long f15329f = -216691575254424324L;

    public BigInteger f15330b;

    public transient C3366s f15331c;

    public transient DHParameterSpec f15332d;

    public transient h0 f15333e;

    public d(C3366s c3366s) {
        this.f15330b = c3366s.e();
        this.f15332d = new C4210c(c3366s.d());
        this.f15331c = c3366s;
    }

    public C3366s a() {
        return this.f15331c;
    }

    public final boolean b(E e10) {
        if (e10.size() == 2) {
            return true;
        }
        if (e10.size() > 3) {
            return false;
        }
        return C14539s.F(e10.I(2)).I().compareTo(BigInteger.valueOf((long) C14539s.F(e10.I(0)).I().bitLength())) <= 0;
    }

    public final void c(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f15332d = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.f15333e = null;
    }

    public final void d(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f15332d.getP());
        objectOutputStream.writeObject(this.f15332d.getG());
        objectOutputStream.writeInt(this.f15332d.getL());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKey)) {
            return false;
        }
        DHPublicKey dHPublicKey = (DHPublicKey) obj;
        return getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL();
    }

    @Override
    public String getAlgorithm() {
        return "DH";
    }

    @Override
    public byte[] getEncoded() {
        h0 h0Var = this.f15333e;
        if (h0Var != null) {
            return l.e(h0Var);
        }
        DHParameterSpec dHParameterSpec = this.f15332d;
        if (!(dHParameterSpec instanceof C4210c) || ((C4210c) dHParameterSpec).d() == null) {
            return l.c(new C13486b(t.f29073Y0, new Xh.h(this.f15332d.getP(), this.f15332d.getG(), this.f15332d.getL()).r()), new C14539s(this.f15330b));
        }
        C3363q a10 = ((C4210c) this.f15332d).a();
        C3371v h10 = a10.h();
        return l.c(new C13486b(r.f95361z6, new ki.d(a10.f(), a10.b(), a10.g(), a10.c(), h10 != null ? new ki.h(h10.b(), h10.a()) : null).r()), new C14539s(this.f15330b));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public DHParameterSpec getParams() {
        return this.f15332d;
    }

    @Override
    public BigInteger getY() {
        return this.f15330b;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public String toString() {
        return e.c("DH", this.f15330b, new C3363q(this.f15332d.getP(), this.f15332d.getG()));
    }

    public d(h0 h0Var) {
        C3366s c3366s;
        this.f15333e = h0Var;
        try {
            this.f15330b = ((C14539s) h0Var.A()).I();
            E G10 = E.G(h0Var.u().x());
            C14549x u10 = h0Var.u().u();
            if (u10.A(t.f29073Y0) || b(G10)) {
                Xh.h v10 = Xh.h.v(G10);
                if (v10.x() != null) {
                    this.f15332d = new DHParameterSpec(v10.y(), v10.u(), v10.x().intValue());
                    c3366s = new C3366s(this.f15330b, new C3363q(this.f15332d.getP(), this.f15332d.getG(), null, this.f15332d.getL()));
                } else {
                    this.f15332d = new DHParameterSpec(v10.y(), v10.u());
                    c3366s = new C3366s(this.f15330b, new C3363q(this.f15332d.getP(), this.f15332d.getG()));
                }
                this.f15331c = c3366s;
                return;
            }
            if (!u10.A(r.f95361z6)) {
                throw new IllegalArgumentException("unknown algorithm type: " + ((Object) u10));
            }
            ki.d v11 = ki.d.v(G10);
            ki.h B10 = v11.B();
            if (B10 != null) {
                this.f15331c = new C3366s(this.f15330b, new C3363q(v11.z(), v11.u(), v11.A(), v11.x(), new C3371v(B10.y(), B10.x().intValue())));
            } else {
                this.f15331c = new C3366s(this.f15330b, new C3363q(v11.z(), v11.u(), v11.A(), v11.x(), (C3371v) null));
            }
            this.f15332d = new C4210c(this.f15331c.d());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    public d(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.f15330b = bigInteger;
        this.f15332d = dHParameterSpec;
        this.f15331c = dHParameterSpec instanceof C4210c ? new C3366s(bigInteger, ((C4210c) dHParameterSpec).a()) : new C3366s(bigInteger, new C3363q(dHParameterSpec.getP(), dHParameterSpec.getG()));
    }

    public d(DHPublicKey dHPublicKey) {
        this.f15330b = dHPublicKey.getY();
        DHParameterSpec params = dHPublicKey.getParams();
        this.f15332d = params;
        if (params instanceof C4210c) {
            this.f15331c = new C3366s(this.f15330b, ((C4210c) params).a());
        } else {
            this.f15331c = new C3366s(this.f15330b, new C3363q(this.f15332d.getP(), this.f15332d.getG()));
        }
    }

    public d(DHPublicKeySpec dHPublicKeySpec) {
        this.f15330b = dHPublicKeySpec.getY();
        this.f15332d = dHPublicKeySpec instanceof C4212e ? ((C4212e) dHPublicKeySpec).a() : new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
        DHParameterSpec dHParameterSpec = this.f15332d;
        if (dHParameterSpec instanceof C4210c) {
            this.f15331c = new C3366s(this.f15330b, ((C4210c) dHParameterSpec).a());
        } else {
            this.f15331c = new C3366s(this.f15330b, new C3363q(dHPublicKeySpec.getP(), dHPublicKeySpec.getG()));
        }
    }
}
