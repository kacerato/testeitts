package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import Xh.v;
import Xi.G;
import Xi.L;
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
import oh.A0;
import oh.AbstractC14508c;
import oh.AbstractC14541t;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.h;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;
import org.bouncycastle.jce.provider.C14720a;
import yh.g;

public class a implements ECPrivateKey, InterfaceC13238d, InterfaceC13250p, InterfaceC13237c {

    public static final long f101282i = 7245981689601667138L;

    public String f101283b;

    public boolean f101284c;

    public transient g f101285d;

    public transient BigInteger f101286e;

    public transient ECParameterSpec f101287f;

    public transient AbstractC14508c f101288g;

    public transient m f101289h;

    public a() {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void j(v vVar) throws IOException {
        ECParameterSpec eCParameterSpec;
        InterfaceC14516g E10;
        BigInteger I10;
        B r10 = vVar.y().x().r();
        if (!(r10 instanceof E) || E.G(r10).size() > 3) {
            j u10 = j.u(vVar.y().x());
            if (u10.z()) {
                C14549x K10 = C14549x.K(u10.x());
                l j10 = i.j(K10);
                if (j10 == null) {
                    l k10 = yh.b.k(K10);
                    eCParameterSpec = new C13524d(yh.b.l(K10), h.a(k10.v(), k10.D()), h.d(k10.z()), k10.C(), k10.A());
                } else {
                    eCParameterSpec = new C13524d(i.e(K10), h.a(j10.v(), j10.D()), h.d(j10.z()), j10.C(), j10.A());
                }
            } else if (u10.y()) {
                this.f101287f = null;
                E10 = vVar.E();
                if (E10 instanceof C14539s) {
                    Zh.a u11 = Zh.a.u(E10);
                    this.f101286e = u11.v();
                    this.f101288g = u11.z();
                    return;
                }
                I10 = C14539s.F(E10).I();
            } else {
                l B10 = l.B(u10.x());
                eCParameterSpec = new ECParameterSpec(h.a(B10.v(), B10.D()), h.d(B10.z()), B10.C(), B10.A().intValue());
            }
            this.f101287f = eCParameterSpec;
            E10 = vVar.E();
            if (E10 instanceof C14539s) {
            }
        } else {
            g w10 = g.w(vVar.y().x());
            this.f101285d = w10;
            C13523c b10 = org.bouncycastle.jce.a.b(yh.b.l(w10.y()));
            this.f101287f = new C13524d(yh.b.l(this.f101285d.y()), h.a(b10.a(), b10.e()), h.d(b10.b()), b10.d(), b10.c());
            AbstractC14551y x10 = vVar.x();
            if (x10.H().length == 32 || x10.H().length == 64) {
                I10 = new BigInteger(1, org.bouncycastle.util.a.N0(x10.H()));
            } else {
                InterfaceC14516g E11 = vVar.E();
                if (!(E11 instanceof C14539s)) {
                    this.f101286e = new BigInteger(1, org.bouncycastle.util.a.N0(AbstractC14551y.F(E11).H()));
                    return;
                }
                I10 = C14539s.F(E11).H();
            }
        }
        this.f101286e = I10;
    }

    private void k(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        j(v.v(B.B((byte[]) objectInputStream.readObject())));
        this.f101289h = new m();
    }

    private void l(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101289h.a(c14549x, interfaceC14516g);
    }

    @Override
    public void b(String str) {
        this.f101284c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101289h.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101289h.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return m1().equals(aVar.m1()) && g().equals(aVar.g());
    }

    public C13525e g() {
        ECParameterSpec eCParameterSpec = this.f101287f;
        return eCParameterSpec != null ? h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    @Override
    public String getAlgorithm() {
        return this.f101283b;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dc  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getEncoded() {
        j jVar;
        int n10;
        boolean z10 = this.f101286e.bitLength() > 256;
        C14549x c14549x = z10 ? Cj.a.f4463h : Cj.a.f4462g;
        int i10 = z10 ? 64 : 32;
        if (this.f101285d != null) {
            byte[] bArr = new byte[i10];
            h(bArr, i10, 0, getS());
            try {
                return new v(new C13486b(c14549x, this.f101285d), new C0(bArr)).s(InterfaceC14520i.f98892a);
            } catch (IOException unused) {
                return null;
            }
        }
        ECParameterSpec eCParameterSpec = this.f101287f;
        try {
            if (eCParameterSpec instanceof C13524d) {
                C14549x l10 = i.l(((C13524d) eCParameterSpec).c());
                if (l10 == null) {
                    l10 = new C14549x(((C13524d) this.f101287f).c());
                }
                jVar = new j(l10);
            } else {
                if (eCParameterSpec == null) {
                    jVar = new j((AbstractC14541t) A0.f98776c);
                    n10 = i.n(C14720a.f101702f, null, getS());
                    return new v(new C13486b(c14549x, jVar.r()), (this.f101288g == null ? new Zh.a(n10, getS(), this.f101288g, jVar) : new Zh.a(n10, getS(), jVar)).r()).s(InterfaceC14520i.f98892a);
                }
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                jVar = new j(new l(b10, new n(h.f(b10, this.f101287f.getGenerator()), this.f101284c), this.f101287f.getOrder(), BigInteger.valueOf(this.f101287f.getCofactor()), this.f101287f.getCurve().getSeed()));
            }
            return new v(new C13486b(c14549x, jVar.r()), (this.f101288g == null ? new Zh.a(n10, getS(), this.f101288g, jVar) : new Zh.a(n10, getS(), jVar)).r()).s(InterfaceC14520i.f98892a);
        } catch (IOException unused2) {
            return null;
        }
        n10 = i.n(C14720a.f101702f, this.f101287f.getOrder(), getS());
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101287f;
        if (eCParameterSpec == null) {
            return null;
        }
        return h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101287f;
    }

    @Override
    public BigInteger getS() {
        return this.f101286e;
    }

    public final void h(byte[] bArr, int i10, int i11, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i10) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(byteArray, 0, bArr2, i10 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i12 = 0; i12 != i10; i12++) {
            bArr[i11 + i12] = byteArray[(byteArray.length - 1) - i12];
        }
    }

    public int hashCode() {
        return m1().hashCode() ^ g().hashCode();
    }

    public final AbstractC14508c i(b bVar) {
        return h0.w(bVar.getEncoded()).z();
    }

    @Override
    public BigInteger m1() {
        return this.f101286e;
    }

    public String toString() {
        return i.o(this.f101283b, this.f101286e, g());
    }

    public a(v vVar) throws IOException {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        j(vVar);
    }

    public a(C13526f c13526f) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        this.f101286e = c13526f.b();
        this.f101287f = c13526f.a() != null ? h.h(h.a(c13526f.a().a(), c13526f.a().e()), c13526f.a()) : null;
    }

    public a(String str, L l10) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        this.f101283b = str;
        this.f101286e = l10.e();
        this.f101287f = null;
    }

