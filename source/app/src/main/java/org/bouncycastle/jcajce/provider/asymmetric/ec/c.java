package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Xi.G;
import Xi.M;
import android.security.keystore.KeyProperties;
import fk.InterfaceC13237c;
import fk.InterfaceC13239e;
import hi.C13486b;
import hi.h0;
import hk.C13525e;
import hk.C13527g;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import jk.AbstractC13875e;
import ki.n;
import ki.q;
import ki.r;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import org.bouncycastle.jce.provider.C14720a;

public class c implements ECPublicKey, InterfaceC13239e, InterfaceC13237c {

    public static final long f101180i = 2422789860422731812L;

    public String f101181b;

    public boolean f101182c;

    public transient M f101183d;

    public transient ECParameterSpec f101184e;

    public transient Tj.c f101185f;

    public transient byte[] f101186g;

    public transient boolean f101187h;

    public c(String str, M m10, Tj.c cVar) {
        this.f101181b = str;
        this.f101183d = m10;
        this.f101184e = null;
        this.f101185f = cVar;
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, G g10) {
        return new ECParameterSpec(ellipticCurve, org.bouncycastle.jcajce.provider.asymmetric.util.h.d(g10.b()), g10.e(), g10.c().intValue());
    }

    private void e(h0 h0Var) {
        byte b10;
        ki.j u10 = ki.j.u(h0Var.u().x());
        AbstractC13875e l10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.l(this.f101185f, u10);
        this.f101184e = org.bouncycastle.jcajce.provider.asymmetric.util.h.j(u10, l10);
        byte[] F10 = h0Var.z().F();
        AbstractC14551y c02 = new C0(F10);
        if (F10[0] == 4 && F10[1] == F10.length - 2 && (((b10 = F10[2]) == 2 || b10 == 3) && new q().a(l10) >= F10.length - 3)) {
            try {
                c02 = (AbstractC14551y) B.B(F10);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        this.f101183d = new M(new n(l10, c02).u(), org.bouncycastle.jcajce.provider.asymmetric.util.i.g(this.f101185f, u10));
    }

    private void f(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        byte[] bArr = (byte[]) objectInputStream.readObject();
        this.f101185f = C14720a.f101702f;
        e(h0.w(B.B(bArr)));
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    @Override
    public jk.i Ne() {
        jk.i e10 = this.f101183d.e();
        return this.f101184e == null ? e10.k() : e10;
    }

    @Override
    public void b(String str) {
        this.f101182c = !"UNCOMPRESSED".equalsIgnoreCase(str);
        this.f101186g = null;
    }

    public M c() {
        return this.f101183d;
    }

    public C13525e d() {
        ECParameterSpec eCParameterSpec = this.f101184e;
        return eCParameterSpec != null ? org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec) : this.f101185f.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f101183d.e().e(cVar.f101183d.e()) && d().equals(cVar.d());
        }
        if (obj instanceof ECPublicKey) {
            return org.bouncycastle.util.a.g(getEncoded(), ((ECPublicKey) obj).getEncoded());
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        return this.f101181b;
    }

    @Override
    public byte[] getEncoded() {
        boolean f10 = org.bouncycastle.util.q.f("org.bouncycastle.ec.enable_pc");
        if (this.f101186g == null || this.f101187h != f10) {
            boolean z10 = this.f101182c || f10;
            this.f101186g = org.bouncycastle.jcajce.provider.asymmetric.util.l.d(new C13486b(r.f95305I5, d.d(this.f101184e, z10)), this.f101183d.e().l(z10));
            this.f101187h = f10;
        }
        return org.bouncycastle.util.a.p(this.f101186g);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public C13525e getParameters() {
        ECParameterSpec eCParameterSpec = this.f101184e;
        if (eCParameterSpec == null) {
            return null;
        }
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f101184e;
    }

    @Override
    public ECPoint getW() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.h.d(this.f101183d.e());
    }

    public int hashCode() {
        return this.f101183d.e().hashCode() ^ d().hashCode();
    }

    public String toString() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.i.p(KeyProperties.KEY_ALGORITHM_EC, this.f101183d.e(), d());
    }

    public c(String str, M m10, C13525e c13525e, Tj.c cVar) {
        this.f101181b = KeyProperties.KEY_ALGORITHM_EC;
        G d10 = m10.d();
        this.f101181b = str;
        this.f101184e = c13525e == null ? a(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), d10) : org.bouncycastle.jcajce.provider.asymmetric.util.h.h(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13525e.a(), c13525e.e()), c13525e);
        this.f101183d = m10;
        this.f101185f = cVar;
    }

    public c(String str, M m10, ECParameterSpec eCParameterSpec, Tj.c cVar) {
        this.f101181b = KeyProperties.KEY_ALGORITHM_EC;
        G d10 = m10.d();
        this.f101181b = str;
        this.f101183d = m10;
        if (eCParameterSpec == null) {
            this.f101184e = a(org.bouncycastle.jcajce.provider.asymmetric.util.h.a(d10.a(), d10.f()), d10);
        } else {
            this.f101184e = eCParameterSpec;
        }
        this.f101185f = cVar;
    }

    public c(String str, h0 h0Var, Tj.c cVar) {
        this.f101181b = str;
        this.f101185f = cVar;
        e(h0Var);
    }

    public c(String str, C13527g c13527g, Tj.c cVar) {
        this.f101181b = str;
        if (c13527g.a() != null) {
            EllipticCurve a10 = org.bouncycastle.jcajce.provider.asymmetric.util.h.a(c13527g.a().a(), c13527g.a().e());
            this.f101183d = new M(c13527g.b(), org.bouncycastle.jcajce.provider.asymmetric.util.i.f(cVar, c13527g.a()));
            this.f101184e = org.bouncycastle.jcajce.provider.asymmetric.util.h.h(a10, c13527g.a());
        } else {
            this.f101183d = new M(cVar.b().a().i(c13527g.b().f().v(), c13527g.b().g().v()), org.bouncycastle.jcajce.provider.asymmetric.util.h.m(cVar, null));
            this.f101184e = null;
        }
        this.f101185f = cVar;
    }

    public c(String str, ECPublicKeySpec eCPublicKeySpec, Tj.c cVar) {
        this.f101181b = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f101184e = params;
        this.f101183d = new M(org.bouncycastle.jcajce.provider.asymmetric.util.h.e(params, eCPublicKeySpec.getW()), org.bouncycastle.jcajce.provider.asymmetric.util.h.m(cVar, eCPublicKeySpec.getParams()));
        this.f101185f = cVar;
    }

    public c(String str, c cVar) {
        this.f101181b = str;
        this.f101183d = cVar.f101183d;
        this.f101184e = cVar.f101184e;
        this.f101182c = cVar.f101182c;
        this.f101185f = cVar.f101185f;
    }

    public c(ECPublicKey eCPublicKey, Tj.c cVar) {
        this.f101181b = KeyProperties.KEY_ALGORITHM_EC;
        this.f101181b = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f101184e = params;
        this.f101183d = new M(org.bouncycastle.jcajce.provider.asymmetric.util.h.e(params, eCPublicKey.getW()), org.bouncycastle.jcajce.provider.asymmetric.util.h.m(cVar, eCPublicKey.getParams()));
        this.f101185f = cVar;
    }
}
