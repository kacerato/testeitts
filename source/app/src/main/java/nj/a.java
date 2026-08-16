package Nj;

import Xh.v;
import Xi.G;
import Xi.L;
import di.AbstractC12926e;
import di.C12922a;
import di.C12923b;
import di.C12924c;
import di.C12925d;
import di.InterfaceC12928g;
import fk.InterfaceC13237c;
import fk.InterfaceC13238d;
import fk.InterfaceC13250p;
import hi.C13486b;
import hi.h0;
import hk.C13523c;
import hk.C13524d;
import hk.C13525e;
import hk.C13526f;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import jk.AbstractC13875e;
import ki.j;
import ki.l;
import ki.n;
import ki.r;
import oh.A0;
import oh.AbstractC14508c;
import oh.AbstractC14541t;
import oh.B;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;
import org.bouncycastle.jce.provider.C14720a;

public class a implements ECPrivateKey, InterfaceC13238d, InterfaceC13250p, InterfaceC13237c {

    public static final long f16388h = 7245981689601667138L;

    public String f16389b;

    public boolean f16390c;

    public transient BigInteger f16391d;

    public transient ECParameterSpec f16392e;

    public transient AbstractC14508c f16393f;

    public transient m f16394g;

    public a() {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
    }

    private void j(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        i(v.v(B.B((byte[]) objectInputStream.readObject())));
        this.f16394g = new m();
    }

    private void l(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f16394g.a(c14549x, interfaceC14516g);
    }

    @Override
    public void b(String str) {
        this.f16390c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f16394g.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f16394g.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return m1().equals(aVar.m1()) && g().equals(aVar.g());
    }