    public a(String str, L l10, b bVar, C13525e c13525e) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        G d10 = l10.d();
        this.f101283b = str;
        this.f101286e = l10.e();
        this.f101287f = c13525e == null ? new ECParameterSpec(h.a(d10.a(), d10.f()), h.d(d10.b()), d10.e(), d10.c().intValue()) : new ECParameterSpec(h.a(c13525e.a(), c13525e.e()), h.d(c13525e.b()), c13525e.d(), c13525e.c().intValue());
        this.f101285d = bVar.f();
        this.f101288g = i(bVar);
    }

    public a(String str, L l10, b bVar, ECParameterSpec eCParameterSpec) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        G d10 = l10.d();
        this.f101283b = str;
        this.f101286e = l10.e();
        if (eCParameterSpec == null) {
            this.f101287f = new ECParameterSpec(h.a(d10.a(), d10.f()), h.d(d10.b()), d10.e(), d10.c().intValue());
        } else {
            this.f101287f = eCParameterSpec;
        }
        this.f101285d = bVar.f();
        this.f101288g = i(bVar);
    }

    public a(ECPrivateKey eCPrivateKey) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        this.f101286e = eCPrivateKey.getS();
        this.f101283b = eCPrivateKey.getAlgorithm();
        this.f101287f = eCPrivateKey.getParams();
    }

    public a(ECPrivateKeySpec eCPrivateKeySpec) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        this.f101286e = eCPrivateKeySpec.getS();
        this.f101287f = eCPrivateKeySpec.getParams();
    }

    public a(a aVar) {
        this.f101283b = "ECGOST3410-2012";
        this.f101289h = new m();
        this.f101286e = aVar.f101286e;
        this.f101287f = aVar.f101287f;
        this.f101284c = aVar.f101284c;
        this.f101289h = aVar.f101289h;
        this.f101288g = aVar.f101288g;
        this.f101285d = aVar.f101285d;
    }
}
