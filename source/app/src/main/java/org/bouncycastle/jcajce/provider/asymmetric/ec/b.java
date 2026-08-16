package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Xh.v;
import Xi.G;
import Xi.K;
import Xi.L;
import android.security.keystore.KeyProperties;
import fk.InterfaceC13237c;
import fk.InterfaceC13238d;
import fk.InterfaceC13250p;
import hi.C13486b;
import hi.h0;
import hk.C13523c;
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
import ki.r;
import oh.AbstractC14508c;
import oh.B;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;
import org.bouncycastle.jce.provider.C14720a;

public class b implements ECPrivateKey, InterfaceC13238d, InterfaceC13250p, InterfaceC13237c {

    public static final long f101169l = 994553197664784084L;

    public String f101170b;

    public boolean f101171c;

    public transient BigInteger f101172d;

    public transient ECParameterSpec f101173e;

    public transient Tj.c f101174f;

    public transient AbstractC14508c f101175g;

    public transient v f101176h;

    public transient byte[] f101177i;

    public transient L f101178j;

    public transient m f101179k;

    public b() {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
    }

    public static L g(b bVar) {
        String f10;
        C13525e parameters = bVar.getParameters();
        if (parameters == null) {
            parameters = C14720a.f101702f.b();
        }
        return (!(bVar.getParameters() instanceof C13523c) || (f10 = ((C13523c) bVar.getParameters()).f()) == null) ? new L(bVar.m1(), new G(parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e())) : new L(bVar.m1(), new K(ki.e.h(f10), parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e()));
    }

    private void l(v vVar) throws IOException {
        ki.j u10 = ki.j.u(vVar.y().x());
        this.f101173e = org.bouncycastle.jcajce.provider.asymmetric.util.h.j(u10, org.bouncycastle.jcajce.provider.asymmetric.util.h.l(this.f101174f, u10));
        InterfaceC14516g E10 = vVar.E();
        if (E10 instanceof C14539s) {
            this.f101172d = C14539s.F(E10).I();
        } else {
            Zh.a u11 = Zh.a.u(E10);
            this.f101172d = u11.v();
            this.f101175g = u11.z();
        }
        this.f101178j = g(this);
    }

    private void m(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        byte[] bArr = (byte[]) objectInputStream.readObject();
        this.f101174f = C14720a.f101702f;
        l(v.v(B.B(bArr)));
        this.f101179k = new m();
    }

    private void n(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101179k.a(c14549x, interfaceC14516g);
    }

