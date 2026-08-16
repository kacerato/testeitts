package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

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
import yh.InterfaceC16192a;
import yh.g;

public class a implements ECPrivateKey, InterfaceC13238d, InterfaceC13250p, InterfaceC13237c {

    public static final long f101255i = 7245981689601667138L;

    public String f101256b;

    public boolean f101257c;

    public transient InterfaceC14516g f101258d;

    public transient BigInteger f101259e;

    public transient ECParameterSpec f101260f;

    public transient AbstractC14508c f101261g;

    public transient m f101262h;

    public a() {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void j(v vVar) throws IOException {
        C13524d c13524d;
        InterfaceC14516g E10;
        BigInteger I10;
        InterfaceC14516g x10 = vVar.y().x();
        B r10 = x10.r();
        if ((r10 instanceof E) && (E.G(r10).size() == 2 || E.G(r10).size() == 3)) {
            g w10 = g.w(x10);
            this.f101258d = w10;
            C13523c b10 = org.bouncycastle.jce.a.b(yh.b.l(w10.y()));
            this.f101260f = new C13524d(yh.b.l(w10.y()), h.a(b10.a(), b10.e()), h.d(b10.b()), b10.d(), b10.c());
            InterfaceC14516g E11 = vVar.E();
            if (E11 instanceof C14539s) {
                I10 = C14539s.F(E11).H();
            } else {
                byte[] H10 = AbstractC14551y.F(E11).H();
                byte[] bArr = new byte[H10.length];
                for (int i10 = 0; i10 != H10.length; i10++) {
                    bArr[i10] = H10[(H10.length - 1) - i10];
                }
                I10 = new BigInteger(1, bArr);
            }
        } else {
            j u10 = j.u(x10);
            if (u10.z()) {
                C14549x K10 = C14549x.K(u10.x());
                l j10 = i.j(K10);
                if (j10 == null) {
                    throw new IllegalStateException();
                }
                c13524d = new C13524d(i.e(K10), h.a(j10.v(), j10.D()), h.d(j10.z()), j10.C(), j10.A());
            } else if (u10.y()) {
                c13524d = null;
            } else {
                l B10 = l.B(u10.x());
                this.f101260f = new ECParameterSpec(h.a(B10.v(), B10.D()), h.d(B10.z()), B10.C(), B10.A().intValue());
                E10 = vVar.E();
                if (E10 instanceof C14539s) {
                    Zh.a u11 = Zh.a.u(E10);
                    this.f101259e = u11.v();
                    this.f101261g = u11.z();
                    return;
                }
                I10 = C14539s.F(E10).I();
            }
            this.f101260f = c13524d;
            E10 = vVar.E();
            if (E10 instanceof C14539s) {
            }
        }
        this.f101259e = I10;
    }

    private void k(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        j(v.v(B.B((byte[]) objectInputStream.readObject())));
        this.f101262h = new m();
    }

    private void l(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101262h.a(c14549x, interfaceC14516g);
    }

    @Override
    public void b(String str) {
        this.f101257c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101262h.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101262h.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return m1().equals(aVar.m1()) && g().equals(aVar.g());
    }

    public C13525e g() {
        ECParameterSpec eCParameterSpec = this.f101260f;
        return eCParameterSpec != null ? h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    @Override
    public String getAlgorithm() {
        return this.f101256b;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c5  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getEncoded() {
        j jVar;
        int n10;
        if (this.f101258d != null) {
            byte[] bArr = new byte[32];
            h(bArr, 0, getS());
            try {
                return new v(new C13486b(InterfaceC16192a.f130281m, this.f101258d), new C0(bArr)).s(InterfaceC14520i.f98892a);
            } catch (IOException unused) {
                return null;
            }
        }
        ECParameterSpec eCParameterSpec = this.f101260f;
        try {
            if (eCParameterSpec instanceof C13524d) {
                C14549x l10 = i.l(((C13524d) eCParameterSpec).c());
                if (l10 == null) {
                    l10 = new C14549x(((C13524d) this.f101260f).c());
                }
                jVar = new j(l10);
            } else {
                if (eCParameterSpec == null) {
                    jVar = new j((AbstractC14541t) A0.f98776c);
                    n10 = i.n(C14720a.f101702f, null, getS());
                    return new v(new C13486b(InterfaceC16192a.f130281m, jVar.r()), (this.f101261g == null ? new Zh.a(n10, getS(), this.f101261g, jVar) : new Zh.a(n10, getS(), jVar)).r()).s(InterfaceC14520i.f98892a);
                }
                AbstractC13875e b10 = h.b(eCParameterSpec.getCurve());
                jVar = new j(new l(b10, new n(h.f(b10, this.f101260f.getGenerator()), this.f101257c), this.f101260f.getOrder(), BigInteger.valueOf(this.f101260f.getCofactor()), this.f101260f.getCurve().getSeed()));
            }
            return new v(new C13486b(InterfaceC16192a.f130281m, jVar.r()), (this.f101261g == null ? new Zh.a(n10, getS(), this.f101261g, jVar) : new Zh.a(n10, getS(), jVar)).r()).s(InterfaceC14520i.f98892a);
        } catch (IOException unused2) {
            return null;
        }
        n10 = i.n(C14720a.f101702f, this.f101260f.getOrder(), getS());
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101260f;
        if (eCParameterSpec == null) {
            return null;
        }
        return h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101260f;
    }

    @Override
    public BigInteger getS() {
        return this.f101259e;
    }

    public final void h(byte[] bArr, int i10, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, 32 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i11 = 0; i11 != 32; i11++) {
            bArr[i10 + i11] = byteArray[(byteArray.length - 1) - i11];
        }
    }

    public int hashCode() {
        return m1().hashCode() ^ g().hashCode();
    }

    public final AbstractC14508c i(b bVar) {
        try {
            return h0.w(B.B(bVar.getEncoded())).z();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public BigInteger m1() {
        return this.f101259e;
    }

    public String toString() {
        return i.o(this.f101256b, this.f101259e, g());
    }

    public a(v vVar) throws IOException {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        j(vVar);
    }

    public a(C13526f c13526f) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101259e = c13526f.b();
        this.f101260f = c13526f.a() != null ? h.h(h.a(c13526f.a().a(), c13526f.a().e()), c13526f.a()) : null;
    }

    public a(String str, L l10) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101256b = str;
        this.f101259e = l10.e();
        this.f101260f = null;
    }

    public a(String str, L l10, b bVar, C13525e c13525e) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101256b = str;
        this.f101259e = l10.e();
        if (c13525e == null) {
            G d10 = l10.d();
            this.f101260f = new ECParameterSpec(h.a(d10.a(), d10.f()), h.d(d10.b()), d10.e(), d10.c().intValue());
        } else {
            this.f101260f = new ECParameterSpec(h.a(c13525e.a(), c13525e.e()), h.d(c13525e.b()), c13525e.d(), c13525e.c().intValue());
        }
        this.f101258d = bVar.f();
        this.f101261g = i(bVar);
    }

    public a(String str, L l10, b bVar, ECParameterSpec eCParameterSpec) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101256b = str;
        this.f101259e = l10.e();
        if (eCParameterSpec == null) {
            G d10 = l10.d();
            eCParameterSpec = new ECParameterSpec(h.a(d10.a(), d10.f()), h.d(d10.b()), d10.e(), d10.c().intValue());
        }
        this.f101260f = eCParameterSpec;
        this.f101258d = bVar.f();
        this.f101261g = i(bVar);
    }

    public a(ECPrivateKey eCPrivateKey) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101259e = eCPrivateKey.getS();
        this.f101256b = eCPrivateKey.getAlgorithm();
        this.f101260f = eCPrivateKey.getParams();
    }

    public a(ECPrivateKeySpec eCPrivateKeySpec) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101259e = eCPrivateKeySpec.getS();
        this.f101260f = eCPrivateKeySpec.getParams();
    }

    public a(a aVar) {
        this.f101256b = "ECGOST3410";
        this.f101262h = new m();
        this.f101259e = aVar.f101259e;
        this.f101260f = aVar.f101260f;
        this.f101257c = aVar.f101257c;
        this.f101262h = aVar.f101262h;
        this.f101261g = aVar.f101261g;
        this.f101258d = aVar.f101258d;
    }
}
