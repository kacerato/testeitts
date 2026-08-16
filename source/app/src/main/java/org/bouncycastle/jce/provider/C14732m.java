package org.bouncycastle.jce.provider;

import android.security.keystore.KeyProperties;
import fk.InterfaceC13237c;
import fk.InterfaceC13238d;
import fk.InterfaceC13250p;
import hi.C13486b;
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
import oh.A0;
import oh.AbstractC14508c;
import oh.AbstractC14541t;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import yh.InterfaceC16192a;

public class C14732m implements ECPrivateKey, InterfaceC13238d, InterfaceC13250p, InterfaceC13237c {

    public String f101801b;

    public BigInteger f101802c;

    public ECParameterSpec f101803d;

    public boolean f101804e;

    public AbstractC14508c f101805f;

    public org.bouncycastle.jcajce.provider.asymmetric.util.m f101806g;

    public C14732m() {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
    }

    private void i(Xh.v vVar) throws IOException {
        ECParameterSpec eCParameterSpec;
        ki.j u10 = ki.j.u(vVar.y().x());
        if (u10.z()) {
            C14549x K10 = C14549x.K(u10.x());
            ki.l j10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.j(K10);
            if (j10 != null) {
                eCParameterSpec = new C13524d(org.bouncycastle.jcajce.provider.asymmetric.util.i.e(K10), org.bouncycastle.jcajce.provider.asymmetric.util.h.a(j10.v(), j10.D()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(j10.z()), j10.C(), j10.A());
                this.f101803d = eCParameterSpec;
            }
        } else if (u10.y()) {
            this.f101803d = null;
        } else {
            ki.l B10 = ki.l.B(u10.x());
            eCParameterSpec = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(B10.v(), B10.D()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(B10.z()), B10.C(), B10.A().intValue());
            this.f101803d = eCParameterSpec;
        }
        InterfaceC14516g E10 = vVar.E();
        if (E10 instanceof C14539s) {
            this.f101802c = C14539s.F(E10).I();
            return;
        }
        Zh.a u11 = Zh.a.u(E10);
        this.f101802c = u11.v();
        this.f101805f = u11.z();
    }

    private void j(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        i(Xh.v.v(oh.B.B((byte[]) objectInputStream.readObject())));
        this.f101801b = (String) objectInputStream.readObject();
        this.f101804e = objectInputStream.readBoolean();
        org.bouncycastle.jcajce.provider.asymmetric.util.m mVar = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101806g = mVar;
        mVar.f(objectInputStream);
    }

    private void k(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.f101801b);
        objectOutputStream.writeBoolean(this.f101804e);
        this.f101806g.h(objectOutputStream);
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101806g.a(c14549x, interfaceC14516g);
    }

