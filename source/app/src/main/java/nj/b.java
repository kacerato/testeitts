package Nj;

import Xi.G;
import Xi.M;
import di.AbstractC12926e;
import di.C12922a;
import di.C12923b;
import di.C12924c;
import di.C12925d;
import di.InterfaceC12928g;
import fk.InterfaceC13237c;
import fk.InterfaceC13239e;
import hi.C13486b;
import hi.h0;
import hk.C13523c;
import hk.C13524d;
import hk.C13525e;
import hk.C13527g;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import jk.AbstractC13875e;
import jk.i;
import ki.j;
import ki.l;
import ki.n;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jce.provider.C14720a;

public class b implements ECPublicKey, InterfaceC13239e, InterfaceC13237c {

    public static final long f16395g = 7026240464295649314L;

    public String f16396b;

    public boolean f16397c;

    public transient M f16398d;

    public transient ECParameterSpec f16399e;

    public transient C12925d f16400f;

    public b(b bVar) {
        this.f16396b = "DSTU4145";
        this.f16398d = bVar.f16398d;
        this.f16399e = bVar.f16399e;
        this.f16397c = bVar.f16397c;
        this.f16400f = bVar.f16400f;
    }

    private void g(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        f(h0.w(B.B((byte[]) objectInputStream.readObject())));
    }