    @Override
    public void b(String str) {
        this.f101171c = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101179k.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101179k.d();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) obj;
            v j10 = j();
            v j11 = eCPrivateKey instanceof b ? ((b) eCPrivateKey).j() : v.v(eCPrivateKey.getEncoded());
            if (j10 != null && j11 != null) {
                try {
                    return org.bouncycastle.util.a.I(getS().toByteArray(), eCPrivateKey.getS().toByteArray()) & org.bouncycastle.util.a.I(j10.y().getEncoded(), j11.y().getEncoded());
                } catch (IOException unused) {
                }
            }
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        return this.f101170b;
    }

    @Override
    public byte[] getEncoded() {
        if (this.f101177i == null) {
            v j10 = j();
            if (j10 == null) {
                return null;
            }
            try {
                this.f101177i = j10.s(InterfaceC14520i.f98892a);
            } catch (IOException unused) {
                return null;
            }
        }
        return org.bouncycastle.util.a.p(this.f101177i);
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101173e;
        if (eCParameterSpec == null) {
            return null;
        }
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101173e;
    }

    @Override
    public BigInteger getS() {
        return this.f101172d;
    }

    public L h() {
        return this.f101178j;
    }

    public int hashCode() {
        return m1().hashCode() ^ i().hashCode();
    }

    public C13525e i() {
        ECParameterSpec eCParameterSpec = this.f101173e;
        return eCParameterSpec != null ? org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec) : this.f101174f.b();
    }

    public final v j() {
        if (this.f101176h == null) {
            ki.j d10 = d.d(this.f101173e, this.f101171c);
            ECParameterSpec eCParameterSpec = this.f101173e;
            int n10 = eCParameterSpec == null ? org.bouncycastle.jcajce.provider.asymmetric.util.i.n(this.f101174f, null, getS()) : org.bouncycastle.jcajce.provider.asymmetric.util.i.n(this.f101174f, eCParameterSpec.getOrder(), getS());
            try {
                this.f101176h = new v(new C13486b(r.f95305I5, d10), this.f101175g != null ? new Zh.a(n10, getS(), this.f101175g, d10) : new Zh.a(n10, getS(), d10));
            } catch (IOException unused) {
                return null;
            }
        }
        return this.f101176h;
    }

    public final AbstractC14508c k(c cVar) {
        try {
            return h0.w(B.B(cVar.getEncoded())).z();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public BigInteger m1() {
        return this.f101172d;
    }

    public String toString() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.i.o(KeyProperties.KEY_ALGORITHM_EC, this.f101172d, i());
    }

    public b(String str, v vVar, Tj.c cVar) throws IOException {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101174f = cVar;
        l(vVar);
    }

    public b(String str, L l10, Tj.c cVar) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101172d = l10.e();
        this.f101173e = null;
        this.f101174f = cVar;
        this.f101178j = l10;
    }

    public b(String str, L l10, c cVar, C13525e c13525e, Tj.c cVar2) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101172d = l10.e();
        this.f101174f = cVar2;
        this.f101178j = l10;
        if (c13525e == null) {
            G d10 = l10.d();
            this.f101173e = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(d10.b()), d10.e(), d10.c().intValue());
        } else {
            this.f101173e = org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13525e.a(), c13525e.e()), c13525e);
        }
        try {
            this.f101175g = k(cVar);
        } catch (Exception unused) {
            this.f101175g = null;
        }
    }

    public b(String str, L l10, c cVar, ECParameterSpec eCParameterSpec, Tj.c cVar2) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101172d = l10.e();
        this.f101174f = cVar2;
        this.f101178j = l10;
        if (eCParameterSpec == null) {
            G d10 = l10.d();
            eCParameterSpec = new ECParameterSpec(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), org.bouncycastle.jcajce.provider.asymmetric.util.h.d(d10.b()), d10.e(), d10.c().intValue());
        }
        this.f101173e = eCParameterSpec;
        this.f101175g = k(cVar);
    }

    public b(String str, C13526f c13526f, Tj.c cVar) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101172d = c13526f.b();
        this.f101173e = c13526f.a() != null ? org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13526f.a().a(), c13526f.a().e()), c13526f.a()) : null;
        this.f101174f = cVar;
        this.f101178j = g(this);
    }

    public b(String str, ECPrivateKeySpec eCPrivateKeySpec, Tj.c cVar) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101172d = eCPrivateKeySpec.getS();
        this.f101173e = eCPrivateKeySpec.getParams();
        this.f101174f = cVar;
        this.f101178j = g(this);
    }

    public b(String str, b bVar) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101170b = str;
        this.f101172d = bVar.f101172d;
        this.f101173e = bVar.f101173e;
        this.f101171c = bVar.f101171c;
        this.f101179k = bVar.f101179k;
        this.f101175g = bVar.f101175g;
        this.f101174f = bVar.f101174f;
        this.f101178j = bVar.f101178j;
    }

    public b(ECPrivateKey eCPrivateKey, Tj.c cVar) {
        this.f101170b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101179k = new m();
        this.f101172d = eCPrivateKey.getS();
        this.f101170b = eCPrivateKey.getAlgorithm();
        this.f101173e = eCPrivateKey.getParams();
        this.f101174f = cVar;
        this.f101178j = g(this);
    }
}
