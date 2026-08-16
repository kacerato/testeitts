package Mj;

import Xh.t;
import Xh.v;
import Xi.C3363q;
import Xi.C3371v;
import Xi.r;
import ck.C4210c;
import ck.C4211d;
import fk.InterfaceC13250p;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;

public class c implements DHPrivateKey, InterfaceC13250p {

    public static final long f15323g = 311058815616901812L;

    public BigInteger f15324b;

    public transient DHParameterSpec f15325c;

    public transient v f15326d;

    public transient r f15327e;

    public transient m f15328f = new m();

    public c() {
    }

    private void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f15325c = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.f15326d = null;
        this.f15328f = new m();
    }

    private void h(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f15325c.getP());
        objectOutputStream.writeObject(this.f15325c.getG());
        objectOutputStream.writeInt(this.f15325c.getL());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f15328f.a(c14549x, interfaceC14516g);
    }

    public r b() {
        r rVar = this.f15327e;
        if (rVar != null) {
            return rVar;
        }
        DHParameterSpec dHParameterSpec = this.f15325c;
        return dHParameterSpec instanceof C4210c ? new r(this.f15324b, ((C4210c) dHParameterSpec).a()) : new r(this.f15324b, new C3363q(dHParameterSpec.getP(), this.f15325c.getG(), null, this.f15325c.getL()));
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f15328f.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f15328f.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKey)) {
            return false;
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
        return getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL();
    }

    @Override
    public String getAlgorithm() {
        return "DH";
    }

    @Override
    public byte[] getEncoded() {
        v vVar;
        try {
            v vVar2 = this.f15326d;
            if (vVar2 != null) {
                return vVar2.s(InterfaceC14520i.f98892a);
            }
            DHParameterSpec dHParameterSpec = this.f15325c;
            if (!(dHParameterSpec instanceof C4210c) || ((C4210c) dHParameterSpec).d() == null) {
                vVar = new v(new C13486b(t.f29073Y0, new Xh.h(this.f15325c.getP(), this.f15325c.getG(), this.f15325c.getL()).r()), new C14539s(getX()));
            } else {
                C3363q a10 = ((C4210c) this.f15325c).a();
                C3371v h10 = a10.h();
                vVar = new v(new C13486b(ki.r.f95361z6, new ki.d(a10.f(), a10.b(), a10.g(), a10.c(), h10 != null ? new ki.h(h10.b(), h10.a()) : null).r()), new C14539s(getX()));
            }
            return vVar.s(InterfaceC14520i.f98892a);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public DHParameterSpec getParams() {
        return this.f15325c;
    }

    @Override
    public BigInteger getX() {
        return this.f15324b;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public String toString() {
        return e.b("DH", this.f15324b, new C3363q(this.f15325c.getP(), this.f15325c.getG()));
    }

    public c(v vVar) throws IOException {
        r rVar;
        E G10 = E.G(vVar.y().x());
        C14539s c14539s = (C14539s) vVar.E();
        C14549x u10 = vVar.y().u();
        this.f15326d = vVar;
        this.f15324b = c14539s.I();
        if (u10.A(t.f29073Y0)) {
            Xh.h v10 = Xh.h.v(G10);
            if (v10.x() != null) {
                this.f15325c = new DHParameterSpec(v10.y(), v10.u(), v10.x().intValue());
                rVar = new r(this.f15324b, new C3363q(v10.y(), v10.u(), null, v10.x().intValue()));
            } else {
                this.f15325c = new DHParameterSpec(v10.y(), v10.u());
                rVar = new r(this.f15324b, new C3363q(v10.y(), v10.u()));
            }
        } else {
            if (!u10.A(ki.r.f95361z6)) {
                throw new IllegalArgumentException("unknown algorithm type: " + ((Object) u10));
            }
            ki.d v11 = ki.d.v(G10);
            this.f15325c = new C4210c(v11.z(), v11.A(), v11.u(), v11.x(), 0);
            rVar = new r(this.f15324b, new C3363q(v11.z(), v11.u(), v11.A(), v11.x(), (C3371v) null));
        }
        this.f15327e = rVar;
    }

    public c(r rVar) {
        this.f15324b = rVar.e();
        this.f15325c = new C4210c(rVar.d());
    }

    public c(DHPrivateKey dHPrivateKey) {
        this.f15324b = dHPrivateKey.getX();
        this.f15325c = dHPrivateKey.getParams();
    }

    public c(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f15324b = dHPrivateKeySpec.getX();
        if (dHPrivateKeySpec instanceof C4211d) {
            this.f15325c = ((C4211d) dHPrivateKeySpec).a();
        } else {
            this.f15325c = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
        }
    }
}