    @Override
    public void b(String str) {
        this.f101804e = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101806g.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101806g.d();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C14732m)) {
            return false;
        }
        C14732m c14732m = (C14732m) obj;
        return m1().equals(c14732m.m1()) && g().equals(c14732m.g());
    }

    public C13525e g() {
        ECParameterSpec eCParameterSpec = this.f101803d;
        return eCParameterSpec != null ? org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec) : C14720a.f101702f.b();
    }

    @Override
    public String getAlgorithm() {
        return this.f101801b;
    }

    @Override
    public byte[] getEncoded() {
        ki.j jVar;
        ECParameterSpec eCParameterSpec = this.f101803d;
        if (eCParameterSpec instanceof C13524d) {
            C14549x l10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.l(((C13524d) eCParameterSpec).c());
            if (l10 == null) {
                l10 = new C14549x(((C13524d) this.f101803d).c());
            }
            jVar = new ki.j(l10);
        } else if (eCParameterSpec == null) {
            jVar = new ki.j((AbstractC14541t) A0.f98776c);
        } else {
            AbstractC13875e b10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.b(eCParameterSpec.getCurve());
            jVar = new ki.j(new ki.l(b10, new ki.n(org.bouncycastle.jcajce.provider.asymmetric.util.h.f(b10, this.f101803d.getGenerator()), this.f101804e), this.f101803d.getOrder(), BigInteger.valueOf(this.f101803d.getCofactor()), this.f101803d.getCurve().getSeed()));
        }
        ECParameterSpec eCParameterSpec2 = this.f101803d;
        int n10 = eCParameterSpec2 == null ? org.bouncycastle.jcajce.provider.asymmetric.util.i.n(null, null, getS()) : org.bouncycastle.jcajce.provider.asymmetric.util.i.n(null, eCParameterSpec2.getOrder(), getS());
        Zh.a aVar = this.f101805f != null ? new Zh.a(n10, getS(), this.f101805f, jVar) : new Zh.a(n10, getS(), jVar);
        try {
            return (this.f101801b.equals("ECGOST3410") ? new Xh.v(new C13486b(InterfaceC16192a.f130281m, jVar.r()), aVar.r()) : new Xh.v(new C13486b(ki.r.f95305I5, jVar.r()), aVar.r())).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101803d;
        if (eCParameterSpec == null) {
            return null;
        }
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101803d;
    }

    @Override
    public BigInteger getS() {
        return this.f101802c;
    }

    public final AbstractC14508c h(C14733n c14733n) {
        try {
            return hi.h0.w(oh.B.B(c14733n.getEncoded())).z();
        } catch (IOException unused) {
            return null;
        }
    }

    public int hashCode() {
        return m1().hashCode() ^ g().hashCode();
    }

    @Override
    public BigInteger m1() {
        return this.f101802c;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("EC Private Key");
        stringBuffer.append(f10);
        stringBuffer.append("             S: ");
        stringBuffer.append(this.f101802c.toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public C14732m(Xh.v vVar) throws IOException {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        i(vVar);
    }

    public C14732m(String str, Xi.L l10) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101801b = str;
        this.f101802c = l10.e();
        this.f101803d = null;
    }

    public C14732m(String str, Xi.L l10, C14733n c14733n, C13525e c13525e) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101801b = str;
        this.f101802c = l10.e();
        if (c13525e == null) {
            Xi.G d10 = l10.d();
            this.f101803d = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(d10.b()), d10.e(), d10.c().intValue());
        } else {
            this.f101803d = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13525e.a(), c13525e.e()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(c13525e.b()), c13525e.d(), c13525e.c().intValue());
        }
        this.f101805f = h(c14733n);
    }

    public C14732m(String str, Xi.L l10, C14733n c14733n, ECParameterSpec eCParameterSpec) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101801b = str;
        this.f101802c = l10.e();
        if (eCParameterSpec == null) {
            Xi.G d10 = l10.d();
            eCParameterSpec = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(d10.b()), d10.e(), d10.c().intValue());
        }
        this.f101803d = eCParameterSpec;
        this.f101805f = h(c14733n);
    }

    public C14732m(String str, C13526f c13526f) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101801b = str;
        this.f101802c = c13526f.b();
        this.f101803d = c13526f.a() != null ? org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13526f.a().a(), c13526f.a().e()), c13526f.a()) : null;
    }

    public C14732m(String str, ECPrivateKeySpec eCPrivateKeySpec) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101801b = str;
        this.f101802c = eCPrivateKeySpec.getS();
        this.f101803d = eCPrivateKeySpec.getParams();
    }

    public C14732m(String str, C14732m c14732m) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101801b = str;
        this.f101802c = c14732m.f101802c;
        this.f101803d = c14732m.f101803d;
        this.f101804e = c14732m.f101804e;
        this.f101806g = c14732m.f101806g;
        this.f101805f = c14732m.f101805f;
    }

    public C14732m(ECPrivateKey eCPrivateKey) {
        this.f101801b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101806g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();
        this.f101802c = eCPrivateKey.getS();
        this.f101801b = eCPrivateKey.getAlgorithm();
        this.f101803d = eCPrivateKey.getParams();
    }
}