    private void h(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[(bArr.length - 1) - i10];
            bArr[(bArr.length - 1) - i10] = b10;
        }
    }

    private void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public i Ne() {
        i e10 = this.f16398d.e();
        return this.f16399e == null ? e10.k() : e10;
    }

    public final ECParameterSpec a(EllipticCurve ellipticCurve, G g10) {
        return new ECParameterSpec(ellipticCurve, h.d(g10.b()), g10.e(), g10.c().intValue());
    }

    @Override
    public void b(String str) {
        this.f16397c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public M c() {
        return this.f16398d;
    }

    public C13525e d() {
        ECParameterSpec eCParameterSpec = this.f16399e;
        return eCParameterSpec != null ? h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    public byte[] e() {
        C12925d c12925d = this.f16400f;
        return c12925d != null ? c12925d.u() : C12925d.v();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16398d.e().e(bVar.f16398d.e()) && d().equals(bVar.d());
    }

    public final void f(h0 h0Var) {
        C13525e c13525e;
        l lVar;
        ECParameterSpec k10;
        AbstractC14508c z10 = h0Var.z();
        this.f16396b = "DSTU4145";
        try {
            byte[] H10 = ((AbstractC14551y) B.B(z10.F())).H();
            C14549x u10 = h0Var.u().u();
            C14549x c14549x = InterfaceC12928g.f84698b;
            if (u10.A(c14549x)) {
                h(H10);
            }
            E G10 = E.G(h0Var.u().x());
            if (G10.I(0) instanceof C14539s) {
                lVar = l.B(G10);
                c13525e = new C13525e(lVar.v(), lVar.z(), lVar.C(), lVar.A(), lVar.D());
            } else {
                C12925d y10 = C12925d.y(G10);
                this.f16400f = y10;
                if (y10.A()) {
                    C14549x z11 = this.f16400f.z();
                    G a10 = C12924c.a(z11);
                    c13525e = new C13523c(z11.J(), a10.a(), a10.b(), a10.e(), a10.c(), a10.f());
                } else {
                    C12923b x10 = this.f16400f.x();
                    byte[] v10 = x10.v();
                    if (h0Var.u().u().A(c14549x)) {
                        h(v10);
                    }
                    C12922a x11 = x10.x();
                    AbstractC13875e.C1828e c1828e = new AbstractC13875e.C1828e(x11.z(), x11.v(), x11.x(), x11.y(), x10.u(), new BigInteger(1, v10), (BigInteger) null, (BigInteger) null);
                    byte[] y11 = x10.y();
                    if (h0Var.u().u().A(c14549x)) {
                        h(y11);
                    }
                    c13525e = new C13525e(c1828e, AbstractC12926e.a(c1828e, y11), x10.A());
                }
                lVar = null;
            }
            AbstractC13875e a11 = c13525e.a();
            EllipticCurve a12 = h.a(a11, c13525e.e());
            if (this.f16400f != null) {
                ECPoint d10 = h.d(c13525e.b());
                k10 = this.f16400f.A() ? new C13524d(this.f16400f.z().J(), a12, d10, c13525e.d(), c13525e.c()) : new ECParameterSpec(a12, d10, c13525e.d(), c13525e.c().intValue());
            } else {
                k10 = h.k(lVar);
            }
            this.f16399e = k10;
            this.f16398d = new M(AbstractC12926e.a(a11, H10), h.m(null, this.f16399e));
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    @Override
    public String getAlgorithm() {
        return this.f16396b;
    }

    @Override
    public byte[] getEncoded() {
        AbstractC14545v abstractC14545v = this.f16400f;
        if (abstractC14545v == null) {
            ECParameterSpec eCParameterSpec = this.f16399e;
            if (eCParameterSpec instanceof C13524d) {
                abstractC14545v = new C12925d(new C14549x(((C13524d) this.f16399e).c()));
            } else {
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                abstractC14545v = new j(new l(b10, new n(h.f(b10, this.f16399e.getGenerator()), this.f16397c), this.f16399e.getOrder(), BigInteger.valueOf(this.f16399e.getCofactor()), this.f16399e.getCurve().getSeed()));
            }
        }
        try {
            return org.bouncycastle.jcajce.provider.asymmetric.util.l.e(new h0(new C13486b(InterfaceC12928g.f84699c, abstractC14545v), new C0(AbstractC12926e.b(this.f16398d.e()))));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f16399e;
        if (eCParameterSpec == null) {
            return null;
        }
        return h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f16399e;
    }

    @Override
    public ECPoint getW() {
        return h.d(this.f16398d.e());
    }

    public int hashCode() {
        return this.f16398d.e().hashCode() ^ d().hashCode();
    }

    public String toString() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.i.p(this.f16396b, this.f16398d.e(), d());
    }

    public b(h0 h0Var) {
        this.f16396b = "DSTU4145";
        f(h0Var);
    }

    public b(C13527g c13527g, Tj.c cVar) {
        this.f16396b = "DSTU4145";
        if (c13527g.a() == null) {
            this.f16398d = new M(cVar.b().a().i(c13527g.b().f().v(), c13527g.b().g().v()), h.m(cVar, null));
            this.f16399e = null;
        } else {
            EllipticCurve a10 = h.a(c13527g.a().a(), c13527g.a().e());
            this.f16398d = new M(c13527g.b(), org.bouncycastle.jcajce.provider.asymmetric.util.i.f(cVar, c13527g.a()));
            this.f16399e = h.h(a10, c13527g.a());
        }
    }

    public b(String str, M m10) {
        this.f16396b = str;
        this.f16398d = m10;
        this.f16399e = null;
    }

    public b(String str, M m10, C13525e c13525e) {
        this.f16396b = "DSTU4145";
        G d10 = m10.d();
        this.f16396b = str;
        this.f16399e = c13525e == null ? a(h.a(d10.a(), d10.f()), d10) : h.h(h.a(c13525e.a(), c13525e.e()), c13525e);
        this.f16398d = m10;
    }

    public b(String str, M m10, ECParameterSpec eCParameterSpec) {
        this.f16396b = "DSTU4145";
        G d10 = m10.d();
        this.f16396b = str;
        this.f16398d = m10;
        if (eCParameterSpec == null) {
            this.f16399e = a(h.a(d10.a(), d10.f()), d10);
        } else {
            this.f16399e = eCParameterSpec;
        }
    }

    public b(ECPublicKeySpec eCPublicKeySpec) {
        this.f16396b = "DSTU4145";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f16399e = params;
        this.f16398d = new M(h.e(params, eCPublicKeySpec.getW()), h.m(null, this.f16399e));
    }
}