    public C13525e g() {
        ECParameterSpec eCParameterSpec = this.f16392e;
        return eCParameterSpec != null ? h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    @Override
    public String getAlgorithm() {
        return this.f16389b;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ad A[Catch: IOException -> 0x00dd, TryCatch #0 {IOException -> 0x00dd, blocks: (B:12:0x00a3, B:14:0x00ad, B:15:0x00d6, B:19:0x00c2), top: B:11:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c2 A[Catch: IOException -> 0x00dd, TryCatch #0 {IOException -> 0x00dd, blocks: (B:12:0x00a3, B:14:0x00ad, B:15:0x00d6, B:19:0x00c2), top: B:11:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getEncoded() {
        j jVar;
        int n10;
        ECParameterSpec eCParameterSpec = this.f16392e;
        try {
            if (eCParameterSpec instanceof C13524d) {
                C14549x l10 = i.l(((C13524d) eCParameterSpec).c());
                if (l10 == null) {
                    l10 = new C14549x(((C13524d) this.f16392e).c());
                }
                jVar = new j(l10);
            } else {
                if (eCParameterSpec == null) {
                    jVar = new j((AbstractC14541t) A0.f98776c);
                    n10 = i.n(C14720a.f101702f, null, getS());
                    Zh.a aVar = this.f16393f == null ? new Zh.a(n10, getS(), this.f16393f, jVar) : new Zh.a(n10, getS(), jVar);
                    return (!this.f16389b.equals("DSTU4145") ? new v(new C13486b(InterfaceC12928g.f84699c, jVar.r()), aVar.r()) : new v(new C13486b(r.f95305I5, jVar.r()), aVar.r())).s(InterfaceC14520i.f98892a);
                }
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                jVar = new j(new l(b10, new n(h.f(b10, this.f16392e.getGenerator()), this.f16390c), this.f16392e.getOrder(), BigInteger.valueOf(this.f16392e.getCofactor()), this.f16392e.getCurve().getSeed()));
            }
            return (!this.f16389b.equals("DSTU4145") ? new v(new C13486b(InterfaceC12928g.f84699c, jVar.r()), aVar.r()) : new v(new C13486b(r.f95305I5, jVar.r()), aVar.r())).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
        n10 = i.n(C14720a.f101702f, this.f16392e.getOrder(), getS());
        if (this.f16393f == null) {
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f16392e;
        if (eCParameterSpec == null) {
            return null;
        }
        return h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f16392e;
    }

    @Override
    public BigInteger getS() {
        return this.f16391d;
    }

    public final AbstractC14508c h(b bVar) {
        try {
            return h0.w(B.B(bVar.getEncoded())).z();
        } catch (IOException unused) {
            return null;
        }
    }

    public int hashCode() {
        return m1().hashCode() ^ g().hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(v vVar) throws IOException {
        C13525e c13525e;
        ECParameterSpec eCParameterSpec;
        InterfaceC14516g E10;
        j u10 = j.u(vVar.y().x());
        if (!u10.z()) {
            if (u10.y()) {
                this.f16392e = null;
            } else {
                E G10 = E.G(u10.x());
                if (G10.I(0) instanceof C14539s) {
                    l B10 = l.B(u10.x());
                    eCParameterSpec = new ECParameterSpec(h.a(B10.v(), B10.D()), h.d(B10.z()), B10.C(), B10.A().intValue());
                } else {
                    C12925d y10 = C12925d.y(G10);
                    if (y10.A()) {
                        C14549x z10 = y10.z();
                        G a10 = C12924c.a(z10);
                        c13525e = new C13523c(z10.J(), a10.a(), a10.b(), a10.e(), a10.c(), a10.f());
                    } else {
                        C12923b x10 = y10.x();
                        byte[] v10 = x10.v();
                        C14549x u11 = vVar.y().u();
                        C14549x c14549x = InterfaceC12928g.f84698b;
                        if (u11.A(c14549x)) {
                            k(v10);
                        }
                        C12922a x11 = x10.x();
                        AbstractC13875e.C1828e c1828e = new AbstractC13875e.C1828e(x11.z(), x11.v(), x11.x(), x11.y(), x10.u(), new BigInteger(1, v10), (BigInteger) null, (BigInteger) null);
                        byte[] y11 = x10.y();
                        if (vVar.y().u().A(c14549x)) {
                            k(y11);
                        }
                        c13525e = new C13525e(c1828e, AbstractC12926e.a(c1828e, y11), x10.A());
                    }
                    this.f16392e = new ECParameterSpec(h.a(c13525e.a(), c13525e.e()), h.d(c13525e.b()), c13525e.d(), c13525e.c().intValue());
                }
            }
            E10 = vVar.E();
            if (!(E10 instanceof C14539s)) {
                this.f16391d = C14539s.F(E10).I();
                return;
            }
            Zh.a u12 = Zh.a.u(E10);
            this.f16391d = u12.v();
            this.f16393f = u12.z();
            return;
        }
        C14549x K10 = C14549x.K(u10.x());
        l j10 = i.j(K10);
        if (j10 == null) {
            G a11 = C12924c.a(K10);
            eCParameterSpec = new C13524d(K10.J(), h.a(a11.a(), a11.f()), h.d(a11.b()), a11.e(), a11.c());
        } else {
            eCParameterSpec = new C13524d(i.e(K10), h.a(j10.v(), j10.D()), h.d(j10.z()), j10.C(), j10.A());
        }
        this.f16392e = eCParameterSpec;
        E10 = vVar.E();
        if (!(E10 instanceof C14539s)) {
        }
    }

    public final void k(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[(bArr.length - 1) - i10];
            bArr[(bArr.length - 1) - i10] = b10;
        }
    }

    @Override
    public BigInteger m1() {
        return this.f16391d;
    }

    public String toString() {
        return i.o(this.f16389b, this.f16391d, g());
    }

    public a(a aVar) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        this.f16391d = aVar.f16391d;
        this.f16392e = aVar.f16392e;
        this.f16390c = aVar.f16390c;
        this.f16394g = aVar.f16394g;
        this.f16393f = aVar.f16393f;
    }

    public a(v vVar) throws IOException {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        i(vVar);
    }

    public a(C13526f c13526f) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        this.f16391d = c13526f.b();
        this.f16392e = c13526f.a() != null ? h.h(h.a(c13526f.a().a(), c13526f.a().e()), c13526f.a()) : null;
    }

    public a(String str, L l10) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        this.f16389b = str;
        this.f16391d = l10.e();
        this.f16392e = null;
    }

    public a(String str, L l10, b bVar, C13525e c13525e) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        G d10 = l10.d();
        this.f16389b = str;
        this.f16391d = l10.e();
        this.f16392e = c13525e == null ? new ECParameterSpec(h.a(d10.a(), d10.f()), h.d(d10.b()), d10.e(), d10.c().intValue()) : new ECParameterSpec(h.a(c13525e.a(), c13525e.e()), h.d(c13525e.b()), c13525e.d(), c13525e.c().intValue());
        this.f16393f = h(bVar);
    }

    public a(String str, L l10, b bVar, ECParameterSpec eCParameterSpec) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        G d10 = l10.d();
        this.f16389b = str;
        this.f16391d = l10.e();
        if (eCParameterSpec == null) {
            this.f16392e = new ECParameterSpec(h.a(d10.a(), d10.f()), h.d(d10.b()), d10.e(), d10.c().intValue());
        } else {
            this.f16392e = eCParameterSpec;
        }
        this.f16393f = h(bVar);
    }

    public a(ECPrivateKey eCPrivateKey) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        this.f16391d = eCPrivateKey.getS();
        this.f16389b = eCPrivateKey.getAlgorithm();
        this.f16392e = eCPrivateKey.getParams();
    }

    public a(ECPrivateKeySpec eCPrivateKeySpec) {
        this.f16389b = "DSTU4145";
        this.f16394g = new m();
        this.f16391d = eCPrivateKeySpec.getS();
        this.f16392e = eCPrivateKeySpec.getParams();
    }
}
